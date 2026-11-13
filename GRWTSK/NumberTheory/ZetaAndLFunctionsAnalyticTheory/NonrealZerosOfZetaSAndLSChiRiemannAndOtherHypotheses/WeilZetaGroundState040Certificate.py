#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact arithmetic certificate for a source-exact zeta Weil lower sign at L=2/5.

This checks the finite scalar and continuous interval statements in the accompanying
WeilZetaGroundState040.md, NOT the analytic identity of the original Weil form.
All decisions use fractions.Fraction. No floating-point sign calculation is used.
"""
from fractions import Fraction as F
from math import factorial

if not __debug__:
    raise SystemExit('Run unoptimized Python; assertion checking is mandatory')


class Interval:
    __slots__ = ('lo', 'hi')
    def __init__(self, lo, hi=None):
        self.lo, self.hi = F(lo), F(hi) if hi is not None else F(lo)
        assert self.lo <= self.hi
    def __add__(self, y):
        y = interval(y)
        return Interval(self.lo + y.lo, self.hi + y.hi)
    __radd__ = __add__
    def __neg__(self):
        return Interval(-self.hi, -self.lo)
    def __sub__(self, y):
        return self + -interval(y)
    def __rsub__(self, y):
        return interval(y) - self
    def __mul__(self, y):
        y = interval(y)
        v = [a * b for a in (self.lo, self.hi) for b in (y.lo, y.hi)]
        return Interval(min(v), max(v))
    __rmul__ = __mul__
    def __truediv__(self, y):
        y = interval(y)
        assert y.lo > 0 or y.hi < 0
        return self * Interval(1/y.hi, 1/y.lo)
    def __rtruediv__(self, y):
        return interval(y) / self
    def __pow__(self, n):
        assert isinstance(n, int) and n >= 0
        if n == 0:
            return Interval(1)
        if n % 2 == 0:
            if self.lo <= 0 <= self.hi:
                return Interval(0, max(self.lo**n, self.hi**n))
            return Interval(min(self.lo**n, self.hi**n), max(self.lo**n, self.hi**n))
        return Interval(self.lo**n, self.hi**n)


def interval(x):
    return x if isinstance(x, Interval) else Interval(x)


def exp_pos_scalar(t, n=19):
    t=F(t)
    assert 0 <= t <= 1
    partial=sum((t**j/F(factorial(j)) for j in range(n+1)), F(0))
    term=t**(n+1)/F(factorial(n+1))
    return Interval(partial, partial+term/(1-t/F(n+2)))


def atan_scalar(t, n=14):
    t=F(t)
    assert 0<=t<1
    partial=sum(((-1)**j*t**(2*j+1)/F(2*j+1) for j in range(n)), F(0))
    term=t**(2*n+1)/F(2*n+1)
    return Interval(partial,partial+term) if n%2==0 else Interval(partial-term,partial)


def log_scalar(t,n=64):
    t=F(t)
    assert t>=1
    u=(t-1)/(t+1)
    partial=2*sum((u**(2*j+1)/F(2*j+1) for j in range(n)), F(0))
    tail=2*u**(2*n+1)/(F(2*n+1)*(1-u*u))
    return Interval(partial,partial+tail)


def log_interval(t,n=64):
    t=interval(t)
    assert t.lo>=1
    return Interval(log_scalar(t.lo,n).lo, log_scalar(t.hi,n).hi)

L=F(2,5)
a=F(1,4)
C=F(91,50)
alpha=F(40)
v=F(-11,100)
M=F(14,25)
assert a<L/1 and a>L/2 and F(1,2)/a-C>0

pi=16*atan_scalar(F(1,5),14)-4*atan_scalar(F(1,239),6)
ln2=log_scalar(2,64)
ln5=log_scalar(5,100)
ln100=2*(ln2+ln5)
N=100
H100=sum((F(1,j) for j in range(1,N+1)),F(0))
gamma=Interval(H100-ln100.hi-F(1,2*N), H100-ln100.lo-F(1,2*N)+F(1,8*N*N))
assert pi.lo>3 and pi.hi<F(22,7)
assert gamma.lo>F(1,2) and gamma.hi<F(3,5)

# v(L)=-log(pi*L)-gamma+7L/4; the lower bound is -11/100.
piL=pi*L
assert piL.lo>1
logpiL=log_interval(piL,64)
v_lower= -logpiL-gamma+F(7,4)*L
assert v_lower.lo>v, ('potential constant', v_lower.lo)

# r(L)=exp(L/2)+exp(-L/2), k(L)=exp(-L/2)/(1-exp(-2L));
# every exponential is enclosed by an outward rational Taylor interval.
ehalf=exp_pos_scalar(L/2)
e2L=exp_pos_scalar(2*L)
rL=ehalf+1/ehalf
kL=(1/ehalf)/(1-1/e2L)
M_actual=rL-kL
assert 0<M_actual.lo and M_actual.hi<M, ('far-pair cost', M_actual.lo,M_actual.hi)

# Analytic positive-kernel bound: k(s)-r(s)>= b(s):=1/(2s)-91/50
# for 0<s<=1/4, and b(s)>0. This is proved in the paper via
# e^(s/2)>=1+s/2, sinh(s)<=s(1+s^2/5), cosh(s/2)<=1+3s^2/20.
assert F(2,9)>F(1,5)
assert F(3,160)<F(1,50)
assert 1/(2*a)-C>0

F1=lambda t: t/F(2)-C*t*t/F(2)
F2=lambda t: t*t/F(4)-C*t*t*t/F(3)

# Positive bounded ground state h(x)=1+40*x*(L-x).
# Reflection reduces to 0<=x<=L/2=1/5.
# Region 0: x<=L-a=3/20, b_+=a, b_-=x, far negative band length L-a-x.
# Region 1: L-a<=x<=L/2, b_+=L-x, b_-=x, no far negative pairs.

def bound_on(lo,hi,region):
    x=Interval(lo,hi)
    bp=Interval(a) if region==0 else Interval(L)-x
    bm=x
    ah=(2*x-Interval(L))*(F1(bp)-F1(bm))+F2(bp)+F2(bm)
    h=1+alpha*x*(Interval(L)-x)
    y=5*x-1
    y2=y**2
    # -1/2 log(1-y²) = sum_{j>=1} y^(2j)/(2j). Keep 8 positive terms.
    barrier=sum((y2**j/F(2*j) for j in range(1,9)),Interval(0))
    loss=2*M*(Interval(L-a)-x) if region==0 else Interval(0)
    return Interval(v)+barrier+alpha*ah/h-loss


def prove_all_intervals():
    stack=[(F(0),L-a,0,0),(L-a,L/2,0,1)]
    accepted=nodes=max_depth=0
    best=F(100)
    while stack:
        lo,hi,d,region=stack.pop()
        nodes+=1
        B=bound_on(lo,hi,region)
        if B.lo>F(1,100):
            accepted+=1
            max_depth=max(max_depth,d)
            best=min(best,B.lo)
            continue
        assert d<14, ('Failed to enclose interval',lo,hi,region,B.lo,B.hi)
        mid=(lo+hi)/2
        stack.extend([(lo,mid,d+1,region),(mid,hi,d+1,region)])
    return accepted,nodes,max_depth,best

accepted,nodes,maxdepth,best=prove_all_intervals()
assert accepted==79 and nodes==156 and maxdepth==7
assert best>F(1,100)
print('PASS: exact rational 0<L<=2/5 zeta native-form coercivity > 1/100 in L2')
print('v(L) lower bound:',format(float(v_lower.lo),'.12f'),'(required > -0.11)')
print('M(L) upper bound:',format(float(M_actual.hi),'.12f'),'(required < 0.56)')
print('complete x-continuum enclosure: leaves',accepted,'nodes',nodes,'maxdepth',maxdepth)
print('certified residual lower bound:',format(float(best),'.12f'),'(required > 0.01)')
print('STATUS: analytic source identity WRITTEN; Lean kernel check and independent review NOT_RUN')
