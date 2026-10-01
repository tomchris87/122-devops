resource "aws_vpc" "vpc1" {
    cidr_block = "172.16.0.0/16"
    tags= {
        Name = "wipro-vpc"
        Owner = "tom"
    }
}
resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.vpc1.id
    cidr_block = "172.16.0.0/24"
    tags= {
        Name = "prod-db-sub-01"
    }
}



