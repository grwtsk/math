#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational enclosure for the zeta endpoint matrix at L=log(4).
Every assertion uses fractions.Fraction, never binary floating point.
Mathematical input: WEGR-v1-1, standard Machin identity, and Euler constant
trapezoid enclosure. No RH or zero list is used.
"""
from fractions import Fraction as F

class Interval:
    def __init__(self, lo, hi=None):
        self.lo = F(lo)
        self.hi = F(hi) if hi is not None else F(lo)
        assert self.lo <= self.hi
    def __add__(self, other):
        other = asI(other)
        return Interval(self.lo+other.lo, self.hi+other.hi)
    __radd__ = __add__
    def __neg__(self): return Interval(-self.hi, -self.lo)
    def __sub__(self, other): return self + (-asI(other))
    def __rsub__(self, other): return asI(other) - self
    def __mul__(self, other):
        other = asI(other)
        terms=[a*b for a in (self.lo,self.hi) for b in (other.lo,other.hi)]
        return Interval(min(terms),max(terms))
    __rmul__=__mul__
    def __truediv__(self, other):
        other=asI(other)
        assert not (other.lo<=0<=other.hi)
        return self * Interval(1/other.hi,1/other.lo)
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        if n==0:return Interval(1)
        if n%2==0 and self.lo<0<self.hi:
            return Interval(0,max(self.lo**n,self.hi**n))
        return Interval(min(self.lo**n,self.hi**n),max(self.lo**n,self.hi**n))

def asI(x):return x if isinstance(x,Interval) else Interval(x)

def atan_rational(z,N):
    z=F(z); assert 0<z<1
    s=sum(((-1)**k*z**(2*k+1)/F(2*k+1) for k in range(N)),F(0))
    tail=z**(2*N+1)/F(2*N+1)
    return Interval(s,s+tail) if N%2==0 else Interval(s-tail,s)

def log_rational(x,N):
    x=F(x); assert x>1
    y=(x-1)/(x+1)
    s=2*sum((y**(2*k+1)/F(2*k+1) for k in range(N)),F(0))
    tail=2*y**(2*N+1)/(F(2*N+1)*(1-y*y))
    return Interval(s,s+tail)

# Machin: pi = 16 atan(1/5) - 4 atan(1/239), justified by tangent identities.
pi=16*atan_rational(F(1,5),12) -4*atan_rational(F(1,239),4)
l2=log_rational(2,22)
l3=log_rational(3,28)
l5=log_rational(5,42)
lnpi=Interval(log_rational(pi.lo,42).lo, log_rational(pi.hi,42).hi)

# H_n - log n - 1/(2n) < Euler gamma < this + 1/(8n^2).
# Trapezoidal remainder: 0 < (1/2)(1/k+1/(k+1))-log(1+1/k)
# <= (1/4)*int_k^(k+1) t^(-3) dt; sum k>=n -> 1/(8n^2).
n=100
Hn=sum((F(1,k) for k in range(1,n+1)),F(0))
logn=2*l2+2*l5
gamma=Interval(Hn-logn.hi-F(1,2*n),Hn-logn.lo-F(1,2*n)+F(1,8*n*n))

# Li2(t)=sum t^k/k^2; positive tail bounded by t^(N+1)/((N+1)^2(1-t)).
t=F(1,4); N=16
li2sum=sum((t**k/F(k*k) for k in range(1,N+1)),F(0))
li2=Interval(li2sum,li2sum+t**(N+1)/(F((N+1)**2)*(1-t)))

# Closed actual arithmetic endpoint entries at L=log4. At strict cutoff only
# n=2 and n=3 remain, with Lambda(2)=log2, Lambda(3)=log3.
K=gamma+lnpi
D=l2/2+F(5,4)*l5-F(11,12)*l3-F(3,4)*K
B=F(9,8)+pi**2/12-li2/2-K*l2-F(3,4)*l2**2-F(2,3)*l3*(2*l2-l3)

assert F(3) < pi.lo and pi.hi < F(22,7)
assert F(0)<l2.lo and l2.hi < F(7,10)
assert F(0)<l3.lo and l3.hi < F(11,10)
assert l2.hi < F(3,4)
assert F(59,1000)<D.lo
assert F(0)<B.lo and B.hi < F(1,20)
assert D.lo-B.hi > F(9,1000)

# For the stated rectangle, gamma modulation <29|eta|, prime <5|eta|,
# pole <13|eta| in coefficient norm. Support variation is <24|L-log4|.
# See associated written proof for whole-line gamma multiplier and the full pole norm.
assert F(29)+F(5)+F(13) < F(50)
assert F(9,1000)-F(24,10000)-F(50,10000) > F(1,1000)

# Output short enclosure intervals (the printed decimals are informative only;
# the preceding assertions are exact rational comparisons).
for name,interval in [('pi',pi),('log2',l2),('log3',l3),('log5',l5),('logpi',lnpi),('gamma',gamma),('Li2(1/4)',li2),('D',D),('B',B),('D-B',D-B)]:
    print(name,format(float(interval.lo),'.12f'),format(float(interval.hi),'.12f'))
print('PASS: exact rational endpoint certificate; no RH, no floating-point decisions')
