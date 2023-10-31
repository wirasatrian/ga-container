FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME ecommerce_mongo_db
ENV MONGODB_CLUSTER_ADDRESS abonbali.ufkq8fc.mongodb.net
ENV MONGODB_USERNAME meriana
ENV MONGODB_PASSWORD Monyer0870

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]