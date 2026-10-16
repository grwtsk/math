#!/usr/bin/env python3
"""Exact finite algebra and rational-bound controls, NOT Lean or zeta-zero verification.

Uses SymPy for polynomial coefficients and a separate Fraction Gaussian-rational
arithmetic path for evaluation. Synthetic nodes are never represented as actual
zeta zeros. All acceptance checks remain active under python -O.
"""
from __future__ import annotations
import argparse
from collections import Counter
from dataclasses import dataclass
from fractions import Fraction as F
import hashlib
import json
from pathlib import Path
import platform
import sympy as sp

@dataclass(frozen=True)
class QI:
    re: F
    im: F = F(0)
    def __add__(self, other: QI) -> QI: return QI(self.re+other.re,self.im+other.im)
    def __sub__(self, other: QI) -> QI: return QI(self.re-other.re,self.im-other.im)
    def __mul__(self, other: QI) -> QI: return QI(self.re*other.re-self.im*other.im,self.re*other.im+self.im*other.re)
    def conj(self) -> QI: return QI(self.re,-self.im)
    def inv(self) -> QI:
        n=self.re*self.re+self.im*self.im
        if n==0: raise ValueError('zero Gaussian-rational denominator')
        return QI(self.re/n,-self.im/n)
    def sq(self) -> QI: return self*self
    def expr(self): return sp.Rational(self.re.numerator,self.re.denominator)+sp.I*sp.Rational(self.im.numerator,self.im.denominator)
    def norm_sq(self) -> F: return self.re*self.re+self.im*self.im

ZERO,ONE,I=QI(F(0)),QI(F(1)),QI(F(0),F(1))
def node_product(nodes: tuple[QI,...], z: QI) -> QI:
    ans=ONE
    for w in nodes: ans=ans*(z-w)*(z-w.conj())
    return ans

def data(r: QI, nodes: tuple[QI,...]):
    if r.im==0: raise ValueError('real target outside pair-normalization domain')
    if r in nodes or r.conj() in nodes: raise ValueError('target or conjugate in cancellation set')
    q=node_product(nodes,r)
    d=I*q.inv()
    return q,d

def eval_pair(r: QI,nodes: tuple[QI,...],z: QI) -> QI:
    _,d=data(r,nodes)
    return node_product(nodes,z)*(QI(d.re)+QI(d.im/r.im)*(z-QI(r.re)))

def polynomial(r: QI,nodes: tuple[QI,...]):
    _,d=data(r,nodes)
    x=sp.Symbol('x')
    h=sp.prod((x-w.expr())*(x-w.conj().expr()) for w in nodes)
    p=sp.Poly(sp.expand(h*(sp.Rational(d.re.numerator,d.re.denominator)+
         sp.Rational((d.im/r.im).numerator,(d.im/r.im).denominator)*(x-sp.Rational(r.re.numerator,r.re.denominator)))),x)
    return p

def evaluate_coefficients(p, z: QI) -> QI:
    ans=ZERO
    for c in p.all_coeffs():
        if not c.is_Rational: raise ValueError('coefficient is not rational real')
        ans=ans*z+QI(F(int(c.p),int(c.q)))
    return ans

def gap(r: QI,z: QI) -> F: return (z.re-r.re)**2+r.im**2-z.im**2

class Recorder:
    def __init__(self): self.events=[]; self.groups=Counter()
    def check(self,group: str,label: str,condition: bool):
        ok=bool(condition)
        self.events.append({'group':group,'id':label,'passed':ok});self.groups[group]+=1
        if not ok: raise RuntimeError('failed exact control: '+label)
    def rejects(self,label,fn):
        try: fn()
        except ValueError: self.check('negative-controls',label,True);return
        self.check('negative-controls',label,False)

