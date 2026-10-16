#!/usr/bin/env python3
"""Exact source-bound Vaughan decomposition and Green-tail energy evaluation.

Uses the unchanged inherited integer interval primitive.  No floating-point
acceptance, no stochastic models, no asymptotic inference from finite checks.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as F
from pathlib import Path
from array import array
import argparse, hashlib, json, math, sys
sys.path.insert(0, str(Path(__file__).resolve().parent / 'inputs'))
from green_discrepancy import I, ZERO, ONE, TWO, SCALE, log_int, source_energy

MAX_X = 1 << 18
Form = dict[int,int]

def need(ok: bool, message: str) -> None:
    if not ok:
        raise ValueError(message)

def add_term(f: Form, p: int, c: int) -> None:
    if c:
        f[p] = f.get(p,0)+c
        if f[p] == 0:
            del f[p]

def add_forms(a: Form,b: Form) -> Form:
    c=dict(a)
    for p,e in b.items(): add_term(c,p,e)
    return c

def scale_form(a: Form,k: int) -> Form:
    return {p:e*k for p,e in a.items() if e*k}

def spf_table(n: int) -> array:
    need(1 <= n <= 2*MAX_X, 'factor-table range')
    spf=array('I', range(n+1))
    spf[1]=1
    for p in range(2,math.isqrt(n)+1):
        if spf[p]==p:
            for m in range(p*p,n+1,p):
                if spf[m]==m: spf[m]=p
    return spf

def factor(n: int, spf: array) -> Form:
    need(1 <= n < len(spf), 'positive factorization input')
    out: Form={}
    while n>1:
        p=int(spf[n]); e=0
        while n%p==0: n//=p; e+=1
        out[p]=e
    return out

def mobius_from_factor(f: Form) -> int:
    if any(e>1 for e in f.values()): return 0
    return -1 if len(f)%2 else 1

def evaluate(f: Form) -> I:
    z=ZERO
    for p,e in f.items(): z=z+log_int(p).scale(e)
    return z

def interval_abs(a: I) -> I:
    return I(0 if a.lo<=0<=a.hi else min(abs(a.lo),abs(a.hi)),
             max(abs(a.lo),abs(a.hi)))

def intersection(a:I,b:I,label:str) -> I:
    need(a.overlaps(b), label+' enclosures disagree')
    return I(max(a.lo,b.lo),min(a.hi,b.hi))

@dataclass
class ArithmeticModel:
    limit: int
    cutoff: int
    spf: array
    mu: list[int]
    small_factors: list[Form]
    b: array

    @classmethod
    def make(cls,limit:int,q:int) -> 'ArithmeticModel':
        need(1<=q<=limit<=2*MAX_X,'model bounds')
        spf=spf_table(limit)
        sf=[{}]+[factor(d,spf) for d in range(1,q+1)]
        mu=[0]+[mobius_from_factor(sf[d]) for d in range(1,q+1)]
        b=array('i',[0])*(limit+1)
        for d in range(1,q+1):
            if mu[d]:
                for n in range(d,limit+1,d): b[n]+=mu[d]
        return cls(limit,q,spf,mu,sf,b)

    def forms(self,n:int) -> tuple[Form,Form,Form]:
        """Independent actual Type-I and Type-II coefficient constructions.

        I = mu_<=q * log - mu_<=q * Lambda_<=q * 1.
        II = Lambda_>q * (epsilon - mu_<=q * 1).
        All equalities are checked in integer prime-log coordinates BEFORE logs.
        """
        need(1<=n<=self.limit,'coefficient range')
        f=factor(n,self.spf)
        first=scale_form(f,int(self.b[n]))
        for d in range(1,self.cutoff+1):
            if self.mu[d] and n%d==0:
                for p,e in self.small_factors[d].items():
                    add_term(first,p,-self.mu[d]*e)
        small:Form={}; second:Form={}
        for p,e in f.items():
            power=1
            for k in range(1,e+1):
                power*=p
                r=n//power
                if power<=self.cutoff:
                    add_term(small,p,int(self.b[r]))
                else:
                    add_term(second,p,int(r==1)-int(self.b[r]))
        type_i=add_forms(first,scale_form(small,-1))
        literal={next(iter(f)):1} if len(f)==1 else {}
        small_lambda=literal if n<=self.cutoff else {}
        need(add_forms(add_forms(type_i,second),small_lambda)==literal,
             f'Vaughan coefficient identity failed at {n}')
        if n>self.cutoff and len(f)==1 and next(iter(f.values()))==1:
            need(second=={},'prime Type-II coefficient must vanish')
        return type_i,second,literal

    def density(self,X:int) -> tuple[F,I,I]:
        """Type-I main density (a log(u/X)+b)/u and exact coefficient budget."""
        q=self.cutoff
        a=sum((F(self.mu[d],d) for d in range(1,q+1)),F(0))
        lgX=log_int(X)
        b=ZERO; small_recip=ZERO
        psi=ZERO
        for m in range(2,q+1):
            f=self.small_factors[m]
            if len(f)==1:
                p=next(iter(f)); small_recip=small_recip+log_int(p).div(m)
                psi=psi+log_int(p)
        for d in range(1,q+1):
            if self.mu[d]:
                b=b+(lgX-evaluate(self.small_factors[d])).div(d).scale(self.mu[d])
        b=b-small_recip*I.rat(a.numerator,a.denominator)
        # Sum |c_l| after ALL small-divisor cancellations, not before.
        small_cf:dict[int,Form]={}
        for d in range(1,q+1):
            if not self.mu[d]: continue
            for m in range(2,q+1):
                f=self.small_factors[m]
                if len(f)==1:
                    add_term(small_cf.setdefault(d*m,{}),next(iter(f)),self.mu[d])
        budget=ZERO
        for d in range(1,q+1):
            if self.mu[d]: budget=budget+lgX-evaluate(self.small_factors[d])
        for cf in small_cf.values(): budget=budget+interval_abs(evaluate(cf))
        need(budget.hi<= (lgX.scale(q)+psi.scale(q)).hi,
             'cancelled Type-I budget exceeds triangle allowance')
        return a,b,budget


def moments_log() -> list[I]:
    """J_k=integral_0^1 log(1+t)^k dt, k=0,...,4."""
    l=log_int(2); powers=[ONE]
    for _ in range(4): powers.append(powers[-1]*l)
    out=[]
    for k in range(5):
        p=ZERO
        for j in range(k+1):
            p=p+powers[j].scale(((-1)**(k-j))*math.factorial(k)//math.factorial(j))
        # integral y=1..2: 2 P_k(log2)-P_k(0)
        out.append(p.scale(2)-I.rat(((-1)**k)*math.factorial(k)))
    return out

@dataclass
class EnergyAccumulator:
    """mu = sum w_i delta_ri + (a log(1+r)+b) dr/(1+r)."""
    a:I
    b:I
    mass:I=ZERO
    first:I=ZERO
    atomic:I=ZERO
    cross:I=ZERO
    count:int=0

    def __post_init__(self):
        self.l=log_int(2)
        self.c=self.a*self.l.square().div(2)+self.b*self.l
        self.last_r=-1
        self.abs_mass=ZERO

    def bg_integral_to(self,r:I,y:I,ly:I)->I:
        j1=y*ly-y+ONE
        j2=y*(ly.square()-ly.scale(2)+TWO)-TWO
        return self.c*r-self.b*j1-self.a*j2.div(2)

    def push(self,w:I,r:I,y:I,ly:I):
        self.atomic=self.atomic+w.square()*r+(w*self.first).scale(2)
        self.cross=self.cross+w*self.bg_integral_to(r,y,ly)
        self.mass=self.mass+w
        self.first=self.first+w*r
        self.abs_mass=self.abs_mass+interval_abs(w)
        self.count+=1

    def background(self,other:'EnergyAccumulator')->I:
        x=[self.c,-self.b,-self.a.div(2)]
        y=[other.c,-other.b,-other.a.div(2)]
        moments=moments_log()
        v=ZERO
        for j in range(3):
            for k in range(3): v=v+x[j]*y[k]*moments[j+k]
        return v

    def finish(self)->dict:
        m0=self.mass+self.c
        m1=self.first+self.a*((self.l.scale(2)-ONE)-self.l.square().div(2))+self.b*(ONE-self.l)
        tail=self.atomic+self.cross.scale(2)+self.background(self)
        E=m0.square()+tail
        need(E.hi>=0,'negative energy enclosure')
        E=I(max(0,E.lo),E.hi)
        return {'energy':E,'mass0':m0,'mass1':m1,'atomic_abs_mass':self.abs_mass,
                'event_count':self.count}

@dataclass
class CrossAccumulator:
    p:EnergyAccumulator
    q:EnergyAccumulator
    atomic:I=ZERO
    background_cross:I=ZERO

    def push_before(self,wp:I,wq:I,r:I,y:I,ly:I):
        self.atomic=self.atomic+wp*wq*r+wp*self.q.first+wq*self.p.first
        self.background_cross=self.background_cross+wp*self.q.bg_integral_to(r,y,ly)+wq*self.p.bg_integral_to(r,y,ly)

    def finish(self)->I:
        return ((self.p.mass+self.p.c)*(self.q.mass+self.q.c)+self.atomic+
                self.background_cross+self.p.background(self.q))


def report_values(d:dict)->dict:
    return {k:(v.report(18) if isinstance(v,I) else v) for k,v in d.items()}


def calculate(X:int)->dict:
    need(16<=X<=MAX_X and X&(X-1)==0,'X must be dyadic, 16 <= X <= 2^18')
    j=X.bit_length()-1; q=1<<(j//4)
    model=ArithmeticModel.make(2*X,q)
    a,b,budget=model.density(X)
    ai=I.rat(a.numerator,a.denominator)
    SI=EnergyAccumulator(-ai,-b)
    SII=EnergyAccumulator(ai,b-ONE)
    ST=EnergyAccumulator(ZERO,-ONE)
    cross=CrossAccumulator(SI,SII)
    lgX=log_int(X)
    identity_hash=hashlib.sha256()
    positive_ii=negative_ii=zero_ii=0
    for n in range(X+1,2*X+1):
        fi,fii,fl=model.forms(n)
        identity_hash.update(json.dumps([n,sorted(fi.items()),sorted(fii.items()),sorted(fl.items())],separators=(',',':')).encode()+b'\n')
        # All three are evaluated independently from their proven formal-log forms.
        wi=evaluate(fi).div(n); wii=evaluate(fii).div(n); wt=evaluate(fl).div(n)
        need((wi+wii).overlaps(wt),'evaluated source identity')
        r=I.rat(n-X,X); y=I.rat(n,X)
        ly=evaluate(factor(n,model.spf))-lgX
        cross.push_before(wi,wii,r,y,ly)
        SI.push(wi,r,y,ly); SII.push(wii,r,y,ly); ST.push(wt,r,y,ly)
        if fii=={}:zero_ii+=1
        elif wii.lo>0:positive_ii+=1
        elif wii.hi<0:negative_ii+=1
    pi,p2,pt=SI.finish(),SII.finish(),ST.finish()
    inner=cross.finish()
    need((pi['energy']+p2['energy']+inner.scale(2)).overlaps(pt['energy']),
         'complete mixed-energy reconstruction')
    measured_budget=budget.square().scale(2).div(X*X)
    need(pi['energy'].hi <= measured_budget.lo,'Type-I source exceeds explicit lattice budget')
    need(measured_budget.hi < I.rat(17,X).lo,'universal Type-I budget not certified')
    reference=source_energy(X)
    rr=reference['augmented_energy']
    old=I(int(rr['lower_integer']),int(rr['upper_integer']))
    pt['energy']=intersection(pt['energy'],old,'unchanged original source')
    need(pt['energy'].hi <=(p2['energy'].scale(2)+I.rat(34,X)).lo,
         'return from Type-II energy')
    need(p2['energy'].hi <=(pt['energy'].scale(2)+I.rat(34,X)).lo,
         'reverse energy return')
    return {
      'X':X,'cutoff_U':q,'cutoff_V':q,'coefficient_count_checked':X,
      'coefficient_form_sha256':identity_hash.hexdigest(),
      'main_density_log_coefficient':f'{a.numerator}/{a.denominator}',
      'main_density_constant':b.report(18),
      'type_I':report_values(pi),'type_II':report_values(p2),'original':report_values(pt),
      'mixed_inner_product':inner.report(18),
      'explicit_type_I_energy_budget':measured_budget.report(18),
      'universal_type_I_energy_budget':f'17/{X}',
      'type_II_coefficient_sign_counts':{'positive':positive_ii,'negative':negative_ii,'exact_zero':zero_ii},
      'original_source_comparison':'INDEPENDENT_FORMULA_ENCLOSURES_INTERSECT',
      'scope':'Finite exact interval calculation. No all-scale Type-II bound or RH claim.'
    }


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    ap.add_argument('--min-exponent',type=int,default=4);ap.add_argument('--max-exponent',type=int,default=14)
    args=ap.parse_args()
    need(4<=args.min_exponent<=args.max_exponent<=18,'exponent range')
    need(not args.out.exists(),'exclusive output required')
    out={'schema':'actual-vaughan-tail/v1','bits':224,'log_terms':60,'scales':[]}
    for j in range(args.min_exponent,args.max_exponent+1):
        out['scales'].append(calculate(1<<j)); print(f'checked X={1<<j}',file=sys.stderr,flush=True)
    args.out.parent.mkdir(parents=True,exist_ok=True)
    with args.out.open('x') as f:json.dump(out,f,indent=2);f.write('\n')

if __name__=='__main__': main()
