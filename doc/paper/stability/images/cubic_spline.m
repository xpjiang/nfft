function g=cubic_spline(z)
% evaluates g_4

g=zeros(size(z));
z=-abs(z);

z0=z((-1/2<=z)&(z<-1/4));
g((-1/2<=z)&(z<-1/4))=256/6*(z0+1/2).^3;

z1=z((-1/4<=z)&(z<=0));
g((-1/4<=z)&(z<=0))=256/6*(1/64+3/16*(z1+1/4)+3/4*(z1+1/4).^2-3*(z1+1/4).^3);