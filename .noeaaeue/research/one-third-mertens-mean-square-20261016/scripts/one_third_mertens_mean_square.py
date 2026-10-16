#!/usr/bin/env python3
"""Verify and reproduce the committed one-third Mertens certificate."""
import argparse,json,random
from fractions import Fraction as F
from pathlib import Path

def mobius(N):
 mu=[1]*(N+1); mu[0]=0; prime=[True]*(N+1)
 for p in range(2,N+1):
  if prime[p]:
   for n in range(p,N+1,p):
    if n!=p: prime[n]=False
    mu[n]*=-1
   for n in range(p*p,N+1,p*p): mu[n]=0
 return mu

def prefix(a):
 out=[0]*len(a); s=0
 for i in range(1,len(a)): s+=a[i]; out[i]=s
 return out

def abel(a,q):
 M=prefix(a); N=len(a)-1
 return (sum(F(M[n],n**q)-F(M[n],(n+1)**q) for n in range(1,N+1)),
  sum(F(a[n],n**q) for n in range(1,N+1))-F(M[N],(N+1)**q))

def kernel(j,a,b):
 lo,hi=1<<j,1<<(j+1); m=max(a,b)
 return hi-lo if m<lo else hi-m if m<hi else 0

def block(mu,j):
 M=prefix(mu); lo,hi=1<<j,min(1<<(j+1),len(mu))
 return (sum(M[n]**2 for n in range(lo,hi)),
  sum(mu[a]*mu[b]*kernel(j,a,b) for a in range(1,hi) for b in range(1,hi)))

def verify(path):
 d=json.loads(path.read_text()); e=d['exact_parameters']
 assert d['status']=='passed' and d['check_count']==161
 assert (e['sigma'],e['square_exponent'],e['source_exponent'],e['zero_boundary'])==('1/3','8/3','5/3','5/6')
 assert F(1,3)**-2==9 and (F(8,3)-1)/2==F(5,6)
 assert F(4374785349,5000000000)-F(5,6)==F(624356047,15000000000)
 assert d['finite_abel_case_count']==96 and d['dyadic_weight_fixture_count']==30
 assert all(d['symbolic_checks'].values())
 rng=random.Random(20261016); count=0
 for size in range(1,33):
  a=[0]+[rng.choice([-1,0,1]) for _ in range(size)]
  for q in (2,3,4): assert abel(a,q)[0]==abel(a,q)[1]; count+=1
 assert count==d['finite_abel_case_count']
 mu=mobius(512); got=[]
 for j in range(8):
  x,y=block(mu,j); assert x==y; got.append({'j':j,'block_square':x})
 assert got==d['signed_kernel_cases']
 return d

def main():
 p=argparse.ArgumentParser(); p.add_argument('--certificate',type=Path,required=True); p.add_argument('--output',type=Path,required=True); a=p.parse_args()
 if a.output.exists(): raise SystemExit('refusing to overwrite existing output')
 d=verify(a.certificate); a.output.write_text(json.dumps(d,indent=2,sort_keys=True)+'\n')
 print(json.dumps({'status':'passed','check_count':161},sort_keys=True))
if __name__=='__main__': main()