def run():
    R=Recorder()
    x,t,a,u,v,L,n,D=sp.symbols('x t a u v L n D',real=True)
    phase=(u+sp.I*v-t)**2+a*a
    R.check('symbolic','real-phase',sp.expand(sp.re(phase)-((u-t)**2+a*a-v*v))==0)
    R.check('symbolic','pair-phase-plus',sp.expand(phase.subs({u:t,v:a}))==0)
    R.check('symbolic','pair-phase-minus',sp.expand(phase.subs({u:t,v:-a}))==0)
    R.check('symbolic','conjugate-node-quadratic',sp.expand((x-u-sp.I*v)*(x-u+sp.I*v)-((x-u)**2+v*v))==0)
    R.check('symbolic','gap-margin-squares',sp.expand(((u-t)**2+a*a-v*v)-sp.Rational(3,4)-(((u-t)**2-1)+a*a+(sp.Rational(1,4)-v*v)))==0)
    R.check('symbolic','exponent-envelope-difference',sp.expand((-sp.Rational(3,2)*n-2*D)-(-2*(n+1)*D)-2*n*(D-sp.Rational(3,4)))==0)
    M=sp.symbols('M',positive=True)
    R.check('symbolic','quartic-scale-margin',sp.cancel(16*(M/(16*a**4))*a**4-M)==0)
    R.check('symbolic','pair-trace-signed',sp.expand(M*sp.I**2+3*M*(-sp.I)**2+4*M)==0)
    cases=[]
    for j in range(24):
        r=QI(F((j%7)-3,2),F((-1)**j,(j%5)+2))
        candidates=[QI(r.re+F(1,3),F(1,7)),QI(r.re-F(1,2),F(-2,9)),QI(r.re+F(3,4),F(0))]
        nodes=tuple(candidates[:j%4])
        p=polynomial(r,nodes)
        q,d=data(r,nodes)
        m1,m2=F(j+1,3),F(j+2,5)
        tag=f'case-{j:02d}'
        R.check('finite-interpolation',tag+'-nonzero-normalizer',q!=ZERO)
        R.check('finite-interpolation',tag+'-real-coefficients',all(c.is_Rational for c in p.all_coeffs()))
        R.check('finite-interpolation',tag+'-degree-bound',p.degree()<=2*len(nodes)+1)
        R.check('finite-interpolation',tag+'-at-target',evaluate_coefficients(p,r)==I)
        R.check('finite-interpolation',tag+'-at-conjugate',evaluate_coefficients(p,r.conj())==I.conj())
        for k,w in enumerate(nodes):
            R.check('finite-interpolation',f'{tag}-node-{k}',evaluate_coefficients(p,w)==ZERO)
            R.check('finite-interpolation',f'{tag}-conjugate-node-{k}',evaluate_coefficients(p,w.conj())==ZERO)
        for k,z in enumerate([r,r.conj(),QI(r.re+2,F(1,2))]):
            val=evaluate_coefficients(p,z)
            R.check('cross-path',f'{tag}-coeff-v-product-{k}',val==eval_pair(r,nodes,z))
            R.check('cross-path',f'{tag}-reality-{k}',evaluate_coefficients(p,z.conj())==val.conj())
        signed=QI(m1)*evaluate_coefficients(p,r).sq()+QI(m2)*evaluate_coefficients(p,r.conj()).sq()
        R.check('weighted-trace',tag+'-unequal-weights',signed==QI(-(m1+m2)))
        scale=(m1+m2)/(16*r.im**4)
        R.check('weighted-trace',tag+'-quartic-scale',scale>0 and scale*(-16*r.im**4)==signed.re)
        for k,z in enumerate([QI(r.re+1,F(1,2)),QI(r.re-1,F(-1,2)),QI(r.re+2,F(0))]):
            dd=gap(r,z)
            R.check('rational-envelope',f'{tag}-gap-{k}',dd>=F(3,4))
            for ni in [0,1,7]:
                R.check('rational-envelope',f'{tag}-exponent-{k}-{ni}',-2*(ni+1)*dd<=-F(3,2)*ni-2*dd)
        cases.append({'id':tag,'target':[str(r.re),str(r.im)],'cancellation_nodes':len(nodes),'degree':int(p.degree()),'pair_mass':str(m1+m2),'status':'PASSED'})
    r=QI(F(0),F(1,4))
    R.rejects('target-in-cancellation-set',lambda: data(r,(r,)))
    R.rejects('conjugate-in-cancellation-set',lambda: data(r,(r.conj(),)))
    R.rejects('real-target-normalizer',lambda: data(QI(F(2)),()))
    R.rejects('zero-arithmetic-denominator',lambda: ZERO.inv())
    R.check('negative-controls','squares-not-moduli',I.sq().re+I.conj().sq().re==-2 and I.norm_sq()+I.conj().norm_sq()==2)
    R.check('negative-controls','uncancelled-nearby-zero-grows',gap(r,QI(F(0),F(1,2)))==F(-3,16))
    R.check('negative-controls','strip-hypothesis-required',gap(r,QI(F(1),F(2)))==F(-47,16))
    R.check('negative-controls','window-boundary-included',gap(QI(F(0)),QI(F(1),F(1,2)))==F(3,4))
    R.check('negative-controls','wrong-gaussian-sign-grows',gap(r,QI(F(2)))>0)
    R.check('negative-controls','normalizing-constant-required',((r-QI(r.re)).sq()).re==-r.im*r.im!=0)
    R.check('negative-controls','zero-height-is-allowed',evaluate_coefficients(polynomial(r,()),r)==I)
    repeated=polynomial(r,(QI(F(1),F(1,3)),QI(F(1),F(-1,3))))
    R.check('negative-controls','conjugate-repetition-harmless-for-test',evaluate_coefficients(repeated,r)==I)
    events=json.dumps(R.events,sort_keys=True,separators=(',',':')).encode()
    return {'schema':'pair-localization-exact-checks-v1','outcome':'EXACT_FINITE_CHECKS_PASSED','total_checks':len(R.events),
      'groups':dict(R.groups),'synthetic_cases':cases,'negative_controls':[e for e in R.events if e['group']=='negative-controls'],
      'all_events_sha256':hashlib.sha256(events).hexdigest(),
      'python':platform.python_version(),'sympy':sp.__version__,
      'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
      'scope':'Exact polynomial identities, independent Gaussian-rational evaluation paths, and rational exponent inequalities only. No transcendental error enclosure or actual zeta-zero evaluation.',
      'native_lean':'NOT_RUN','actual_source_summability':'NOT_PROVED_HERE','source_positivity':'OPEN','rh_proof':False,'independent_review':False}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path,required=True);args=parser.parse_args()
    result=run();args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ['outcome','total_checks','groups','all_events_sha256','native_lean','rh_proof']},indent=2))
if __name__=='__main__':main()
