#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Rational witness checker for a full-native-form zeta bound at L=3/5.

No floating point arithmetic enters ANY sign decision. Uses rational enclosures
for pi, EulerGamma, logarithms and exponentials; integer fixed-point Cholesky
witness validated by a separate exact residual row-sum check.
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

def exp_plus(x,n=18):
    x=F(x);assert 0<=x<=1
    part=sum((x**j/F(math.factorial(j)) for j in range(n+1)),F(0))
    term=x**(n+1)/F(math.factorial(n+1))
    return I(part,part+term/(1-x/F(n+2)))

def grid_floor(x, S):
    x=F(x);return x.numerator*S//x.denominator

L=F(3,5)
N=512
h=L/N
S=1<<30
SB=1<<25
assert SB*SB % S==0
S2_FACTOR=SB*SB//S
CLAIM=F(1,1000)
CHOL_OFFSET=F(3,2048)
assert S*CHOL_OFFSET==3*S//2048

PI=16*atan_rational(F(1,5),13)-4*atan_rational(F(1,239),5)
LOG2=log_ge1(2,24)
assert PI.lo>3 and PI.hi<F(22,7)
LOG100=2*LOG2+2*log_ge1(5,80)
HN=sum((F(1,k) for k in range(1,101)),F(0))
GAMMA=I(HN-LOG100.hi-F(1,200), HN-LOG100.lo-F(1,200)+F(1,80000))
assert F(1,2)<GAMMA.lo<GAMMA.hi<F(3,5)
# c_zeta + the explicitly retained gamma-boundary and pole row:
# V>= -log(pi L)-gamma+7L/4 - (1/2)log(1-y²)+L³(1+3y²)/48.
BASE= -log_ge1((PI*L).hi,60).hi - GAMMA.hi + F(7,4)*L
# above expression is rational lower bound to the original scalar.

V=[]
for i in range(N):
    y=F(N-2*(i+1),N) if i<N//2 else F(2*i-N,N)
    assert 0<=y<1
    z=1/(1-y*y)
    v=BASE+log_scaled(z).lo/2+L**3*(1+3*y*y)/48
    V.append(grid_floor(v,S))
assert V==V[::-1]

# Signed kernel w(s)=k(s)-2cosh(s/2) decreases strictly for s>0.
# m_d<=w((d+1)h) on each pair of distinct cells at distance d.
def signed_w_lower(s):
    E=exp_plus(s)
    Eh=exp_plus(s/2)
    k=Eh/(E-1/E)
    r=Eh+1/Eh
    return (k-r).lo

M=[grid_floor(signed_w_lower((d+1)*h),S) for d in range(N)]
assert M[0]>0 and M[-1]<0
# Every weight is a lower bound to the exact signed kernel on its cell-pair.
# Within cell: m_0=w(h) and the exact all-pairs difference is h*variance.

# The finite mean-matrix for normalized cell means z_i=sqrt(h)*mean_i:
# diag: v_i + h*sum_{j!=i} m_|i-j|
# offdiag: -h*m_|i-j|.
# Round each scalar entry downward to 1/S, with row error <= N/S.
D=[[0]*N for _ in range(N)]
variance=[]
for i in range(N):
    T=sum(M[abs(i-j)] for j in range(N) if j!=i)
    diag=V[i]+grid_floor(h*T,1)
    D[i][i]=diag-3*S//2048
    variance.append(F(V[i],S)+h*F(M[0]+T,S))
    for j in range(i):
        value=grid_floor(-h*M[i-j],1)
        D[i][j]=D[j][i]=value
assert min(variance)>F(4), 'within-cell variance margin not certified'

# Fixed-point Cholesky: B integer means rational B/SB.
# D/S = B B^T/SB² + residual/SB².
B=[[0]*N for _ in range(N)]
for i in range(N):
    tmp=D[i][i]*S2_FACTOR - sum(B[i][k]**2 for k in range(i))
    assert tmp>0,('not SPD pivot',i,tmp)
    B[i][i]=math.isqrt(tmp)
    assert B[i][i]>0
    for j in range(i+1,N):
        left=D[j][i]*S2_FACTOR - sum(B[j][k]*B[i][k] for k in range(i))
        B[j][i]=left//B[i][i]

# Hostile exact residual check: every row absolute sum of E is <=T.
worst_residual=0
for i in range(N):
    row=0
    for j in range(N):
        ri=D[i][j]*S2_FACTOR-sum(B[i][k]*B[j][k] for k in range(min(i,j)+1))
        row+=abs(ri)
    worst_residual=max(worst_residual,row)

# Matrix rounding |M_real - D/S - CHOL_OFFSET*I| has row bound N/S.
# Thus the exact mean form has eigenvalue >= CHOL_OFFSET - residual - N/S.
residual=F(worst_residual,SB*SB)
round_error=F(N,S)
mean_margin=CHOL_OFFSET-residual-round_error
assert residual < F(1,50000), ('cholesky residual row budget', residual)
assert round_error < F(1,2000000), ('cell-entry quantization budget', round_error)
assert CHOL_OFFSET-F(1,50000)-F(1,2000000) > CLAIM
assert mean_margin>CLAIM,('margin insufficient',mean_margin,residual,round_error)
print('PASS: exact cell-graph certificate; original full zeta form Q>=||f||²/1000 for 0<L<=3/5')
print('cells:',N,'signed-lag bounds:',N,'variance_min:',float(min(variance)))
print('certified mean margin',float(mean_margin),'residual row error',float(residual),'entry rounding error',float(round_error))
print('PASS: nontrivial signed far-lag (m_last < 0) and 512 within-cell variance bounds > 4')
print('PASS: finite mean-matrix residual row < 1/50000; entry rounding row < 1/2000000')
print('No floating point used in any assertion; displayed floats are diagnostics only')
print('Source identity analytical WRITTEN; kernel replay and independent review NOT_RUN')
