#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Source-bound rational certificate at L=3/4 for the actual zeta Weil form.

All real arithmetic sign tests use fractions.Fraction with explicit signed tails.
The n=2 prime overlap is retained OFF-DIAGONAL between exactly shifted, paired
edge cells. Its zero-mean remainder is bounded separately by Cauchy-Schwarz.
This generator certifies native source-derived finite bounds, not Lean or RH.
"""
import math
from fractions import Fraction as F
from pathlib import Path
import sys

if not __debug__:
    raise SystemExit('Unoptimized Python required: no disabled assertions')

class I:
    __slots__=('lo','hi')
    def __init__(self, lo,hi=None):
        self.lo=F(lo);self.hi=F(hi) if hi is not None else F(lo)
        assert self.lo<=self.hi
    def __add__(self,y):
        y=iv(y);return I(self.lo+y.lo,self.hi+y.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,y):return self+-iv(y)
    def __rsub__(self,y):return iv(y)-self
    def __mul__(self,y):
        y=iv(y);a=[t*u for t in (self.lo,self.hi) for u in (y.lo,y.hi)]
        return I(min(a),max(a))
    __rmul__=__mul__
    def __truediv__(self,y):
        y=iv(y);assert y.lo>0 or y.hi<0
        return self*I(1/y.hi,1/y.lo)
    def __rtruediv__(self,y):return iv(y)/self

def iv(x):return x if isinstance(x,I) else I(x)

def atan_rational(z,n=13):
    z=F(z);assert 0<=z<1
    p=sum(((-1)**j*z**(2*j+1)/F(2*j+1) for j in range(n)),F(0))
    e=z**(2*n+1)/F(2*n+1)
    return I(p,p+e) if n%2==0 else I(p-e,p)

def log_ge1(x,n=24):
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
    x=snap(x);assert 0<=x.lo<=x.hi<=1
    def exp_scalar(t):
        part=sum((t**j/F(math.factorial(j)) for j in range(n+1)),F(0))
        term=t**(n+1)/F(math.factorial(n+1))
        return I(part,part+term/(1-t/F(n+2)))
    return snap(I(exp_scalar(x.lo).lo,exp_scalar(x.hi).hi))

def atan_interval(t,n=11):
    t=snap(t);assert 0<=t.lo<=t.hi<1
    return snap(I(atan_rational(t.lo,n).lo,atan_rational(t.hi,n).hi))

def floor_grid(x,scale):
    x=F(x);return (x.numerator*scale)//x.denominator

Q=1<<48
def snap(x):
    x=iv(x)
    # Outward dyadic rounding, preserving every mathematically proven enclosure.
    return I(F(floor_grid(x.lo,Q),Q),F(-floor_grid(-x.hi,Q),Q))

L=F(3,4)
N=8192
NE=621
NM=N-2*NE
assert NM==6950 and NM%2==0
h0=L/N
S=1<<30
SB=1<<30
OFFSET=225000
CLAIM=F(1,6000)
PI=snap(16*atan_rational(F(1,5),13)-4*atan_rational(F(1,239),5))
LOG2=snap(log_ge1(2,24))
assert LOG2.lo>F(69,100) and LOG2.hi<L
assert log_ge1(3,36).lo>L
assert PI.lo>3 and PI.hi<F(22,7)
LOG100=2*LOG2+2*log_ge1(5,80)
HN=sum((F(1,j) for j in range(1,101)),F(0))
GAMMA=snap(I(HN-LOG100.hi-F(1,200),HN-LOG100.lo-F(1,200)+F(1,80000)))
assert F(1,2)<GAMMA.lo<GAMMA.hi<F(3,5)
LOG_PI=log_scaled(PI.hi,24)
C_NO_PI=-LOG_PI.hi-GAMMA.hi-3*LOG2.hi
# Three successive regions: (0,d), (d,s), (s,L), with s=log2, d=L-s.
# First/last regions have equal cell width and align EXACTLY under n=2 shift.
d=I(L)-LOG2
he=d/NE
hm=(2*LOG2-I(L))/NM
assert he.lo>0 and hm.lo>0
hmax=max(he.hi,hm.hi)
assert max(he.hi,hm.hi)/h0 < F(1001,1000)
assert N*hmax < F(4,5)
# 1/sqrt2 exact certified integer root brackets.
T=1<<60
root=math.isqrt(2*T*T)
sqrtInv=I(F(root,2*T),F(root+1,2*T))
assert sqrtInv.lo**2<F(1,2)<sqrtInv.hi**2
wprime=LOG2*sqrtInv
assert wprime.hi<F(1,2)
# Row coordinates each affine in log2; symmetry yields no source loss.
def width(i):return he if i<NE or i>=NE+NM else hm
def bound_upper(i):
    if i<NE:return (i+1)*he
    if i<NE+NM:return d+(i-NE+1)*hm
    return LOG2+(i-NE-NM+1)*he

def true_potential_lower(x):
    x=snap(x); assert 0<x.lo
    ans=I(C_NO_PI)
    for t in (x,I(L)-x):
        E=exp_plus(t/2)
        ratio=snap((E+1)/(E-1))
        u=snap((E-1)/(E+1))
        K=snap(I(log_scaled(ratio.lo,20).lo,log_scaled(ratio.hi,20).hi)/2-atan_interval(u,11))
        sh=snap((E-1/E)/2)
        ans=snap(ans+K+4*sh)
    return ans.lo

V=[0]*N
for i in range(N//2):
    xi=bound_upper(i)
    vl=true_potential_lower(xi)
    V[i]=V[N-1-i]=floor_grid(vl,S)
    if i%512==0:print('potential cells',i,'/',N//2,flush=True)
assert V==V[::-1]

def w_lower(t):
    t=snap(t)
    E=exp_plus(t)
    Eh=exp_plus(t/2)
    return snap(Eh/(E-1/E)-(Eh+1/Eh)).lo

# Global cell-width envelope: for i<j, b_j-a_i is the sum of exactly
# j-i+1 cell lengths, each <= hmax; w is strictly decreasing.  Hence
# m_d <= w((d+1)*hmax) <= w(b_j-a_i) for EVERY pair, including signed tails.
m=[floor_grid(w_lower((idx+1)*hmax),S) for idx in range(N)]
assert m[0]>0 and m[-1]<0
pfx=[0]
for idx in range(1,N):pfx.append(pfx[-1]+m[idx])

def sums(i,left,right):
    if i<left:return pfx[right-i]-pfx[left-i-1]
    if i>right:return pfx[i-left]-pfx[i-right-1]
    return pfx[i-left]+pfx[right-i]

def group(i):return 0 if i<NE or i>=NE+NM else 1

# Precompute entire signed source coeff table in one dimension; all m_d
# are rational DYADIC LOWER bounds to the actual w, not absolute values.
WIDTHMAX=F(0)
def certified_width(z):
    global WIDTHMAX
    z=iv(z)
    width=z.hi-z.lo
    assert width < F(1,S), ('uncontrolled interval-to-integer uncertainty',width)
    WIDTHMAX=max(WIDTHMAX,width)
    return z

OFF={}
for g1,g2 in [(0,0),(0,1),(1,1)]:
    h1,h2=(he if g1==0 else hm),(he if g2==0 else hm)
    factor=-(h1*h2)/h0
    OFF[g1,g2]=[0]+[floor_grid(certified_width(factor*F(m[k],S)).lo,S) for k in range(1,N)]
# For the matched edge mean pair, retain signed original n=2 coupling
# -2*(log2/sqrt2)*h_edge*Re(conj(mu_A)*mu_B) OFF-DIAGONALLY.
PAIR_DISTANCE=NE+NM
PAIR= floor_grid(certified_width(-(he*he/h0)*F(m[PAIR_DISTANCE],S)-(he/h0)*wprime).lo,S)

# Negative fractional rank-one fluctuation penalty is charged ONLY to
# the true two edge regions; no mean mass is thrown away.
DIAG=[]
variance=[]
for i in range(N):
    coeffE=sums(i,0,NE-1)+sums(i,NE+NM,N-1)
    coeffM=sums(i,NE,NE+NM-1)
    Ti=(he*coeffE+hm*coeffM)/S
    hi=width(i)
    di=(hi/h0)*(F(V[i],S)+Ti)
    DIAG.append(floor_grid(certified_width(di).lo,S)-OFFSET)
    vi=F(V[i],S)+hi*F(m[0],S)+Ti - (wprime if group(i)==0 else I(0))
    variance.append(vi.lo)
assert min(variance)>F(4), ('variance failure',min(variance))
# The exact original L2 mean norm is Σ h_i |mu_i|².
# In the normalization z_i=sqrt(h0)*mu_i it is Σ(h_i/h0)|z_i|².
# Thus M >= [max_i(h_i/h0)]*(1/6000)*I suffices; rigorously
# the ratio is <1001/1000, which is separately certified above.
assert F(OFFSET,S)-F(1,50000)-F(2*N,S) > F(1001,1000)*CLAIM

# Exact compact O(N) transport of the source-derived symmetric matrix.
# The checker reconstructs EVERY D_ij directly from the diagonal,
# three group-pair offdiagonal kernels and the truly aligned prime coupling.
# No giant generated matrix is required or trusted as an opaque input.
out=Path(sys.argv[1] if len(sys.argv)>1 else 'aligned_075_ledger.txt')
with out.open('w',encoding='utf8') as fd:
    fd.write(f'{N} {S} {SB} {OFFSET} {NE} {NM}\n')
    fd.write(' '.join(map(str,DIAG))+'\n')
    for group_pair in [(0,0),(0,1),(1,1)]:
        fd.write(' '.join(map(str,OFF[group_pair]))+'\n')
    fd.write(str(PAIR)+'\n')
print('PASS: generated aligned signed-prime coefficient ledger for 8192 native cells')
print('L:',L,'N:',N,'edge paired cells:',NE,'middle cells:',NM)
print('min variance (display only):',float(min(variance)))
print('max cell width ratio < 1001/1000: VERIFIED with Fraction')
print('max matrix-entry uncertainty <1/S: VERIFIED with Fraction; width diagnostic:', float(WIDTHMAX))
print('mean spectral budget with 2N/S rounding + residual <1/50000 exceeds (1001/1000)/6000')
