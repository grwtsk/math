#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational scalar fixture for the genuine zeta pole--gamma cancellation.

Checks only the finite rational enclosures of the written analytic inequalities.
Not a substitute for the native Weil explicit formula, Lean, kernel checking,
or a proof of RH. No floating-point comparisons decide any assertion.
"""
from fractions import Fraction as Q
from math import factorial

if not __debug__:
    raise SystemExit("-O disables assertions and is prohibited for this certificate")

class Interval:
    def __init__(self, low, high=None):
        self.lo=Q(low)
        self.hi=Q(low) if high is None else Q(high)
        assert self.lo<=self.hi
    def __add__(self, rhs):
        b=I(rhs)
        return Interval(self.lo+b.lo,self.hi+b.hi)
    __radd__=__add__
    def __neg__(self):return Interval(-self.hi,-self.lo)
    def __sub__(self,rhs):return self+(-I(rhs))
    def __rsub__(self,rhs):return I(rhs)-self
    def __mul__(self,rhs):
        b=I(rhs)
        z=[a*c for a in (self.lo,self.hi) for c in (b.lo,b.hi)]
        return Interval(min(z),max(z))
    __rmul__=__mul__
    def __truediv__(self,rhs):
        b=I(rhs)
        assert not (b.lo<=0<=b.hi)
        return self*Interval(1/b.hi,1/b.lo)
    def __rtruediv__(self,lhs):return I(lhs)/self
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        result=Interval(1)
        for _ in range(n):result=result*self
        return result

def I(x):return x if isinstance(x,Interval) else Interval(x)

def atan_q(z,n):
    z=Q(z); assert 0<=z<1 and n>=1
    s=sum(((-1)**j*z**(2*j+1)/Q(2*j+1) for j in range(n)),Q(0))
    t=z**(2*n+1)/Q(2*n+1)
    return Interval(s,s+t) if n%2==0 else Interval(s-t,s)

def atanh_q(z,n):
    z=Q(z);assert 0<=z<1 and n>=1
    s=sum((z**(2*j+1)/Q(2*j+1) for j in range(n)),Q(0))
    t=z**(2*n+1)/(Q(2*n+1)*(1-z*z))
    return Interval(s,s+t)

def log_q(x,n):
    x=Q(x);assert x>=1
    u=(x-1)/(x+1)
    return 2*atanh_q(u,n)

def exp_minus_q(x,n=16):
    x=Q(x);assert 0<=x<=1 and n>=2 and n%2==0
    s=sum(((-x)**j/Q(factorial(j)) for j in range(n+1)),Q(0))
    rem=x**(n+1)/Q(factorial(n+1))
    return Interval(s-rem,s)

def monotone_atan(z,n):
    z=I(z);assert 0<=z.lo and z.hi<1
    return Interval(atan_q(z.lo,n).lo,atan_q(z.hi,n).hi)

def monotone_atanh(z,n):
    z=I(z);assert 0<=z.lo and z.hi<1
    return Interval(atanh_q(z.lo,n).lo,atanh_q(z.hi,n).hi)

# Machin's identity with exact alternating remainder brackets.
pi=16*atan_q(Q(1,5),14)-4*atan_q(Q(1,239),6)
ln2=2*atanh_q(Q(1,3),42)
ln5=2*atanh_q(Q(2,3),90)
ln100=2*ln2+2*ln5
lnpi=Interval(log_q(pi.lo,90).lo,log_q(pi.hi,90).hi)
n=100
H=sum((Q(1,j) for j in range(1,n+1)),Q(0))
# From the positive trapezoid errors for t -> 1/t, summed over j>=n:
# H_n-log(n)-1/(2n) <= gamma <= that + 1/(8n^2).
gamma=Interval(H-ln100.hi-Q(1,2*n), H-ln100.lo-Q(1,2*n)+Q(1,8*n*n))
c=-lnpi-gamma-pi/2-3*ln2
assert Q(3)<pi.lo<pi.hi<Q(22,7)


def verify(L,margin):
    L=Q(L)
    z=exp_minus_q(L/4,16)            # z=exp(-L/4)
    K=monotone_atanh(z,190)+monotone_atan(z,190)
    z2=z*z
    # k_(1/2)(L)=exp(-L/2)/(1-exp(-2L)).
    k=z2/(1-z**8)
    # exact real pole comparison ||R_L - 2 J_L|| <= 2 L(cosh(L/2)-1).
    # cosh(L/2)=(exp(L/2)+exp(-L/2))/2.
    err=L*(1/z2+z2-2)
    A=c+2*K+L*k-err
    assert L<ln2.lo              # no active prime power on the whole window
    assert k.hi<2               # exact positive mean moment cancels gamma rank-one
    assert A.lo>margin
    print('L=',str(L),'k_upper=',format(float(k.hi),'.12f'),
          'A_lower=',format(float(A.lo),'.12f'),
          'requested_margin=',str(margin))
    return A

A1=verify(Q(2,7),Q(1,50))
A2=verify(Q(7,24),Q(1,1000))
assert A2.lo < A1.lo
print('PASS: source-scalar rational pole-gamma cancellation for L<=2/7 and L<=7/24')
print('All signs from Fraction; decimal outputs informational only')
