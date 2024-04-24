# use node base image
FROM node:18-alpine

# workspace
WORKDIR /vue-app

# copy package.json and package-lock.json to workspace
copy package*.json .

# install dependence
RUN npm install

# copy code source to workspace
COPY . .

EXPOSE 8080

CMD ["npm", "run", "dev"]
