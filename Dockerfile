FROM node:18-alpine

WORKDIR /app

COPY package.json ./

RUN npm i --omit=dev

COPY . .

EXPOSE 8001

CMD ["node", "./bin/www"]
