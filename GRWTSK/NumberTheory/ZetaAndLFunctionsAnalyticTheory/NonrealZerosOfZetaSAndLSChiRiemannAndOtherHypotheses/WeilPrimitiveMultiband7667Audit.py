#!/usr/bin/env python3
"""Exact-rational certificate for primitive nonprincipal Weil positivity at L=23/30.

All mathematical assertions use exact integers and Fraction; no floats.
The analytic source-return and finite-block gamma inequalities are separate
written arguments, not established by running this scalar checker.
"""
from fractions import Fraction as F
from math import factorial
import hashlib, pathlib, sys
if not __debug__:
    raise SystemExit('REFUSED: Python -O disables critical assertions')

S=10**12
P=10**10
L=F(23,30)
M=20
N=128
h=L/M

def lower(x,scale=S):
    a=x*scale
    return F(a.numerator//a.denominator,scale)
def upper(x,scale=S):
    return -lower(-x,scale)

def log_bounds(q,terms=24):
    assert q>0
    k=0
    while q>=2:
        q/=2; k+=1
    while q<1:
        q*=2; k-=1
    u=(q-1)/(q+1)
    assert 0<=u<=F(1,3)
    z=u; s=F(0)
    for j in range(terms):
        s+=2*z/F(2*j+1)
        z*=u*u
    rem=2*z/(F(2*terms+1)*(1-u*u))
    v=F(1,3); zz=v; t=F(0)
    for j in range(terms):
        t+=2*zz/F(2*j+1)
        zz*=v*v
    trem=2*zz/(F(2*terms+1)*(1-v*v))
    if k>=0:
        return s+k*t,s+rem+k*(t+trem)
    return s+k*(t+trem),s+rem+k*t

def atan_bounds(x,terms=20):
    assert 0<x<1 and terms%2==0
    z=x; tot=F(0)
    for j in range(terms+1):
        tot+=(-1)**j*z/F(2*j+1)
        if j==terms-1:lo=tot
        if j==terms:hi=tot
        z*=x*x
    assert lo<hi
    return lo,hi

def expminus_bounds(x, n=27):
    assert 0<=x<=2 and n%2==1
    z=F(1);tot=F(0)
    for j in range(n+2):
        if j: z*=(-x)/j
        tot+=z
        if j==n:lo=tot
        if j==n+1:hi=tot
    assert 0<lo<hi<=1
    return lo,hi

def k_bounds(t):
    a,b=expminus_bounds(F(3,2)*t)
    c,d=expminus_bounds(2*t)
    lo=lower(a/(1-c))
    hi=upper(b/(1-d))
    assert 0<lo<hi
    return lo,hi

p5lo,p5hi=atan_bounds(F(1,5))
p239lo,p239hi=atan_bounds(F(1,239))
pi_lo=lower(16*p5lo-4*p239hi)
pi_hi=upper(16*p5hi-4*p239lo)
assert 3<pi_lo<pi_hi<F(22,7)
s_lo,s_hi=log_bounds(F(2))
s_lo,s_hi=lower(s_lo),upper(s_hi)
assert F(2,3)<s_lo<s_hi<L
assert L<log_bounds(F(3))[0]
dmax=L-s_lo
assert dmax>0
assert dmax<L/2
sqrt2_lo=F(141421356237,10**11)
assert sqrt2_lo**2<2
w_hi=upper(s_hi/sqrt2_lo)

m=200
H=sum((F(1,i) for i in range(1,m+1)),F(0))
lnm_lo=log_bounds(F(m))[0]
gamma_hi=upper(H-lnm_lo-F(1,2*m)+F(1,8*m*m))
# Improved exact K lower from the gamma tail, using sinh v>=v+v^3/6:
# K(t) >= (1/2)log(4/t)-pi/4+t/4 + t²/96 -t³/96 - t⁴/4608.
constant=lower(log_bounds(F(3)/(pi_hi*L))[0]-gamma_hi+L/4, P)

beta_lo=[[F(0)]*M for _ in range(M)]
beta_hi=[[F(0)]*M for _ in range(M)]
for dist in range(M):
    l,u=k_bounds((dist+1)*h)
    for i in range(M):
        for j in range(M):
            if abs(i-j)==dist:
                beta_lo[i][j]=l
                beta_hi[i][j]=u
assert all(beta_lo[i][j]>0 for i in range(M) for j in range(M))
sum_potential_lo=[h*sum(row) for row in beta_lo]

def glower(i,x,edge):
    assert 0<x<=L/2 and i<M//2
    y=2*x/L-1
    ratio=1/(1-y*y)
    loglo=log_bounds(ratio)[0]
    poly=(x*x+(L-x)**2-x**3-(L-x)**3)/96 - (x**4+(L-x)**4)/4608
    val=constant+sum_potential_lo[i]+loglo/2+poly-(w_hi if edge else F(0))
    return lower(val,P)

Jhi=[F(0)]*M
global_min=F(1000)
for i in range(M//2):
    a=h*i;b=h*(i+1)
    if b<=dmax:segs=[(a,b,True)]
    elif a>=dmax:segs=[(a,b,False)]
    else:segs=[(a,dmax,True),(dmax,b,False)]
    I=F(0)
    for sa,sb,edge in segs:
        step=(sb-sa)/N
        for j in range(1,N+1):
            x=sa+j*step
            g=glower(i,x,edge)
            assert g>0,(i,x,g)
            global_min=min(global_min,g)
            I+=step*upper(1/g,P)
    Jhi[i]=upper(I,P)
    Jhi[M-1-i]=Jhi[i]
assert global_min>F(17,10),global_min
assert all(v>0 for v in Jhi)
# Positive approximate Perron vector of B*diag(J), rounded to integers.
vhalf=[1000000,1198160,1304730,1412210,1506970,1586800,1651070,1699470,1731840,1748050]
v=vhalf+list(reversed(vhalf))
assert len(v)==M and min(v)>0
r=F(9985,10000)
maxratio=F(0)
for i in range(M):
    lhs=sum((beta_hi[i][j]*Jhi[j]*v[j] for j in range(M)),F(0))
    ratio=upper(lhs/F(v[i]),P)
    maxratio=max(ratio,maxratio)
    assert lhs<r*v[i],(i,ratio,r)

assert (1-r)*global_min>F(1,500)
print('WEIL_PRIMITIVE_MULTIBAND_7667: PASS')
print('Python',sys.version.split()[0])
print('L',L,'M',M,'N Darboux cells per segment',N)
print('min true potential >',global_min)
print('certified max Perron ratio <',maxratio,'target',r)
print('original Q_chi,L(f) >', (1-r)*global_min,'||f||² > 1/500||f||²')
print('J1',Jhi[0],'Jmid',Jhi[9])
print('SHA256',hashlib.sha256(pathlib.Path(__file__).read_bytes()).hexdigest())
