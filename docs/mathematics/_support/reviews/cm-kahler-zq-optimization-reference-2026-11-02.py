"""Exact finite regression tests for the source-level Kähler/gauge optimization.

Not Lean compilation, not the actual CM Kähler polarization, and not CERN evidence.
"""
from fractions import Fraction as F
from random import Random
from collections import defaultdict
from itertools import product
from pathlib import Path
import json

rng=Random(20261102)
checks=0
def verify(h):
    global checks
    assert h
    checks+=1

U=((1,0),(0,1),(-1,0),(0,-1))
def mul(z,w):return z[0]*w[0]-z[1]*w[1],z[0]*w[1]+z[1]*w[0]
def inv(z):return z[0],-z[1]
def scalar(a,z):return a*z[0],a*z[1]
for z in U:verify(mul(z,inv(z))==(1,0))

# Rationalization and strict positivity of the chosen integral lattice.
for g in range(11):
    for _ in range(65):
        v=[(rng.randint(-12,12),rng.randint(-12,12)) for _ in range(g)]
        w=[(rng.randint(-12,12),rng.randint(-12,12)) for _ in range(g)]
        jv=[(-y,x) for x,y in v]
        verify([(-y,x) for x,y in jv]==[(-x,-y) for x,y in v])
        omega=sum(x*b-y*a for (x,y),(a,b) in zip(v,w))
        omegaq=sum(F(x)*F(b)-F(y)*F(a) for (x,y),(a,b) in zip(v,w))
        verify(F(omega)==omegaq)
        q=sum(x*x+y*y for x,y in v)
        verify(sum(x*b-y*a for (x,y),(a,b) in zip(v,jv))==q)
        verify((q==0)==all(x==0 and y==0 for x,y in v))
        verify(q>=0)

# Example ℚ[x,y] derivation, illustrating the universal comparison mechanism.
import sympy as sp
x,y=sp.symbols("x y")
for _ in range(200):
    f=sum(sp.Rational(rng.randint(-10,10),rng.randint(1,10))*x**i*y**j
          for i in range(4) for j in range(3))
    for q in (sp.Rational(1,3),sp.Rational(-3,7),sp.Rational(17,4)):
        verify(all(sp.expand(sp.diff(q*f,z)-q*sp.diff(f,z))==0 for z in (x,y)))
        verify(all(sp.diff(q,z)==0 for z in (x,y)))

# Exact Gaussian U(1) gauge at ALL original integer sites, followed by aggregation.
for j in range(10):
    for d in (1,2,3,4):
        nmax=2**j
        sectors=list(product(range(2),range(d*d)))
        g={s:rng.choice(U) for s in sectors}
        coeff={n:F(rng.randint(-17,17),rng.randint(1,10))
               for n in range(1,nmax+1)}
        sector=lambda n:(n%2,(n//2)%(d*d))
        b=defaultdict(lambda:(F(0),F(0)))
        bg=defaultdict(lambda:(F(0),F(0)))
        for n,a in coeff.items():
            s=sector(n);c=scalar(a,g[s])
            b[s]=(b[s][0]+a,b[s][1])
            bg[s]=(bg[s][0]+c[0],bg[s][1]+c[1])
        for s in sectors:verify(bg[s]==mul(g[s],b[s]))
        verify(sum(a*a for a in coeff.values()) ==
               sum((scalar(a,g[sector(n)])[0]**2+scalar(a,g[sector(n)])[1]**2
                    for n,a in coeff.items()),F(0)))
        raw=sum(coeff.values(),F(0))
        det=[mul(inv(g[s]),bg[s]) for s in sectors]
        verify(sum((v[0] for v in det),F(0))==raw)
        verify(sum((v[1] for v in det),F(0))==0)

# Explicit aliasing and link-normalization counterexamples.
alias=defaultdict(F)
for n,a in ((1,F(1)),(3,F(-1))):alias[n%2,(n//2)%1]+=a
verify(dict(alias)=={(1,0):F(0)})
verify(F(1)**2+F(-1)**2==2)
verify((-1,0) in U and (-1,0)!=(1,0))

for d in (1,2,3):
    sites=list(product(range(2),range(d*d)))
    g={s:rng.choice(U) for s in sites}
    links={(i,j):((1,0) if i==j else rng.choice(U)) for i in sites for j in sites}
    for i in sites:
        links[i,i]=(1,0)
        for k in sites:
            if i<k:links[k,i]=inv(links[i,k])
    lg={(i,k):mul(mul(g[i],links[i,k]),inv(g[k])) for i in sites for k in sites}
    for i in sites:
        verify(lg[i,i]==(1,0))
        for k in sites:verify(mul(lg[i,k],lg[k,i])==(1,0))
    for _ in range(220):
        i,k,l=rng.choices(sites,k=3)
        hol=mul(mul(links[i,k],links[k,l]),links[l,i])
        holg=mul(mul(lg[i,k],lg[k,l]),lg[l,i])
        verify(hol==holg)

report={
 "status":"PASS","exact_finite_assertions":checks,
 "data":"simulated exact rational vectors and Gaussian U(1) roots",
 "scope":["integral/rational coordinate pairing and strict positivity",
          "ℚ-linearity of polynomial derivations (illustrative)",
          "full integer-labelled gauge equivariance under residue aggregation",
          "aliasing counterexample", "reversible link normalization and gauge holonomy"],
 "not_established":["Lean kernel/axiom verification",
                  "geometric CM polarization", "physical Chern connection",
                  "CERN data fit", "RH energy bound"]
}
Path("/mnt/data/cm_kahler_zq_optimization_reference_results.json").write_text(json.dumps(report,indent=2)+"\n")
print(json.dumps(report,indent=2))
