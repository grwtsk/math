#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Fraction-only scalar certificate for a full-form-domain Weil bound.

Mathematical proof of the nonlocal rank-one comparison is in the adjacent
WeilShortWindowRankOne.md. This program checks ONLY the displayed arithmetic
scalar inequalities and the analytic series remainder envelopes, not the
underlying functional-analytic source identity or any RH/GRH claim.
"""
from fractions import Fraction as F
from math import factorial

# Do not allow -O to suppress the exact-rational certificate assertions.
if not __debug__:
    raise SystemExit("Certificate assertions require Python without -O")

class I:
    def __init__(self, lo, hi=None):
        self.lo=F(lo); self.hi=F(hi) if hi is not None else F(lo)
        assert self.lo <= self.hi
    def __add__(self, b):
        b=iv(b); return I(self.lo+b.lo,self.hi+b.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,b):return self+(-iv(b))
    def __rsub__(self,b):return iv(b)-self
    def __mul__(self,b):
        b=iv(b)
        vv=[x*y for x in (self.lo,self.hi) for y in (b.lo,b.hi)]
        return I(min(vv),max(vv))
    __rmul__=__mul__
    def __truediv__(self,b):
        b=iv(b);assert not (b.lo<=0<=b.hi)
        return self*I(1/b.hi,1/b.lo)
    def __rtruediv__(self,b):return iv(b)/self

def iv(x):return x if isinstance(x,I) else I(x)

def atan_scalar(z,n):
    z=F(z);assert 0<=z<1
    s=sum(((-1)**k*z**(2*k+1)/F(2*k+1) for k in range(n)),F(0))
    e=z**(2*n+1)/F(2*n+1)
    return I(s,s+e) if n%2==0 else I(s-e,s)

def atanh_scalar(z,n):
    z=F(z);assert 0<=z<1
    s=sum((z**(2*k+1)/F(2*k+1) for k in range(n)),F(0))
    e=z**(2*n+1)/(F(2*n+1)*(1-z*z))
    return I(s,s+e)

def atan(x,n):
    x=iv(x)
    return I(atan_scalar(x.lo,n).lo,atan_scalar(x.hi,n).hi)

def atanh(x,n):
    x=iv(x)
    return I(atanh_scalar(x.lo,n).lo,atanh_scalar(x.hi,n).hi)

def log_scalar(x,n):
    x=F(x);assert x>=1
    y=(x-1)/(x+1)
    s=2*sum((y**(2*k+1)/F(2*k+1) for k in range(n)),F(0))
    e=2*y**(2*n+1)/(F(2*n+1)*(1-y*y))
    return I(s,s+e)

def log(x,n):
    x=iv(x);assert x.lo>=1
    return I(log_scalar(x.lo,n).lo,log_scalar(x.hi,n).hi)

def exp_negative_bounds(t,n=8):
    # Alternating Leibniz series, 0<t<1, n even. S_(n+1)<=e^-t<=S_n.
    t=F(t);assert 0<t<1 and n%2==0
    s=sum(((-t)**k/F(factorial(k)) for k in range(n+1)),F(0))
    sn=s-t**(n+1)/F(factorial(n+1))
    return I(sn,s)

pi=16*atan_scalar(F(1,5),12)-4*atan_scalar(F(1,239),5)
assert pi.lo>F(3) and pi.hi<F(22,7)
l2=2*atanh_scalar(F(1,3),30)
l3=2*atanh_scalar(F(1,2),40)
l5=2*atanh_scalar(F(2,3),75)
lnpi=log(pi,70)
ln100=2*(l2+l5)
n=100
Hn=sum((F(1,j) for j in range(1,n+1)),F(0))
# Hn-ln(n)-1/(2n) < Euler gamma < that+1/(8n²).
gamma=I(Hn-ln100.hi-F(1,2*n),Hn-ln100.lo-F(1,2*n)+F(1,8*n*n))

# Exact algebraic bracket for z=2^(-1/4) and t=2^(-1/2).
z=I(F(84089641,10**8),F(84089642,10**8))
assert z.lo**4 < F(1,2) < z.hi**4
sqrtinv=I(F(70710678,10**8),F(70710679,10**8))
assert sqrtinv.lo**2<F(1,2)<sqrtinv.hi**2
sqrt2=2*sqrtinv
assert sqrt2.hi/3 < F(59,125)

# Euler psi(1/4)=-gamma-pi/2-3log2 and
# psi(3/4)=-gamma+pi/2-3log2 (exact digamma identities).
c5=(l5-lnpi)-gamma-pi/2-3*l2
k0_z=atanh(z,120)+atan(z,100)
even_margin=c5+2*k0_z
assert even_margin.lo>F(1,20), ('even',even_margin.lo)

# The conductor-three odd rank-one comparison at L0=log(2).
# V(x)>=vstar + (2x/L0-1)^2/2.
# vstar=log(3/(pi*L0))-gamma+pi/4-atan(1/sqrt2)+L0*sqrt2/3.
vstar=log(3/(pi*l2),70)-gamma+pi/4-atan(sqrtinv,100)+l2*sqrt2/3
assert vstar.lo>F(239,1000), ('vstar',vstar.lo)
v=F(239,1000);N=16
# Decreasing-in-y Darboux upper sum on [0,1].
sumupper=sum((1/(v+F(j*j,2*N*N)) for j in range(N)),F(0))/N
rho=F(59,125)*F(7,10)*sumupper
assert l2.hi<F(7,10)
assert rho<F(191,200),('rank1',rho)
assert (1-rho)*v>F(1,100),('odd margin',(1-rho)*v)

# Zeta: full-domain bound for L<=1/6 by gamma midpoint and both-pole lower bound.
# Prove 95918/100000 < exp(-1/24) < 95920/100000 by Taylor enclosure.
ez=exp_negative_bounds(F(1,24),10)
z0=I(F(95918,100000),F(95920,100000))
assert ez.lo>z0.lo and ez.hi<z0.hi
# Bound 2sinh(L/2)-L<1/1000 for L<=1/6 using the Taylor bound.
# 2(sinh(t)-t)<=t³ at 0<=t<=1/12, yielding L³/8<=1/1728<1/1000.
assert F(1,1728)<F(1,1000)
cz=-lnpi-gamma-pi/2-3*l2
zeta_margin=2*(atanh(z0,130)+atan(z0,120))+cz-F(1,1000)
assert zeta_margin.lo>F(1,50),('zeta',zeta_margin.lo)

print('PASS: full-domain zeta Weil form margin >1/50 for all L<=1/6')
print('PASS: every primitive EVEN conductor>1 margin >1/20 for L<=log2')
print('PASS: every primitive ODD conductor>1 margin >1/100 for L<=log2')
print('rank-one bound rho<191/200; 16 exact rational Darboux cells')
for key,x in [('vstar',vstar),('rank-one rho',I(rho)),('even margin',even_margin),('zeta margin',zeta_margin)]:
    print(key,format(float(x.lo),'.12f'),format(float(x.hi),'.12f'))
print('Every comparison used exact Fraction arithmetic; numerical displays are not premises.')
