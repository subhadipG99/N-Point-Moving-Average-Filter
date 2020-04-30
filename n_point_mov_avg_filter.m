%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%Developed By : Subhadip Ghosh%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%Follow me on GitHub%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Implementation of N-Point Moving Average Filter or Smoothing Filter%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Algorithm:
%
%                   Y(n)=(1/N)*{summation(X(n-k))}
%                   Where, k = 0 to N-1
%
%              here, X(n) = noise effected signal
%                    Y(n) = Smoothed or averaged signal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Time Range%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=0:100;
[m,n]=size(t);%%%%%%%%%%%%%%%%Size of Time Range %%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%Clear Noise Less Input Signal%%%%%%%%%%%%%%%%%%%%%
x=2*sin(2*pi*0.05*t);


%%%%%%%%%%%%%%%%%%%Taking Input N i.e. Order of Filter from User%%%%%%%%%%%
N=input('Enter Order of Filter: ');

%%%%%%%%%%%%%%%%%%%%%NOISE SIGNAL (ARBITRARY)%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r=2*cos(2*pi*0.5*t);

%%%%%%%%%%%%%%%%%%%%%%%%%%%MIXING NOISE WITH INPUT SIGNAL%%%%%%%%%%%%%%%%%%
x1=x+r;

%%%%%%%%%%%%%%%%%%%%%%%INITIALIZING FILTER OUTPUT%%%%%%%%%%%%%%%%%%%%%%%%%%
y2 = zeros(m,n);

%%%%%%%%%%%%%%%%%USING THE N-POINT MOVING AVG. ALGORITHM%%%%%%%%%%%%%%%%%%%
for l=N:n
    for k=0:N-1
        y2(l)=(y2(l)+x1(l-k))/N;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%PLOTTING INPUT NOISE LESS SIGNAL%%%%%%%%%%%%%%%%%
subplot(221)
plot(t,x);
title('Input Zero Noise Signal');
%%%%%%%%%%%%%%%%%%%%%%%%%%PLOTTING NOISE SIGNAL SIGNAL%%%%%%%%%%%%%%%%%%%%%
subplot(222)
plot(t,r);
title('Input Noise Signal');
%%%%%%%%%%%$$%%%%%PLOTTING NOISY INPUT AFTER MIXING SIGNAL%%%%%%%%%%%%%%%%%
subplot(223)
plot(t,x1);
title('Input Signal Mixed With Noise');
%%%%%%%%%%%%%%%%%%%%%%%%%%PLOTTING OUTPUT FILTERED SIGNAL%%%%%%%%%%%%%%%%%%
subplot(224);
plot(t,y2);
title('Filtered Output Signal');

