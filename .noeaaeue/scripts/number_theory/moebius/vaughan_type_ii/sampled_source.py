#!/usr/bin/env python3
"""Certified separated Mellin samples of the unchanged Vaughan source.

Standard library only. All acceptance uses integer-directed real/complex
intervals. The universal sample-tail theorem is a separate mathematical proof,
not a consequence of this finite run. No RH or Lean kernel acceptance is claimed.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
import argparse, hashlib, json, math, sys

ROOT=Path(__file__).resolve().parent
REPO_ROOT=ROOT.parents[4]
sys.path.insert(0,str(ROOT/'inputs'))
from green_discrepancy import I,ZERO,ONE,TWO,SCALE,ceildiv,log_int,source_energy
from vaughan_source import ArithmeticModel,EnergyAccumulator,evaluate,factor,need,intersection
MAX_EXPONENT=14
TRIG_TERMS=80


def inverse(x:I)->I:
    need(x.lo>0,'positive interval inversion required')
    return I(SCALE*SCALE//x.hi,ceildiv(SCALE*SCALE,x.lo))


def sqrt_interval(x:I)->I:
    need(x.lo>=0,'nonnegative square root required')
    lo=math.isqrt(x.lo*SCALE)
    hi=math.isqrt(x.hi*SCALE)
    if hi*hi<x.hi*SCALE:hi+=1
    return I(lo,hi)


def nonnegative(x:I,label:str)->I:
    need(x.hi>=0,'negative certified '+label)
    return I(max(0,x.lo),x.hi)


@lru_cache(None)
def atan_reciprocal(q:int)->I:
    need(q>=2,'atan calibration denominator')
    x=I.rat(1,q); x2=x*x; power=x; out=ZERO
    for j in range(120):
        term=power.div(2*j+1)
        out=out+term if j%2==0 else out-term
        power=power*x2
    error=I.rat(1,241*q**241)
    # 120 terms end with a negative term; next term is positive.
    return out+I(0,error.hi)


@lru_cache(None)
def pi_interval()->I:
    p=atan_reciprocal(5).scale(16)-atan_reciprocal(239).scale(4)
    need(p.lo>I.rat(157,50).hi and p.hi<I.rat(22,7).lo,'Machin pi calibration')
    return p


@dataclass(frozen=True)
class C:
    re:I
    im:I
    def __add__(self,y:'C')->'C':return C(self.re+y.re,self.im+y.im)
    def __neg__(self)->'C':return C(-self.re,-self.im)
    def __sub__(self,y:'C')->'C':return self+(-y)
    def __mul__(self,y:'C')->'C':
        return C(self.re*y.re-self.im*y.im,self.re*y.im+self.im*y.re)
    def times(self,x:I)->'C':return C(self.re*x,self.im*x)
    def conjugate(self)->'C':return C(self.re,-self.im)
    def norm2(self)->I:return self.re.square()+self.im.square()
    def inv(self)->'C':return self.conjugate().times(inverse(self.norm2()))
    def overlaps(self,y:'C')->bool:return self.re.overlaps(y.re) and self.im.overlaps(y.im)
    def report(self)->dict:return {'real':self.re.report(24),'imaginary':self.im.report(24)}

CZERO=C(ZERO,ZERO)
CONE=C(ONE,ZERO)


def cis_minus(theta:I)->C:
    """Enclose exp(-i theta) with interval range reduction and Taylor bounds."""
    p=pi_interval()
    # Any chosen integer multiple is valid. Check the resulting interval size.
    pm=(p.lo+p.hi)//2; tm=(theta.lo+theta.hi)//2
    multiple=(tm+pm)//(2*pm)
    x=theta-p.scale(2*multiple)
    need(max(abs(x.lo),abs(x.hi))<=4*SCALE,'trigonometric reduction escaped [-4,4]')
    x2=x*x; ct=ONE; st=x; co=ONE; si=x
    for j in range(1,TRIG_TERMS):
        ct=-(ct*x2).div((2*j-1)*(2*j)); co=co+ct
        st=-(st*x2).div((2*j)*(2*j+1)); si=si+st
    # Lagrange remainder for the real sine/cosine polynomials on [-4,4].
    ec=I.rat(4**(2*TRIG_TERMS),math.factorial(2*TRIG_TERMS))
    es=I.rat(4**(2*TRIG_TERMS+1),math.factorial(2*TRIG_TERMS+1))
    co=co+I(-ec.hi,ec.hi);si=si+I(-es.hi,es.hi)
    # Known global range, not a numerical normalization.
    co=I(max(-SCALE,co.lo),min(SCALE,co.hi))
    si=I(max(-SCALE,si.lo),min(SCALE,si.hi))
    return C(co,-si)


def ground_centers(m0:I,m1:I)->tuple[I,I]:return m0-m1,m1


def background_sample(k:int,a:I,b:I)->C:
    h=log_int(2); rt=sqrt_interval(TWO)
    t=(pi_interval()*inverse(h)).scale(k)
    z=C(I.rat(1,2),-t); iz=z.inv(); iz2=iz*iz
    endpoint=rt.scale(-1 if k%2 else 1)
    L0=iz.times(endpoint-ONE)
    L1=iz.times(endpoint*h)-iz2.times(endpoint-ONE)
    return L1.times(a)+L0.times(b)


def canonical_step(digest,n,fi,fii,fl):
    line=json.dumps([n,sorted(fi.items()),sorted(fii.items()),sorted(fl.items())],separators=(',',':'))
    digest.update(line.encode()+b'\n')


def readI(row:dict)->I:
    need(int(row['denominator'])==SCALE,'changed source precision')
    return I(int(row['lower_integer']),int(row['upper_integer']))


def compute_row(X:int,previous:dict|None=None,direct:bool=False)->dict:
    need(isinstance(X,int) and not isinstance(X,bool) and X>=16 and
         X&(X-1)==0 and X<=1<<MAX_EXPONENT,'supported dyadic source required')
    J=X.bit_length()-1;q=1<<(J//4);K=math.isqrt(X)
    if K*K<X:K+=1
    model=ArithmeticModel.make(2*X,q)
    ar,bx,_=model.density(X);a=I.rat(ar.numerator,ar.denominator);b=bx-ONE
    acc=EnergyAccumulator(a,b); atoms=[CZERO for _ in range(K+1)]
    check_indices=sorted(set([0,1,2,K])) if direct else []
    direct_atoms={k:CZERO for k in check_indices}
    lgX=log_int(X);h=log_int(2);alpha=pi_interval()*inverse(h)
    digest=hashlib.sha256(); atom_count=0
    for n in range(X+1,2*X+1):
        fi,fii,fl=model.forms(n);canonical_step(digest,n,fi,fii,fl)
        factors_n=factor(n,model.spf)
        need(all(abs(c)<=q*factors_n.get(p,0) for p,c in fii.items()),
             'integer prime-log coefficient supremum bound')
        if not fii:continue
        w=evaluate(fii).div(n);y=I.rat(n,X)
        ly=evaluate(factor(n,model.spf))-lgX
        acc.push(w,y-ONE,y,ly);c=w*sqrt_interval(y);atom_count+=1
        phase=alpha*ly
        base=C(I.rat(-1),ZERO) if n==2*X else cis_minus(phase)
        power=CONE
        for k in range(K+1):
            atoms[k]=atoms[k]+power.times(c)
            if k in direct_atoms:
                trial=C(I.rat((-1)**k),ZERO) if n==2*X else cis_minus(phase.scale(k))
                direct_atoms[k]=direct_atoms[k]+trial.times(c)
            power=power*base
            # Unit-modulus multiplication is exact in the underlying expression.
            power=C(I(max(-SCALE,power.re.lo),min(SCALE,power.re.hi)),
                    I(max(-SCALE,power.im.lo),min(SCALE,power.im.hi)))
    Eparts=acc.finish();E=Eparts['energy'];m0=Eparts['mass0'];m1=Eparts['mass1']
    M=m0.square()+m1.square();G=nonnegative(E-M,'center-free energy')
    beta0,beta1=ground_centers(m0,m1);rt=sqrt_interval(TWO)
    total=ZERO;samples=[];bands={}
    for k in range(K+1):
        P=atoms[k]+background_sample(k,a,b)
        correction=beta0+rt.scale((-1)**k)*beta1
        P0=P-C(correction,ZERO)
        if k in direct_atoms:
            other=direct_atoms[k]+background_sample(k,a,b)-C(correction,ZERO)
            need(P0.overlaps(other),'direct frequency reexecution disagreed')
            P0=C(intersection(P0.re,other.re,'direct real'),intersection(P0.im,other.im,'direct imaginary'))
        t=alpha.scale(k);weight=inverse(I.rat(1,4)+t.square())
        term=P0.norm2()*weight
        total=total+term.scale(1 if k==0 else 2)
        band=-1 if k==0 else k.bit_length()-1
        bands[band]=bands.get(band,ZERO)+term.scale(1 if k==0 else 2)
        samples.append({'k':k,'tau':t.report(24),'P_ground':P0.report(),
                        'weighted_square':term.report(24)})
    S=nonnegative(total*inverse(h.scale(2)),'finite sampled energy')
    tail=nonnegative(G-S,'omitted sampled tail')
    packet=M+S
    original=readI(source_energy(X)['augmented_energy'])
    returned=M.scale(5).div(2)+S.scale(2)+I.rat(183,X)
    need(original.hi<returned.lo,'original arithmetic return')
    need(tail.hi<(I.rat(276,X)+M.div(K)).lo,'universal sampled tail check')
    need(packet.lo<=E.hi,'finite frame lower inequality')
    if previous is not None:
        # Reuse numerical source identity, not previous finite spectral evidence.
        need(E.overlaps(readI(previous['typeII_energy'])),'source energy differs from input')
        need(m0.overlaps(readI(previous['original_mass0'])),'source mass differs')
        need(m1.overlaps(readI(previous['original_mass1'])),'source first moment differs')
        need(digest.hexdigest()==previous['coefficient_form_sha256'],'source coefficient digest differs')
    return {'X':X,'q':q,'K':K,'independent_nonnegative_frequency_samples':K+1,
      'full_grid_sample_count':2*K+1,'coefficient_identities':X,'nonzero_typeII_atoms':atom_count,
      'formal_log_source_sha256':digest.hexdigest(),
      'bounded_coefficient_normalization':'a_n=v_q(n)*sqrt(X/n)/(q*log(2X)); |a_n|<=1',
      'integer_coefficient_supremum_checked':True,
      'source_mass0':m0.report(24),'source_mass1':m1.report(24),
      'physical_center_energy':M.report(24),'typeII_energy':E.report(24),
      'full_center_free_energy':G.report(24),'finite_sample_energy':S.report(24),
      'omitted_sample_tail':tail.report(24),'retained_packet':packet.report(24),
      'tail_allowance':(I.rat(276,X)+M.div(K)).report(24),
      'original_source_return':returned.report(24),'original_source_energy':original.report(24),
      'sample_bands':[{'band':j,'k_min':0 if j<0 else 1<<j,
        'k_max':0 if j<0 else min(K,(1<<(j+1))-1),
        'energy':(value*inverse(h.scale(2))).report(24)} for j,value in sorted(bands.items())],
      'direct_frequency_indices':check_indices,'previous_energy_and_moments_compared':previous is not None,
      'samples':samples}


def kernel_half_integer(y:F,z:F,m:int,periodic:bool=False)->F:
    """Exact full periodization at period 2 log 2; no truncation of images."""
    need(F(1)<=y<=F(2) and F(1)<=z<=F(2) and m>=0,'kernel domain')
    u,v=sorted((y,z)); N=2*m+1
    raw=u**(m+1)/(N*v**m)
    if not periodic:return raw
    image=(y**(m+1)/z**m+z**(m+1)/y**m)/(N*((1<<N)-1))
    return raw+image


def rational_quadratic(nodes:list[F],weights:list[F],m:int=0,periodic:bool=False)->F:
    need(len(nodes)==len(weights),'node/weight dimensions')
    return sum((a*b*kernel_half_integer(y,z,m,periodic)
                for y,a in zip(nodes,weights) for z,b in zip(nodes,weights)),F(0))


def rational_ground(nodes:list[F],weights:list[F])->tuple[list[F],list[F],F]:
    need(len(nodes)==len(weights),'node/weight dimensions')
    m0=sum(weights,F(0));m1=sum(((y-1)*a for y,a in zip(nodes,weights)),F(0))
    return nodes+[F(1),F(2)],weights+[-(m0-m1),-m1],m0*m0+m1*m1


def weighted_sample_sum(values:list[C])->I:
    need(bool(values),'at least the zero-frequency sample is required')
    h=log_int(2);alpha=pi_interval()*inverse(h);out=ZERO
    for k,value in enumerate(values):
        term=value.norm2()*inverse(I.rat(1,4)+alpha.scale(k).square())
        out=out+term.scale(1 if k==0 else 2)
    return out*inverse(h.scale(2))


def previous_rows()->dict[int,dict]:
    p=json.loads((REPO_ROOT/'.noeaaeue/evidence/NumberTheory/Moebius/VaughanTypeII/previous-centers.json').read_text())
    rows=p['rows']
    return {int(r['X']):r for r in rows}


def main()->None:
    pa=argparse.ArgumentParser(description=__doc__)
    pa.add_argument('--out',required=True,type=Path)
    pa.add_argument('--max-exponent',type=int,default=10)
    args=pa.parse_args();need(4<=args.max_exponent<=MAX_EXPONENT,'finite exponent range')
    args.out.parent.mkdir(parents=True,exist_ok=True)
    need(not args.out.exists(),'output already exists')
    prev=previous_rows();rows=[]
    for j in range(4,args.max_exponent+1):
        X=1<<j
        row=compute_row(X,prev.get(X),direct=X<=128)
        rows.append(row)
        print('completed',X,flush=True)
    report={'status':'FINITE_SEPARATED_MELLIN_SAMPLES_CHECKED',
      'max_exponent':args.max_exponent,'interval_bits':224,'trig_terms':TRIG_TERMS,
      'analytic_bound_status':'PAPER_PROOF_WITH_INHERITED_INPUTS',
      'all_scale_arithmetic_bound':'NOT_ESTABLISHED','kernel_checked':False,
      'source':{'window':'X<n<=2X','period':'2 log 2','frequency':'pi k / log 2',
                'grounding':'(m0-m1)delta_1+m1 delta_2','coefficient_identity':'unchanged Vaughan'},
      'coefficient_identities':sum(r['coefficient_identities'] for r in rows),
      'rows':rows}
    with args.out.open('x') as f:json.dump(report,f,indent=2,sort_keys=True);f.write('\n')

if __name__=='__main__':main()
