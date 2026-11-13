#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Rational certificate for full primitive Weil positivity to log(2)+1/32.

Only finite scalar arithmetic is certified by this program. The source-return,
gamma positivity and rank-one comparison are the written mathematical proof.
All assert predicates use Fraction arithmetic, not binary floating-point.
"""
from fractions import Fraction as F
from math import factorial

if not __debug__:
    raise SystemExit('Assertions are required: do not run this checker with -O.')

class I:
    def __init__(self, lo, hi=None):
        self.lo=F(lo)
        self.hi=F(hi) if hi is not None else F(lo)
        assert self.lo <= self.hi
    def __repr__(self): return f'I({self.lo},{self.hi})'
    def __add__(self,b):
        b=iv(b); return I(self.lo+b.lo,self.hi+b.hi)
    __radd__=__add__
    def __neg__(self): return I(-self.hi,-self.lo)
    def __sub__(self,b):return self+(-iv(b))
    def __rsub__(self,b):return iv(b)-self
    def __mul__(self,b):
        b=iv(b); ss=[x*y for x in (self.lo,self.hi) for y in (b.lo,b.hi)]
        return I(min(ss),max(ss))
    __rmul__=__mul__
    def __truediv__(self,b):
        b=iv(b); assert not(b.lo<=0<=b.hi)
        return self*I(1/b.hi,1/b.lo)
    def __rtruediv__(self,b):return iv(b)/self
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        if n==0:return I(1)
        if n%2==0 and self.lo<0<self.hi:return I(0,max(self.lo**n,self.hi**n))
        return I(min(self.lo**n,self.hi**n),max(self.lo**n,self.hi**n))

def iv(x):return x if isinstance(x,I) else I(x)

def atan_scalar(z,n=120):
    z=F(z);assert 0<=z<1
    ss=sum(((-1)**j*z**(2*j+1)/F(2*j+1) for j in range(n)),F(0))
    e=z**(2*n+1)/F(2*n+1)
    return I(ss,ss+e) if n%2==0 else I(ss-e,ss)

def atanh_scalar(z,n=90):
    z=F(z);assert 0<=z<1
    ss=sum((z**(2*j+1)/F(2*j+1) for j in range(n)),F(0))
    e=z**(2*n+1)/(F(2*n+1)*(1-z*z))
    return I(ss,ss+e)

def atan(x,n=120):
    x=iv(x);assert x.lo>=0 and x.hi<1
    return I(atan_scalar(x.lo,n).lo,atan_scalar(x.hi,n).hi)

def log_scalar(x,n=90):
    x=F(x);assert x>=1
    y=(x-1)/(x+1)
    z=atanh_scalar(y,n)
    return 2*z

def log(x,n=90):
    x=iv(x);assert x.lo>=1
    return I(log_scalar(x.lo,n).lo,log_scalar(x.hi,n).hi)

def exp_neg(t,n=12):
    # Alternating e^-t series; S_(even+1) < e^-t < S_even, for 0<t<1.
    t=F(t);assert F(0)<t<1 and n%2==0
    ss=sum(((-t)**j/F(factorial(j)) for j in range(n+1)),F(0))
    return I(ss-t**(n+1)/F(factorial(n+1)),ss)

pi=16*atan_scalar(F(1,5),12)-4*atan_scalar(F(1,239),5)
assert F(3)<pi.lo and pi.hi<F(22,7)
ln2=2*atanh_scalar(F(1,3),30)
ln3=2*atanh_scalar(F(1,2),40)
ln5=2*atanh_scalar(F(2,3),75)
assert F(69,100)<ln2.lo and ln2.hi<F(7,10)
ln100=2*(ln2+ln5)
H100=sum((F(1,j) for j in range(1,101)),F(0))
gamma=I(H100-ln100.hi-F(1,200),H100-ln100.lo-F(1,200)+F(1,80000))

# d = L0-log2=1/32; e^-L0/2 = (1/sqrt2)*e^-1/64.
sqrtinv=I(F(70710678,10**8),F(70710679,10**8))
assert sqrtinv.lo**2<F(1,2)<sqrtinv.hi**2
L0=ln2+F(1,32)
assert F(18,25)<L0.lo and L0.hi<F(29,40)
assert L0.hi<ln3.lo   # no other prime power enters before log 3
z=sqrtinv*exp_neg(F(1,64),12)
k=z**3/(1-z**4)  # k_(3/2)(L0) exactly
w=ln2*sqrtinv   # Lambda(2)/sqrt(2)
assert k.hi < F(443,1000),('k-bound',float(k.hi))
assert w.hi < F(491,1000),('w-bound',float(w.hi))

# v(L0)=log(3/(pi*L0))-gamma+pi/4-atan(e^-L0/2)+L0*k.
v=log(3/(pi*L0),90)-gamma+pi/4-atan(z,120)+L0*k
assert v.lo>F(97,500),('v-bound',float(v.lo),float(v.hi))
# Edge set E=(0,d) union (log2,L0), i.e. |2x/L0-1|>=a*=1-2d/L0.
a_actual=1-(F(1,16)/L0)
assert a_actual.lo>F(91,100),('activation cutoff',float(a_actual.lo))

v0=F(97,500);w0=F(491,1000);a=F(91,100)
# -1/2*log(1-y^2)>=sum_(j=1)^10 y^(2j)/(2j), 0<=y<1.
def poly(y):return sum((y**(2*j)/F(2*j) for j in range(1,11)),F(0))
assert v0+poly(a)-w0>v0  # boundary-paid potential is also >= v0

N=128
# On each of [0,a] and [a,1], the reciprocal of the indicated polynomial
# potential is decreasing; these LEFT sums are upper Darboux sums over whole
# intervals. The replacement starts the prime-cost interval before its true edge.
def upper(a0,b0,edge):
    step=(b0-a0)/N
    return step*sum((1/(v0+poly(a0+j*step)-(w0 if edge else 0)) for j in range(N)),F(0))
J=upper(F(0),a,False)+upper(a,F(1),True)
rho=F(443,1000)*F(29,40)*J
assert rho<F(197,200),('rho upper',float(rho))
margin=(1-F(197,200))*v0
assert margin>F(1,400)
print('PASS: log2+1/32 full-test primitive q>1 margin >= 1/400')
print('v(L0)>97/500, k(L0)<443/1000, w<491/1000, a_actual>91/100: PASS')
print('Darboux: 128 exact rational left cells in each of two regions, rho<197/200: PASS')
for name,interval in [('L0',L0),('v(L0)',v),('k(L0)',k),('w',w),('a_actual',a_actual)]:
    print(name,format(float(interval.lo),'.12f'),format(float(interval.hi),'.12f'))
print('rho upper',format(float(rho),'.12f'),'coercivity lower',format(float(margin),'.12f'))
print('Finite rational assertions only; source-form identity written, Lean NOT_RUN.')

# Zeta: complete all-vector full physical form on 0<L<=1/5.
# For K_(1/2)(t), both atanh and arctan have exact log barriers:
# atanh(e^-t/2)>= (1/2)*log(4/t),
# arctan(e^-t/2) >= pi/4-t/4.
# Thus c_zeta+W_L(x)+L*k_(1/2)(L)-r_L >=
#    -log(pi*L)-gamma-L/4+L*k_(1/2)(L)-r_L
#    - (1/2)*log(1-y^2), y=2x/L-1.
# The prime operator vanishes for L<=1/5<log2, and
# r_L=2*sinh(L/2)-L is the ACTUAL negative two-pole eigenvalue.
Lz=F(1,5)
tenth=exp_neg(F(1,10),12)
two_fifths=exp_neg(F(2,5),16)
k_z=tenth/(1-two_fifths)
assert k_z.hi<F(11,4),('zeta kernel',float(k_z.hi))
# For t<=1/10, the positive sinh tail obeys 2(sinh(t)-t)<t^3,
# by comparison with the geometric series; r_(1/5)<1/1000.
rz_upper=F(1,1000)
# -log(pi/5) = log(5/pi).
v_z=log(5/pi,100)-gamma-F(1,20)+Lz*k_z-rz_upper
assert v_z.lo>F(385,1000),('zeta v',float(v_z.lo))

ZPOLY=30
ZCELLS=256
vz0=F(385,1000)
def zpoly(y):return sum((y**(2*j)/F(2*j) for j in range(1,ZPOLY+1)),F(0))
step=F(1,ZCELLS)
# Nonnegative log series tail retained; upper Darboux on entire y in [0,1].
zint_upper=step*sum((1/(vz0+zpoly(i*step)) for i in range(ZCELLS)),F(0))
zrho=F(11,4)*Lz*zint_upper
assert zrho<F(986,1000),('zeta rho',float(zrho))
zmargin=(1-F(986,1000))*vz0
assert zmargin>F(1,200)
print('PASS: zeta full-domain original two-pole Weil form, all 0<L<=1/5, Q>=||f||²/200')
print('zeta: v>385/1000, k<11/4, rho<986/1000; 256 exact Darboux cells and 30 log-series terms')
print('zeta kernel cap',format(float(k_z.hi),'.12f'),'zeta v interval',format(float(v_z.lo),'.12f'),format(float(v_z.hi),'.12f'))
print('zeta rho upper',format(float(zrho),'.12f'),'zeta margin lower',format(float(zmargin),'.12f'))
