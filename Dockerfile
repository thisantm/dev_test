#TODO Configure o Dockerfile
FROM node:20.18.0

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV DB_HOST=db
ENV DB_USER=root
ENV DB_PASSWORD=password
ENV DB_NAME=test_db

EXPOSE 3000

CMD ["sh", "-c", "npm run build && npm run start"]
