module DIV_50M_HZ(CLK,OUT);
input CLK;
output OUT;
reg OUT;
reg[25:0] temp;
always @(posedge CLK)
	begin
		if(temp>=50000000)
			begin
				temp=0;
				OUT= ~ OUT;
			end
		else
				temp=temp+1;
		end
endmodule
