#!/usr/bin/env python3
"""Exact budgets for the actual compact-support Weil form; not RH or Lean.

Direction: R.A. Jacob Martone. Research/implementation: OpenAI ChatGPT. MIT.
Analytic ancestry: Suzuki 2206.03682/2606.09096, classical digamma series,
Nathanson finite interpolation, and the retained compact Weil construction.
Only rational constants are computed. No source integral or eigenvalue is sampled.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from math import comb, factorial, isqrt
from pathlib import Path
import json

B0 = Q(11, 2)

def rational(x):
    if isinstance(x, bool) or not isinstance(x, (int, Q)):
        raise TypeError('exact integer/Fraction required')
    return Q(x)

def nat(x, minimum=0, maximum=1000000):
    if type(x) is not int or not minimum <= x <= maximum:
        raise ValueError('integer outside permitted finite profile')
    return x

def ceilq(x):
    x = rational(x)
    return -((-x.numerator) // x.denominator)

def log_bounds(x, terms=40):
    """Atanh series after exact power-of-two range reduction."""
    x = rational(x); nat(terms, 1, 4096)
    if x <= 0: raise ValueError('positive logarithm argument required')
    n = 0
    while x >= 2: x /= 2; n += 1
    while x < 1: x *= 2; n -= 1
    def unit(y):
        z = (y-1)/(y+1)
        lo = 2*sum((z**(2*k+1)/Q(2*k+1) for k in range(terms)), Q(0))
        return lo, lo + 2*z**(2*terms+1)/(Q(2*terms+1)*(1-z*z))
    a,b = unit(x); c,d = unit(Q(2))
    return (a+n*c,b+n*d) if n>=0 else (a+n*d,b+n*c)

def exp_bounds(x, terms=96):
    x=rational(x); nat(terms,1,4096)
    if x<0:
        a,b=exp_bounds(-x,terms); return 1/b,1/a
    if x>=terms+2: raise ValueError('Taylor remainder ratio not below one')
    s=Q(1); term=Q(1)
    for k in range(1,terms+1):
        term*=x/k; s+=term
    first=term*x/(terms+1)
    return s,s+first/(1-x/(terms+2))

def sqrt_lower(x, bits=96):
    x=rational(x); nat(bits,8,1024)
    if x<0: raise ValueError('negative square root')
    return Q(isqrt((x.numerator << (2*bits))//x.denominator),1<<bits)

def upper_grid(x,bits=80):
    return Q(ceilq(rational(x)*(1<<bits)),1<<bits)

def prime_base(n):
    nat(n,2,1000000)
    p=2
    while p*p<=n:
        if n%p==0:
            a=n
            while a%p==0: a//=p
            return p if a==1 else None
        p+=1
    return n

def prime_cost(A, cap=100000):
    """Upper bound for 2 sum_(log n <= 2A) Lambda(n)/sqrt(n).

    An unresolved comparison includes the prime power, never omits it.
    An enumeration cap fails rather than certifying a missing tail.
    """
    A=rational(A); nat(cap,2,1000000)
    if A<=0: raise ValueError('positive half-support required')
    _, ex=exp_bounds(2*A)
    N=ceilq(ex)
    if N>cap: raise ValueError('prime enumeration profile exhausted')
    terms=[]; total=Q(0)
    for n in range(2,N+1):
        p=prime_base(n)
        if p is None: continue
        lo,hi=log_bounds(Q(n))
        if lo>2*A: continue
        _,lp=log_bounds(Q(p))
        cost=2*lp/sqrt_lower(Q(n))
        total+=cost
        terms.append({'n':n,'prime':p,'cutoff':'inside' if hi<=2*A else 'included_uncertain',
                      'upper':str(upper_grid(cost))})
    return upper_grid(total),terms,N

def polar_cost(A):
    # 4 sinh A <= 2(E - 1/E), E >= exp A; both polar evaluations retained.
    _,E=exp_bounds(rational(A)); return upper_grid(2*(E-1/E))

def arch_lower(tau):
    tau=rational(tau)
    if tau<=0: raise ValueError('positive frequency threshold')
    lo,_=log_bounds(1+4*tau*tau/25)
    return -B0+16*tau*tau/(1+4*tau*tau)+lo/2

def moment_leakage(A,tau,m):
    A=rational(A); tau=rational(tau); nat(m,1,1000000)
    if A<=0 or tau<=0: raise ValueError('positive scales required')
    # m moments vanish. The exact factorial bound is useful only at small m.
    if m>1000: raise ValueError('explicit factorial profile exhausted')
    r=A*tau
    return min(Q(1),2*r**(2*m+1)/(3*Q(2*m+1)*factorial(m)**2))

def leakage_geometric(A,tau,m):
    A=rational(A); tau=rational(tau)
    if type(m) is not int or m<1: raise ValueError('positive integral moment count')
    if A<=0 or tau<=0 or m<6*A*tau:
        raise ValueError('factorial envelope requires m >= 6 A tau')
    # m! >= (m/3)^m; round UP by retaining at most 128 binary pairs.
    q=min(m,128)
    return Q(1,18*4**q)

def coercivity_profile(A,pole_null=False):
    A=rational(A)
    if type(pole_null) is not bool: raise TypeError('pole flag must be Boolean')
    P,terms,N=prime_cost(A)
    Z=Q(0) if pole_null else polar_cost(A)
    C=P+Z
    tau=Q(2)
    for _ in range(64):
        lo=arch_lower(tau)
        if lo-C>=1: break
        tau*=2
    else: raise ValueError('frequency search budget exhausted')
    m=max(1,ceilq(6*A*tau))
    for _ in range(256):
        mu=leakage_geometric(A,tau,m)
        gap=lo-C-(lo+B0)*mu
        if gap>=Q(1,2): break
        m+=1
    else: raise ValueError('moment budget exhausted')
    return {'half_support':str(A),'prime_enumeration_upper':N,'prime_powers':terms,
            'prime_cost_upper':str(P),'polar_cost_upper':str(Z),
            'pole_null_required':pole_null,'vanishing_moments':m,
            'frequency_threshold':str(tau),'arch_lower':str(Q((lo*(1<<80)).numerator//(lo*(1<<80)).denominator,1<<80)),
            'certified_gap_at_least':'1/2',
            'scalar_gap_lower_rounded':str(Q((gap*(1<<64)).numerator//(gap*(1<<64)).denominator,1<<64)),
            'meaning':'Universal written lower bound on this moment-null subspace; no eigenvalue sampled',
            'full_source_nonnegative':False,'low_block_or_schur_bound':None}

def seed_profile():
    A=Q(1,64); x=1-A
    P,terms,N=prime_cost(A)
    if P!=0: raise ArithmeticError('seed includes unexpected prime term')
    lo,_=log_bounds((2-A)/A)
    lower=-B0+lo+2*x/(1+x*x)-polar_cost(A)
    if lower<=Q(1,4): raise ArithmeticError('seed strict margin failed')
    return {'half_support':str(A),'source':'complete arithmetic Weil form',
            'universal_lower_bound':'1/4 * L2_norm_squared',
            'computed_lower_rounded':str(Q((lower*(1<<64)).numerator//(lower*(1<<64)).denominator,1<<64)),
            'prime_powers':terms,'pole_null_required':False,'native_admission':False}

def polyadd(a,b):
    c=[Q(0)]*max(len(a),len(b))
    for i,x in enumerate(a): c[i]+=x
    for i,x in enumerate(b): c[i]+=x
    return c

def polymul(a,b):
    c=[Q(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): c[i+j]+=x*y
    return c

def shift(q,t):
    out=[Q(0)]*len(q)
    for i,a in enumerate(q):
        for j in range(i+1): out[j]+=a*comb(i,j)*t**(i-j)
    return out

def majorant_step(q,t):
    out=[Q(0)]*(len(q)+1)
    for j,a in enumerate(q):
        if j: out[j-1]+=j*a
        out[j]+=abs(t)*a; out[j+1]+=a/2
    return out

def gaussian_norm_constant(q,t):
    q=[rational(v) for v in q]; t=rational(t)
    if not q or all(x==0 for x in q): raise ValueError('nonzero polynomial required')
    vals=[]; p=shift(q,t)
    for j in range(3):
        vals.append(len(p)*sum((factorial(k)*x*x for k,x in enumerate(p)),Q(0)))
        p=polymul(p,[t,Q(1)])
    return 3*(vals[2]+64*vals[1]+Q(4225,16)*vals[0])

def compact_constants(q,t):
    q=[rational(v) for v in q]; t=rational(t)
    if not q or all(x==0 for x in q): raise ValueError('nonzero polynomial required')
    d=len(q)-1
    b0=[Q(0)]; p=[Q(1)]
    for a in q:
        b0=polyadd(b0,[abs(a)*x for x in p]); p=majorant_step(p,t)
    c=[Q(1),Q(4)]
    for j in range(2,d+5): c.append(Q(4**j)+4*(j-1)*c[j-2])
    vals=[]; p=b0
    for j in range(5):
        vals.append(sum((v*c[k] for k,v in enumerate(p)),Q(0)))
        p=majorant_step(p,t)
    D=Q(5,2)*(vals[0]+vals[4]+sum((comb(4,j)*4**j*vals[4-j] for j in range(1,5)),Q(0)))
    P=polymul(q,[Q(1,4),Q(0),Q(1)])
    shifted=shift(P,t)
    a=[Q(0)]; v=[Q(1)]
    for x in shifted:
        a=polyadd(a,[abs(x)*z for z in v]); v=polymul(v,[Q(1,2),Q(1)])
    a=polymul(a,[Q(5,4)+t*t,2*abs(t),Q(1)])
    B=sum((x*(1+factorial(k)) for k,x in enumerate(a)),Q(0))
    return B,D,d+4

def normalized_pair_quotient(t,b):
    t=rational(t); b=rational(b)
    if not 0<abs(b)<Q(1,2): raise ValueError('nonreal pair in open half-strip required')
    u=t*t-b*b+Q(1,4); v=2*t*b; den=u*u+v*v
    slope=u/(b*den)
    return [v/den-slope*t,slope]

def escape_profile(t,b,mass=Q(2)):
    t=rational(t); b=rational(b); mass=rational(mass)
    if mass<=0: raise ValueError('positive actual pair mass required')
    q=normalized_pair_quotient(t,b); B,D,powL=compact_constants(q,t)
    for L in range(4*powL,2049):
        delta=D*L**powL/Q(4**L)
        BL=B*2**((L+1)//2)
        tail=190*(2*B)**2/Q(2**((3*(L-1))//2))
        cut=190*(2*BL*delta+delta*delta)
        if tail<mass/4 and cut<mass/4: break
    else: raise ValueError('compact escape profile exhausted')
    C=gaussian_norm_constant(q,t)
    return {'synthetic_selected_pair':{'real':str(t),'imag':str(b)},'mass':str(mass),
            'polynomial_Q':[str(x) for x in q],'L_first_checked':L,'valid_for_all_integer_L_at_least_this':True,'cutoff_R':4*L,
            'half_support':8*L,'convolution_half_support':16*L,
            'tail_upper':str(upper_grid(tail)),'cutoff_upper':str(upper_grid(cut)),
            'norm_constant_C':str(C),'norm_bound':'C * exp(-2 L b^2) / sqrt(L)',
            'rayleigh_upper':'-mass/(2C) * sqrt(L) * exp(2 L b^2)',
            'negative_growth_rate_in_half_support':str(b*b/4),
            'meaning':'Synthetic scalar costs; actual negative test requires the hypothetical source-pair and complete near-node cancellation',
            'actual_source_integral_evaluated':False,'RH':False}

def results():
    return {'schema':'weil-lower-bounds-v1','grade':'WRITTEN_CONTINUUM_AND_EXACT_SCALAR_CHECKS',
            'seed':seed_profile(),
            'complement_profiles':[coercivity_profile(A,p) for A,p in
                [(Q(1,64),False),(Q(1,8),False),(Q(1,4),False),(Q(1,2),False),(Q(1),True)]],
            'escape_profiles':[escape_profile(t,b) for t,b in [(Q(0),Q(1,4)),(Q(2),Q(1,4)),(Q(2),Q(1,16))]],
            'RH':False,'native_admissions':0,'all_support_source_lower_bound_proved':False}

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__); p.add_argument('--output',required=True)
    args=p.parse_args(); out=Path(args.output)
    with out.open('x',encoding='utf8') as f: json.dump(results(),f,indent=2); f.write('\n')
