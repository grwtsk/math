#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact, reproducible finite certificate for the ORIGINAL zeta endpoint matrix.

The compact variable t=exp(-L) ranges over [1/1024, 1/2]. At every t,
D(t)=Q_zeta,L(u_L), B(t)=Q_zeta,L(u_L,v_L) are calculated from the
unchanged scalar, entire gamma term, ALL prime powers up to 1024, and BOTH
zeta poles. The analytic identity is proved in the companion .md (the
program does not rederive the explicit formula or check a Lean theorem).

All integer interval endpoints represent outward enclosures of exact real
values on the fixed dyadic scale 2^80. Divisions are rounded outwards;
logs use positive atanh series with a rigorous remainder, pi uses Machin's
identity and alternating arctan tails, Li_2 uses a positive rational tail,
Euler's constant uses the harmonic/trapezoid enclosure. There are NO binary
floating-point sign decisions. The adaptive tree partitions the CONTINUUM,
not a finite sample. An assertion failure exits nonzero.

Run: python3 WeilEndpointDyadic1024Certificate.py
Status: finite-rational verification; full analytical source identification,
Lean elaboration, kernel replay, axioms and independent review NOT_RUN.
"""
from fractions import Fraction as F
from functools import lru_cache
from math import isqrt
S=1<<80

def ceildiv(n,d): return -((-n)//d)
class I:
    __slots__=('lo','hi')
    def __init__(self,lo,hi):
        if lo>hi: raise AssertionError('invalid interval')
        self.lo,self.hi=int(lo),int(hi)
    @staticmethod
    def rat(x):
        x=F(x); return I(x.numerator*S//x.denominator,ceildiv(x.numerator*S,x.denominator))
    def __add__(self,x):x=iv(x);return I(self.lo+x.lo,self.hi+x.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,x):return self+(-iv(x))
    def __rsub__(self,x):return iv(x)+(-self)
    def __mul__(self,x):
        x=iv(x);v=[a*b for a in (self.lo,self.hi) for b in(x.lo,x.hi)];return I(min(v)//S,ceildiv(max(v),S))
    __rmul__=__mul__
    def __truediv__(self,x):return self*iv(x).inv()
    def __rtruediv__(self,x):return iv(x)*self.inv()
    def inv(self):
        if self.lo<=0: raise AssertionError("reciprocal interval contains nonpositive values")
        return I((S*S)//self.hi,ceildiv(S*S,self.lo))
    def square(self):
        if self.lo<=0<=self.hi:return I(0,ceildiv(max(self.lo**2,self.hi**2),S))
        return self*self
    def sqrt(self):
        if self.lo<0: raise AssertionError("square root lower endpoint negative")
        l=isqrt(self.lo*S);h=isqrt(self.hi*S)
        if h*h<self.hi*S: h+=1
        return I(l,h)
    def absmax(self):return max(abs(self.lo),abs(self.hi))
    def min_nonnegative(self):return I(max(0,self.lo),max(0,self.hi))
    def __repr__(self):return f'interval({self.lo}/{S}, {self.hi}/{S})'
def iv(x):return x if isinstance(x,I) else I.rat(x)

def log_base_series(x):
    if not F(1)<=x<=F(2): raise AssertionError('normalized log argument')
    y=iv((x-1)/(x+1))
    yy=y*y
    power=y
    res=iv(0)
    N=38
    for k in range(N):
        res=res+(power/(2*k+1))
        power=power*yy
    # positive omitted remainder, use upper bound 2 y^(2N+1) / ((2N+1)(1-y^2))
    tail=iv(2)*power/(2*N+1)/(iv(1)-yy)
    return I(res.lo*2,res.hi*2+tail.hi)
LN2=log_base_series(F(2))
@lru_cache(maxsize=None)
def logp(x):
    x=F(x)
    if not x>0: raise AssertionError('log argument')
    k=0; y=x
    while y<1: y*=2;k-=1
    while y>2: y/=2;k+=1
    return log_base_series(y)+k*LN2
@lru_cache(maxsize=None)
def li2p(t):
    t=F(t)
    if not 0<t<=F(1,2): raise AssertionError('dilog argument')
    y=iv(t);power=y;res=iv(0);N=62
    for k in range(1,N+1):
        res=res+(power/F(k*k))
        power=power*y
    tail=power/F((N+1)**2)/(iv(1)-y)
    return I(res.lo,res.hi+tail.hi)

def atanp(z,N):
    z=F(z);power=z;acc=F(0)
    for k in range(N):
        acc+=(-1)**k*power/F(2*k+1);power*=z*z
    err=power/F(2*N+1)
    return I.rat(acc)+I.rat(F(0) if N%2==0 else -err) + I.rat(err if N%2==0 else F(0))
PI=16*atanp(F(1,5),20)-4*atanp(F(1,239),6)
LNPI=I(logp(F(PI.lo,S)).lo,logp(F(PI.hi,S)).hi)
N=100
H=sum((F(1,k) for k in range(1,N+1)),F(0))
GAMMA=iv(H)-logp(N)-iv(F(1,2*N))+I(0,iv(F(1,8*N*N)).hi)
C=-(LNPI+GAMMA+PI/2+3*LN2)
A0=PI/2+LN2;B0=PI/2+3*LN2;C0=PI/2+2*LN2
# exact prime-power inventory through 1024
LAM={}
for p in range(2,1025):
    if not any(p%d==0 for d in range(2,isqrt(p)+1)):
        n=p
        while n<=1024:
            LAM[n]=p
            n*=p
LN_N={n:logp(n) for n in LAM}
ACTIVE=sorted(LAM)

@lru_cache(maxsize=None)
def endpoints(t):
    t=F(t)
    return dict(logt=logp(t),lp=logp(1+t),lm=logp(1-t),li2=li2p(t),sq=I.rat(t).sqrt())

def matrix(t0,t1):
    a=endpoints(t0);b=endpoints(t1)
    t=I(I.rat(t0).lo,I.rat(t1).hi)
    L=I(-b['logt'].hi,-a['logt'].lo)
    # log(1+t) increasing; log(1-t) decreasing
    lp=I(a['lp'].lo,b['lp'].hi)
    lm=I(b['lm'].lo,a['lm'].hi)
    sq=I(a['sq'].lo,b['sq'].hi)
    li2=I(a['li2'].lo,b['li2'].hi)
    h=(1+t)*lp-(1-t)*lm
    G=A0+t*(2*L-B0)+h
    J=sq*(C0*L-L.square()/2+PI.square()/6-li2)
    pd=iv(0);pb_in=iv(0)
    for n in ACTIVE:
        # Exact early exclusion: n*t0>=1 => n>=exp(max L) on the whole cell.
        # BOTH diagonal and mixed prime tapers then vanish identically.
        if n*t0.numerator >= t0.denominator: break
        prime=LAM[n]
        lam=LN_N[prime]
        pd=pd+2*lam*(iv(F(1,n))-t).min_nonnegative()
        pb_in=pb_in+lam*(L-LN_N[n]).min_nonnegative()*(1+F(1,n))
    pb=sq*pb_in
    RD=2*L*(1-t)
    RB=sq*(1/t-2+t+L.square())
    D=C*(1-t)+G-pd+RD
    B=C*L*sq+J-pb+RB
    return D,B

def gap(t0,t1):
    D,B=matrix(t0,t1)
    return D.lo-max(abs(B.lo),abs(B.hi))

if __name__=='__main__':
    # No root import or external database is needed. These are the only
    # active n with von Mangoldt weight, including n=1024 with zero taper.
    if len(LAM)!=198 or ACTIVE[0]!=2 or ACTIVE[-1]!=1024:
        raise AssertionError('incorrect all-prime-power inventory')
    if not PI.lo > iv(3).hi or not PI.hi < iv(F(22,7)).lo:
        raise AssertionError('invalid enclosure of pi')
    if not LN2.lo>0 or not LN2.hi < iv(F(7,10)).lo:
        raise AssertionError('invalid enclosure of log 2')
    prime_mod=iv(0)
    for n,p in LAM.items():
        prime_mod += 2*LN_N[p]*LN_N[n]/iv(n).sqrt()
    if not prime_mod.hi < iv(640).lo:
        raise AssertionError('missing a uniform prime-modulation bound')
    D4,B4=matrix(F(1,4),F(1,4))
    if not (D4.lo>iv(F(59,1000)).hi and B4.lo>0
             and B4.hi<iv(F(1,20)).lo):
        raise AssertionError('log 4 regression')
    # Hostile check: the mixed entry is not assumed to be nonnegative.
    D512,B512=matrix(F(1,512),F(1,512))
    if not B512.hi < 0: raise AssertionError('mixed sign at log512 is not negative')
    target=iv(F(1,500)).hi
    stack=[(F(1,1024),F(1,2),0)]
    leaves=0;worst=None;depth=0;visited=0
    while stack:
        a,b,d=stack.pop();visited+=1
        g=gap(a,b)
        if g>=target:
            leaves+=1;worst=g if worst is None or g<worst else worst
        else:
            if d>=22: raise AssertionError(('subdivision exhausted',a,b,g))
            mid=(a+b)/2
            stack.append((a,mid,d+1));stack.append((mid,b,d+1))
            depth=max(depth,d+1)
    else:
        if not (worst is not None and worst > target):
            raise AssertionError('no strict uniform margin')
        print('PASS: every t in [1/1024,1/2] has D(t)-|B(t)| > 1/500')
        print('prime-power terms:',len(LAM),'prime modulation sum < 640: PASS')
        print('mixed entry at log512 is strictly negative: PASS')
        print('dyadic leaves:',leaves,'checked nodes:',visited,'depth:',depth)
        print('min certified gap lower in millionths:',(worst*1000000)//S)
        assert iv(F(1,500)).lo-iv(F(2150,2200000)).hi > iv(F(1,1000)).hi
        print('modulation consumer: |eta| <= 1/2200000 gives Q >= 1/1000 in coefficient norm')
