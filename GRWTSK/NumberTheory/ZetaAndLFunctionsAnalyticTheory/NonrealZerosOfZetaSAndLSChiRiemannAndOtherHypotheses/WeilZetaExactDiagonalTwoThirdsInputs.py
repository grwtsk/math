#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact rational source-matrix generator for prime-free zeta at L=2/3.

Checks all archimedean/pole intervals and all 1024 within-cell variance
coefficients. Writes a deterministic integer matrix for the separate C++17
Cholesky residual verifier. No floating point arithmetic enters assertions.
"""
import math
from fractions import Fraction as F

if not __debug__:
    raise SystemExit("Run unoptimized Python: assertions are mandatory")

class I:
    __slots__=('lo','hi')
    def __init__(self, lo,hi=None):
        self.lo=F(lo); self.hi=F(hi) if hi is not None else F(lo)
        assert self.lo<=self.hi
    def __add__(self,y):
        y=iv(y);return I(self.lo+y.lo,self.hi+y.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,y):return self+-iv(y)
    def __rsub__(self,y):return iv(y)-self
    def __mul__(self,y):
        y=iv(y); vv=[a*b for a in (self.lo,self.hi) for b in (y.lo,y.hi)]
        return I(min(vv),max(vv))
    __rmul__=__mul__
    def __truediv__(self,y):
        y=iv(y); assert not (y.lo<=0<=y.hi)
        return self*I(1/y.hi,1/y.lo)
    def __rtruediv__(self,y):return iv(y)/self

def iv(x):return x if isinstance(x,I) else I(x)

def atan_rational(z,n):
    z=F(z);assert 0<=z<1
    p=sum(((-1)**j*z**(2*j+1)/F(2*j+1) for j in range(n)),F(0))
    e=z**(2*n+1)/F(2*n+1)
    return I(p,p+e) if n%2==0 else I(p-e,p)

def log_ge1(x,n=22):
    x=F(x);assert x>=1
    u=(x-1)/(x+1)
    p=2*sum((u**(2*j+1)/F(2*j+1) for j in range(n)),F(0))
    e=2*u**(2*n+1)/(F(2*n+1)*(1-u*u))
    return I(p,p+e)

def log_scaled(x,n=22):
    x=F(x);assert x>=1
    steps=0
    while x>=2:
        x/=2;steps+=1
    return log_ge1(x,n)+steps*LOG2

def exp_plus(x,n=14):
    x=F(x);assert 0<=x<=1
    part=sum((x**j/F(math.factorial(j)) for j in range(n+1)),F(0))
    term=x**(n+1)/F(math.factorial(n+1))
    return I(part,part+term/(1-x/F(n+2)))

def grid_floor(x, S):
    x=F(x);return x.numerator*S//x.denominator

L=F(2,3)
N=1024
h=L/N
S=1<<30
SB=1<<25
assert SB*SB % S==0
S2_FACTOR=SB*SB//S
CLAIM=F(1,6000)
CHOL_OFFSET=F(240000,S)
assert S*CHOL_OFFSET==240000

PI=16*atan_rational(F(1,5),13)-4*atan_rational(F(1,239),5)
LOG2=log_ge1(2,24)
assert PI.lo>3 and PI.hi<F(22,7)
LOG100=2*LOG2+2*log_ge1(5,80)
HN=sum((F(1,k) for k in range(1,101)),F(0))
GAMMA=I(HN-LOG100.hi-F(1,200), HN-LOG100.lo-F(1,200)+F(1,80000))
assert F(1,2)<GAMMA.lo<GAMMA.hi<F(3,5)
assert LOG2.lo>L, "true source prime inventory must be empty"
# Exact physical diagonal of the ORIGINAL gamma+two-pole source:
# K(t)=1/2 log[(e^(t/2)+1)/(e^(t/2)-1)] + pi/4
#        -atan[(e^(t/2)-1)/(e^(t/2)+1)]
# V_L(x)=c_zeta+K(x)+K(L-x)+4(sinh(x/2)+sinh((L-x)/2)).
# The pi/2 constants cancel EXACTLY; no coarse logarithmic lower envelope.
# V_L is convex and symmetric, so its minimum on each cell is at the point
# of that cell closest to the support midpoint.

LOG_PI=log_scaled(PI.hi,24)
C_NO_PI=-LOG_PI.hi-GAMMA.hi-3*LOG2.hi

def atan_interval(t, n=11):
    t=iv(t);assert 0<=t.lo<=t.hi<1
    return I(atan_rational(t.lo,n).lo,atan_rational(t.hi,n).hi)

def true_potential_lower(x):
    x=F(x)
    assert 0 < x <= L/2
    ans=I(C_NO_PI)
    for t in (x,L-x):
        E=exp_plus(t/2)
        ratio=(E+1)/(E-1)
        u=(E-1)/(E+1)
        # Exact source K(t) with its parity pi/4 canceled.
        KwithoutPi=I(log_scaled(ratio.lo,20).lo, log_scaled(ratio.hi,20).hi)/2-atan_interval(u,11)
        sinh=(E-1/E)/2
        ans=ans+KwithoutPi+4*sinh
    return ans.lo

V=[None]*N
for i in range(N//2):
    x=(i+1)*h
    assert 0 < x <= L/2
    vi=grid_floor(true_potential_lower(x),S)
    V[i]=V[N-1-i]=vi
    if i%128==0:print("V progress",i,flush=True)
assert V==V[::-1]

# Signed kernel w(s)=k(s)-2cosh(s/2) decreases strictly for s>0.
# m_d<=w((d+1)h) on each pair of distinct cells at distance d.
def signed_w_lower(s):
    E=exp_plus(s)
    Eh=exp_plus(s/2)
    k=Eh/(E-1/E)
    r=Eh+1/Eh
    return (k-r).lo

M=[]
for d in range(N):
    M.append(grid_floor(signed_w_lower((d+1)*h),S))
    if d%128==0:print("M progress",d,flush=True)
assert M[0]>0 and M[-1]<0
# Every weight is a lower bound to the exact signed kernel on its cell-pair.
# Within cell: m_0=w(h) and the exact all-pairs difference is h*variance.

# The finite mean-matrix for normalized cell means z_i=sqrt(h)*mean_i:
# diag: v_i + h*sum_{j!=i} m_|i-j|
# offdiag: -h*m_|i-j|.
# Round each scalar entry downward to 1/S, with row error <= N/S.
D=[[0]*N for _ in range(N)]
variance=[]
Mprefix=[0]
for d in range(1,N):Mprefix.append(Mprefix[-1]+M[d])
offdiag=[0]+[grid_floor(-h*M[d],1) for d in range(1,N)]
for i in range(N):
    T=Mprefix[i]+Mprefix[N-1-i]
    diag=V[i]+grid_floor(h*T,1)
    D[i][i]=diag-240000
    variance.append(F(V[i],S)+h*F(M[0]+T,S))
    for j in range(i):
        D[i][j]=D[j][i]=offdiag[i-j]
assert min(variance)>F(4), 'within-cell variance margin not certified'

# Exact dyadic matrix certificate inputs, serialized as signed decimal integers.
# This is a deterministic derived witness. An independent C++ integer verifier
# checks the Cholesky construction and FULL residual rather than trusting this program.
from pathlib import Path
import sys
out=Path(sys.argv[1] if len(sys.argv)>1 else 'WeilZetaExactDiagonalTwoThirds.matrix')
assert N==1024 and S==(1<<30) and SB==(1<<25) and CLAIM==F(1,6000)
assert min(variance)>F(4)
assert M[-1]<0
assert N/S < F(1,1000000)
assert CHOL_OFFSET-F(1,25000)-F(1,1000000)>CLAIM
with out.open('w',encoding='ascii') as fd:
    fd.write(f'{N} {S} {SB} 240000\n')
    for row in D:
        assert len(row)==N
        fd.write(' '.join(map(str,row))+'\n')
print('PASS: exact rational full-source gamma/pole inputs, 1024 variance bounds >4, negative far lag')
print('integer matrix:',out,'rows:',N,'columns:',N,'variance min (diagnostic only):',float(min(variance)))
print('Certified spectral budget: alpha - 1/25000 - 1/1000000 > 1/6000')
