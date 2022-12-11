terraform {
   backend "s3" {
     bucket = "proji-tf"
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"
   }
 }

 provider "aws" {
   region = "us-east-2"
   profile = "udacity"
   default_tags {
     tags = local.tags
   }
 }