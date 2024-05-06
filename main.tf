terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

resource "aws_instance" "my-server" {
  ami                    = "ami-09298640a92b2d12c"
  instance_type          = "t2.micro"
  
  tags = {
    Name = "my-server"
  }
}