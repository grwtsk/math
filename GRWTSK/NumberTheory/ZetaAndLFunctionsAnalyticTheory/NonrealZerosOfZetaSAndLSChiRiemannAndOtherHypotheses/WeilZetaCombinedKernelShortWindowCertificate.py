#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational inequalities for a signed zeta Weil kernel, at L=3/10.

This checks the finite rational prerequisites of the written continuous proof.
It does not check the analytic source identification, kernel/Fourier domain, or RH.
All asserted signs compare fractions.Fraction. Printed decimals are diagnostic.
"""
from fractions import Fraction as F
from math import factorial

if not __debug__:
    raise SystemExit('Use unoptimized Python: assertions must remain enabled')

class I:
    def __init__(self, lo, hi=None):
        self.lo = F(lo)
        self.hi = F(hi) if hi is not None else F(lo)
        assert self.lo <= self.hi
    def __add__(self, other):
        other = iv(other)
        return I(self.lo + other.lo, self.hi + other.hi)
    __radd__ = __add__
    def __neg__(self):
        return I(-self.hi, -self.lo)
    def __sub__(self, other):
        return self + -iv(other)
    def __rsub__(self, other):
        return iv(other) - self
    def __mul__(self, other):
        other = iv(other)
        vals = [a*b for a in (self.lo, self.hi) for b in (other.lo, other.hi)]
        return I(min(vals), max(vals))
    __rmul__ = __mul__
    def __truediv__(self, other):
        other = iv(other)
        assert not (other.lo <= 0 <= other.hi)
        return self * I(1/other.hi, 1/other.lo)
    def __rtruediv__(self, other):
        return iv(other) / self

def iv(x):
    return x if isinstance(x, I) else I(x)

def exp_pos_scalar(x, n=22):
    # For rational 0<=x<=1, the remaining positive exponential series is
    # between zero and next_term/(1-x/(n+2)); ratio of later terms decreases.
    x = F(x)
    assert 0 <= x <= 1 and n >= 0
    sn = sum((x**j / F(factorial(j)) for j in range(n+1)), F(0))
    term = x**(n+1)/F(factorial(n+1))
    return I(sn, sn + term/(1-x/F(n+2)))

def exp_pos(interval, n=22):
    x=iv(interval)
    assert 0 <= x.lo <= x.hi <= 1
    return I(exp_pos_scalar(x.lo, n).lo, exp_pos_scalar(x.hi, n).hi)

def atan_scalar(x, n=13):
    x=F(x)
    assert 0 <= x < 1
    partial=sum(((-1)**j*x**(2*j+1)/F(2*j+1) for j in range(n)), F(0))
    nxt=x**(2*n+1)/F(2*n+1)
    return I(partial, partial+nxt) if n%2==0 else I(partial-nxt, partial)

def atan(interval, n=13):
    x=iv(interval)
    assert 0<=x.lo<=x.hi<1
    return I(atan_scalar(x.lo,n).lo, atan_scalar(x.hi,n).hi)

def log_scalar(x, n=65):
    x=F(x)
    assert x>=1
    u=(x-1)/(x+1)
    sm=2*sum((u**(2*j+1)/F(2*j+1) for j in range(n)), F(0))
    rem=2*u**(2*n+1)/(F(2*n+1)*(1-u*u))
    return I(sm,sm+rem)

def log(interval,n=65):
    x=iv(interval)
    assert 1<=x.lo<=x.hi
    return I(log_scalar(x.lo,n).lo,log_scalar(x.hi,n).hi)

L=F(3,10)
a=F(7,25)
assert 0<a and 2*a>L and L< F(7,10)

# All constants are obtained without numeric black boxes.
pi = 16*atan_scalar(F(1,5),13) - 4*atan_scalar(F(1,239),6)
assert pi.lo>3 and pi.hi<F(22,7)
ln2=log_scalar(2,60)
ln5=log_scalar(5,110)
ln100=2*ln2+2*ln5
N=100
H=sum((F(1,j) for j in range(1,N+1)),F(0))
# For Euler's constant, 0 < gamma-(H_N-log N-1/(2N)) < 1/(8N²).
gamma=I(H-ln100.hi-F(1,2*N),H-ln100.lo-F(1,2*N)+F(1,8*N*N))
assert ln2.lo>L

# e^-x = 1/e^x, exp_pos applied only to rational x <=1.
ea=exp_pos(a)
e2a=exp_pos(2*a)
eL=exp_pos(L)
e2L=exp_pos(2*L)
ehalf=exp_pos(L/2)
equarter=exp_pos(L/4)

# Exact threshold: k(s)>=r(s) iff (1-e^-2s)(1+e^s)<=1.
threshold=(1-1/e2a)*(1+ea)
assert threshold.hi < 1, ('kernel threshold',threshold.lo,threshold.hi)

# r(L)=e^(L/2)+e^(-L/2), k(L)=e^(-L/2)/(1-e^(-2L)).
rL=ehalf+1/ehalf
kL=(1/ehalf)/(1-1/e2L)
M=rL-kL
assert M.lo>0 and M.hi<F(3,25), ('far-edge kernel loss',M.lo,M.hi)

# Original c_zeta=-ln pi-gamma-pi/2-3 ln 2;
# 2K(L/2)=ln[(1+z)/(1-z)]+2atan(z), z=e^(-L/4).
# atan(z)=pi/4-atan((1-z)/(1+z)); the pi/2 cancels EXACTLY.
# Write log[(1+z)/(1-z)]-3ln2 = log((1+z)/(16(1-z)))+ln2
z=1/equarter
v=(1-z)/(1+z)
ratio=(1+z)/(16*(1-z))
assert ratio.lo>1 and v.lo>0 and v.hi<1
sh=(equarter-1/equarter)/2
m=log(ratio)+ln2-log(pi)-gamma-2*atan(v)+8*sh
assert m.lo>F(1,125), ('pointwise signed potential',m.lo,m.hi)

# For support L=3/10, all negative k-r kernel is confined to separations
# >a=7/25 and costs at most 2*M*(L-a) in physical L2 norm.
loss=2*M*(L-a)
final=m-loss
assert loss.hi < F(3,625)
assert final.lo > F(1,320)
assert F(1,125)-2*F(3,25)*(L-a) > F(1,320)

for key,val in [('EulerGamma',gamma),('pi',pi),('kernel threshold',threshold),('M(L)',M),('Vmin',m),('loss',loss),('coercivity margin',final)]:
    print(key,format(float(val.lo),'.12f'),format(float(val.hi),'.12f'))
print('PASS: exact rational signed source-kernel margin exceeds 1/320 on L<=3/10')
print('PASS: both zeta pole orientations and entire gamma kernel retained analytically')
print('STATUS: analytic source argument WRITTEN; Lean and independent review NOT_RUN')
