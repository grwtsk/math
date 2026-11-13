#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact-rational scalar audit for WFP-v1, a source-local first-prime Weil estimate.

This verifies only scalar inequalities used by the written analytical argument.
It does NOT kernel-check gamma/pole/prime source identities, nor prove RH/GRH.
All decisions use fractions.Fraction; decimal output is diagnostic only.
"""
from fractions import Fraction as F

if not __debug__:
    raise SystemExit('Disable optimization: assertions must execute')

class I:
    def __init__(self,lo,hi=None):
        self.lo=F(lo); self.hi=F(hi) if hi is not None else F(lo)
        assert self.lo<=self.hi
    def __add__(self,b):
        b=iv(b);return I(self.lo+b.lo,self.hi+b.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,b):return self+(-iv(b))
    def __rsub__(self,b):return iv(b)-self
    def __mul__(self,b):
        b=iv(b)
        a=[u*v for u in (self.lo,self.hi) for v in (b.lo,b.hi)]
        return I(min(a),max(a))
    __rmul__=__mul__
    def __truediv__(self,b):
        b=iv(b);assert b.lo>0 or b.hi<0
        return self*I(1/b.hi,1/b.lo)
    def __rtruediv__(self,b):return iv(b)/self
    def __repr__(self):return f'I({self.lo},{self.hi})'

def iv(x):return x if isinstance(x,I) else I(x)

def atan_scalar(z,n):
    z=F(z); assert 0<=z<1
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

def log_scalar(x,n):
    x=F(x);assert x>=1
    z=(x-1)/(x+1)
    s=2*sum((z**(2*k+1)/F(2*k+1) for k in range(n)),F(0))
    e=2*z**(2*n+1)/(F(2*n+1)*(1-z*z))
    return I(s,s+e)

def log(x,n):
    x=iv(x); assert x.lo>=1
    return I(log_scalar(x.lo,n).lo,log_scalar(x.hi,n).hi)

# Machin's exact identity for pi, alternating arctan series.
pi=16*atan_scalar(F(1,5),12)-4*atan_scalar(F(1,239),5)
l2=2*atanh_scalar(F(1,3),30)
l3=2*atanh_scalar(F(1,2),40)
l5=2*atanh_scalar(F(2,3),75)
lnpi=log(pi,70)
H100=sum((F(1,k) for k in range(1,101)),F(0))
ln100=2*(l2+l5)
# H_100-log(100)-1/200 < gamma_E < same + 1/80000.
gamma=I(H100-ln100.hi-F(1,200),H100-ln100.lo-F(1,200)+F(1,80000))

# Rigorous algebraic roots; two fixed, outward rational brackets.
sqrtinv=I(F(70710678,10**8),F(70710679,10**8))
assert sqrtinv.lo**2<F(1,2)<sqrtinv.hi**2
sqrt2=2*sqrtinv
assert pi.lo>3 and pi.hi<F(22,7)<4
assert gamma.hi<F(3,5)
assert l2.lo>F(2,3) and l2.hi+F(1,1000)<F(7,10)
assert (l5-l3).lo>F(1,2)  # log(5/3)>1/2
assert (l2*sqrtinv).hi<F(1,2)  # ln2/sqrt2 < 1/2
assert (sqrt2/3).hi<F(59,125)

c31=(l3-lnpi)-gamma+pi/2-3*l2
assert c31.lo>F(-5,4), ('c3,1 lower',c31)
# v(s) from the exactly derived odd-gamma rank-one potential.
ratio=3/(pi*l2)
assert ratio.lo>1
vstar=log(ratio,75)-gamma+pi/4-atan(sqrtinv,100)+l2*sqrt2/3
assert vstar.lo>F(239,1000), ('vstar',vstar)
assert vstar.lo-4*F(1,1000)>F(47,200)

# On the two newly active prime-overlap boundary strips,
# K_{3/2}(delta) > .5*log(4/delta)-pi/4 > 5/2.
# Since e<3, e^7<3^7=2187<4000=4/delta.
assert 3**7<4000 and F(-5,4)+F(5,2)-F(1,2)>F(47,200)+F(1,2)

# Rigorous left-Darboux upper sum on [0,1], 16 cells, for the
# reciprocal rank-one potential G=v+y²/2.
v=F(47,200); N=16
D=sum((1/(v+F(j*j,2*N*N)) for j in range(N)),F(0))/N
rho=F(59,125)*F(7,10)*D
assert rho<F(193,200), ('rho',rho)
assert (1-F(193,200))*v>F(1,125)

print('PASS WFP-v1: every nonprincipal primitive q>1, 0<L<=log2+1/1000')
print('verified scalar comparison: c_3,1>-5/4; v(log2)>239/1000')
print('gamma boundary loss dominates the newly active n=2 prime overlap')
print('rank-one rho < 193/200; all-complex-test margin >1/125 (WRITTEN source lemma)')
print('Darboux cells:',N,'rho upper:',format(float(rho),'.12f'))
print('linearized lower margin:',format(float((1-F(193,200))*v),'.12f'))
print('All inequality decisions: exact Fraction. Lean/kernel and analytic source-return: NOT_RUN.')
