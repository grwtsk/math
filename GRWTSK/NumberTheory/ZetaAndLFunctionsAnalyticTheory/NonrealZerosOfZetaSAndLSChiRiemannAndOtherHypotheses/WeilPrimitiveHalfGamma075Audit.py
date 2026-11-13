#!/usr/bin/env python3
"""Exact rational audit of half-interval gamma recovery in primitive Weil source.

This checks scalar inequalities and the continuum right-Darboux upper bound.
It does NOT prove the completed Dirichlet explicit formula, rank-two gamma
moment reduction, or Lean elaboration; those require separate analysis.
"""
from fractions import Fraction as F
from pathlib import Path
from hashlib import sha256
import sys

if not __debug__:
    raise SystemExit('REFUSE: assertions disabled by optimized Python')
S=10**12
G=10**10

def lo(x,scale):
    x=x*scale
    return F(x.numerator//x.denominator,scale)

def hi(x,scale):
    return -lo(-x,scale)

def logbounds(q,n=24):
    assert q>0
    k=0
    while q>=2:
        q/=2
        k+=1
    while q<1:
        q*=2
        k-=1
    u=(q-1)/(q+1)
    assert 0<=u<=F(1,3)
    value=F(0);z=u
    for j in range(n):
        value+=2*z/F(2*j+1)
        z*=u*u
    rem=2*z/(F(2*n+1)*(1-u*u))
    v=F(1,3);vvalue=F(0);vz=v
    for j in range(n):
        vvalue+=2*vz/F(2*j+1)
        vz*=v*v
    vrem=2*vz/(F(2*n+1)*(1-v*v))
    a,b=(vvalue,vvalue+vrem)
    if k>=0:
        return value+k*a,value+rem+k*b
    return value+k*b,value+rem+k*a

def atanbounds(q,n=20):
    assert 0<q<1 and n%2==0
    val=F(0);z=q
    for j in range(n+1):
        val+=(-1)**j*z/F(2*j+1)
        if j==n-1: low=val
        if j==n: up=val
        z*=q*q
    assert low<up
    return low,up

def expminus(x,n=25):
    assert 0<=x<=F(3,2) and n%2==1
    z=F(1); acc=F(0)
    for j in range(n+2):
        if j:z*=(-x)/j
        acc+=z
        if j==n:lower=acc
        if j==n+1:upper=acc
    assert 0<lower<upper<=1
    return lower,upper

def k_bounds(t):
    p,q=expminus(F(3,2)*t)
    x,y=expminus(2*t)
    lower=lo(p/(1-x),S)
    upper=hi(q/(1-y),S)
    assert 0<lower<upper
    return lower,upper

L=F(3,4)
lo5,hi5=atanbounds(F(1,5))
lo239,hi239=atanbounds(F(1,239))
pi_l=lo(16*lo5-4*hi239,S)
pi_u=hi(16*hi5-4*lo239,S)
assert 3<pi_l<pi_u<F(22,7)
s_l,s_u=logbounds(F(2))
s_l,s_u=lo(s_l,S),hi(s_u,S)
assert F(2,3)<s_l<s_u<F(7,10)
log3_l,_=logbounds(F(3))
assert s_u<L<log3_l
sqrt2_l=F(141421356237,10**11)
assert sqrt2_l**2<2
prime_hi=hi(s_u/sqrt2_l,S)

M=200
H_M=sum((F(1,i) for i in range(1,M+1)),F(0))
logM_l,_=logbounds(F(M))
euler_hi=hi(H_M-logM_l-F(1,2*M)+F(1,8*M*M),S)
assert F(5772,10000)<euler_hi<F(5773,10000)

kL_lo,kL_hi=k_bounds(L)
khalf_lo,khalf_hi=k_bounds(L/2)
assert kL_hi<khalf_lo
H_lower=kL_lo+khalf_lo
H_upper=kL_hi+khalf_hi

# Source gamma potential using half-interval same-half energy:
# G(x)=c3,1+K(x)+K(L-x)+(L/2)*(k(L)+k(L/2))
#     -(log2/sqrt2)*1_{x in edge}, with edge length d=L-log2.
# Analytic K lower: 0.5*log(4/t)-pi/4+t/4-t^3/96.
# pi/2 and 3log2 EXACTLY cancel, leaving scalar B below.
B=logbounds(F(3)/(pi_u*L))[0]-euler_hi+L/4+(L/2)*H_lower
B=lo(B,G)
dmax=L-s_l
assert 0<dmax<L/2

def potential_lower(x,edge):
    assert 0<x<=L/2
    y=2*x/L-1
    ratio=1/(1-y*y)
    lr,_=logbounds(ratio)
    val=B+lr/2-(x**3+(L-x)**3)/96
    if edge:val-=prime_hi
    return lo(val,G)

edge_min=potential_lower(dmax,True)
mid_min=potential_lower(L/2,False)
vmin=min(edge_min,mid_min)
assert vmin>F(2,5),(edge_min,mid_min)

# Exact monotonicity: V'= -k(x)+k(L-x)<0 on (0,L/2),
# so 1/G increases on the two source charged half-segments.
# The edge is intentionally over-charged on [L-log2,dmax].
N=512
step_e=dmax/N
step_m=(L/2-dmax)/N

def recip_upper(x,edge):
    bound=potential_lower(x,edge)
    assert bound>0
    return hi(1/bound,G)
Se=sum((recip_upper(j*step_e,True) for j in range(1,N+1)),F(0))
Sm=sum((recip_upper(dmax+j*step_m,False) for j in range(1,N+1)),F(0))
Jupper=step_e*Se+step_m*Sm
rho=hi(H_upper*Jupper,G)
assert rho<F(99,100),rho
floor=lo((1-rho)*vmin,G)
assert floor>F(1,250),(floor,rho,vmin)

print('WEIL_PRIMITIVE_HALF_GAMMA_075: PASS')
print('Python',sys.version.split()[0])
print('L=',L,'s_lo=',s_l,'dmax=',dmax)
print('k(L) interval',kL_lo,kL_hi)
print('k(L/2) interval',khalf_lo,khalf_hi)
print('H interval',H_lower,H_upper)
print('potential edges min >=',edge_min,'middle >=',mid_min)
print('right Darboux cells per half segment',N,'Jupper=',Jupper)
print('rho=H*J <',rho,' < 99/100')
print('source coercivity >',floor,' > 1/250')
print('SHA256',sha256(Path(__file__).read_bytes()).hexdigest())
