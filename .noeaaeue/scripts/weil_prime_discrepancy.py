#!/usr/bin/env python3
"""Complete Weil-form checks and an exact prime-discrepancy decomposition.

Direction: R.A. Jacob Martone. Derivation/implementation: OpenAI ChatGPT. MIT.
Exact rational interval arithmetic, not Lean admission. Tests are actual
compact H^1 functions, not hypothetical zero selectors or all-support bounds.
The written extension from smooth functions retains every source term.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from math import comb, isqrt
from pathlib import Path
import json
from reflected_zeta_cover import Interval as IV, ComplexBox, complex_exp, log_integer


def exact(x):
    if type(x) not in (int, Q):
        raise TypeError('exact integer or Fraction required; bool/float rejected')
    return Q(x)


def nat(x, lo=0, hi=4096):
    if type(x) is not int or not lo <= x <= hi:
        raise ValueError('integer outside resource profile')
    return x


def trim(p):
    p = list(map(exact, p))
    while len(p) > 1 and p[-1] == 0:
        p.pop()
    return tuple(p or [Q(0)])


def add(p, q):
    return trim([(p[i] if i < len(p) else 0) + (q[i] if i < len(q) else 0)
                 for i in range(max(len(p), len(q)))])


def scale(p, c):
    c = exact(c)
    return trim([c*x for x in p])


def mul(p, q):
    out = [Q(0)]*(len(p)+len(q)-1)
    for i, a in enumerate(p):
        for j, b in enumerate(q):
            out[i+j] += a*b
    return trim(out)


def deriv(p):
    return trim([i*p[i] for i in range(1, len(p))])


def ev(p, x):
    ans = 0
    for c in reversed(p):
        ans = ans*x+c
    return ans


def poly_integral(p, a, b):
    return sum((c*(b**(j+1)-a**(j+1))/(j+1) for j,c in enumerate(p)), Q(0))


def bump_test(A):
    """f=(-D^2+1/4)g, g=(1-u^2/A^2)^4 on [-A,A], zero outside."""
    A = exact(A)
    if not Q(1,4) <= A <= 2:
        raise ValueError('finite profile requires 1/4<=A<=2')
    g = tuple(Q((-1)**(j//2)*comb(4,j//2),1)/A**j if j%2==0 else Q(0)
              for j in range(9))
    f = add(scale(g,Q(1,4)),scale(deriv(deriv(g)),-1))
    return g, f


def autocorrelation(p, A):
    """Exact C(x)=integral_-A^(A-x) p(u+x)p(u)du on 0<=x<=2A."""
    A = exact(A)
    out = [Q(0)]*(2*len(p))
    for i, a in enumerate(p):
        for j, b in enumerate(p):
            for k in range(i+1):
                m=k+j+1; c=a*b*comb(i,k)/m; shift=i-k
                for l in range(m+1):
                    out[shift+l] += c*comb(m,l)*A**(m-l)*(-1)**l
                out[shift] -= c*(-A)**m
    return trim(out)


def exponential(q, bits):
    nat(bits,64,384)
    return complex_exp(ComplexBox.point(exact(q)),bits).re


def exponential_integral(p, q, a, b, bits):
    """Exact polynomial antiderivative, with both endpoints retained."""
    q,a,b = map(exact,(q,a,b))
    if a>b:
        raise ValueError('reversed integration interval')
    if q==0:
        return IV.point(poly_integral(p,a,b))
    v=(Q(0),); d=trim(p); power=q
    for j in range(len(p)):
        v=add(v,scale(d,Q((-1)**j)/power)); d=deriv(d); power*=q
    return (exponential(q*b,bits)*ev(v,b)-exponential(q*a,bits)*ev(v,a)).rounded(bits)


def sqrt_integer(n,bits):
    nat(n,1,4096);nat(bits,64,384)
    s=1<<bits; k=isqrt(n*s*s)
    return IV(Q(k,s),Q(k if k*k==n*s*s else k+1,s))


def atan_inverse(q,bits):
    nat(q,2,4096);nat(bits,64,384)
    total=Q(0); x=Q(1,q)
    for j in range(bits+1):
        term=x**(2*j+1)/(2*j+1)
        total += (-1)**j*term
        rem=x**(2*j+3)/(2*j+3)
        if rem < Q(1,1<<(bits+4)):
            other=total+(-1)**(j+1)*rem
            return IV(min(total,other),max(total,other)).rounded(bits)
    raise ArithmeticError('arctangent budget exhausted')


def log_rational(x,bits):
    x=exact(x);nat(bits,64,384)
    if not Q(1,10000) <= x <=10000:
        raise ValueError('logarithm outside resource profile')
    k=0
    while x>=2: x/=2;k+=1
    while x<1: x*=2;k-=1
    y=(x-1)/(x+1); value=Q(0); power=y
    for j in range(bits+16):
        value+=2*power/(2*j+1);power*=y*y
        rem=2*power/((2*j+3)*(1-y*y))
        if rem<Q(1,1<<(bits+4)):
            return (IV(value,value+rem)+k*log_integer(2,bits)).rounded(bits)
    raise ArithmeticError('logarithm budget exhausted')


def arch_constant(bits):
    """w(0), using signed digamma remainder at positive integer 64."""
    nat(bits,64,384)
    pi=16*atan_inverse(5,bits)-4*atan_inverse(239,bits)
    logpi=IV(log_rational(pi.lo,bits).lo,log_rational(pi.hi,bits).hi)
    n=64
    base=IV.point(sum((Q(1,k) for k in range(1,n+1)),Q(0))-Q(1,2*n)+Q(1,12*n*n))-log_integer(n,bits)
    gamma=IV(base.lo-Q(1,120*n**4),base.hi)
    return (-gamma-pi/2-3*log_integer(2,bits)-logpi).rounded(bits)


def prime_base_sieve(limit):
    nat(limit,1,4096)
    out=[0]*(limit+1)
    for p in range(2,limit+1):
        if all(p%d for d in range(2,isqrt(p)+1)):
            k=p
            while k<=limit:
                out[k]=p;k*=p
    return out


def prime_base_trial(n):
    nat(n,1,4096)
    k=n; factors=[]
    for p in range(2,isqrt(n)+1):
        if k%p==0:
            factors.append(p)
            while k%p==0:k//=p
    if k>1:factors.append(k)
    return factors[0] if len(factors)==1 else 0


def discrepancy_cells(h, T, bases, bits):
    """Independent closed-floor integration of Delta(e^x) on every log cell."""
    k = add(deriv(h),scale(h,Q(-1,2)))
    primitive=(Q(0),); d=k; q=Q(1,2)
    for j in range(len(k)):
        primitive=add(primitive,scale(d,Q((-1)**j)/q**(j+1)))
        d=deriv(d)
    def endpoints(x, root):
        return ev(h,x)/root, ev(primitive,x)*root
    left=endpoints(IV.point(0),IV.point(1))
    psi=IV.point(0); result=IV.point(0); cells=0
    for n in range(1,len(bases)):
        if bases[n]:psi+=log_integer(bases[n],bits)
        right_log=log_integer(n+1,bits)
        if right_log.lo <= T <= right_log.hi:
            raise ArithmeticError('ambiguous cell endpoint')
        last=right_log.lo>T
        right=(endpoints(IV.point(T),exponential(T/2,bits)) if last else
               endpoints(right_log,sqrt_integer(n+1,bits)))
        result+=(2*((psi+1)*(right[0]-left[0])-(right[1]-left[1]))).rounded(bits)
        cells+=1
        if last:return result.rounded(bits),cells
        left=right
    raise ArithmeticError('incomplete floor-cell coverage')


def interval_json(v):
    return [str(v.lo),str(v.hi)]


def profile(A,bits=160,terms=512):
    A=exact(A);nat(bits,64,384);nat(terms,1,2048)
    g,f=bump_test(A); h=autocorrelation(f,A);T=2*A
    N=poly_integral(mul(f,f),-A,A)
    N1=poly_integral(mul(deriv(f),deriv(f)),-A,A)
    if N<=0 or ev(h,0)!=N or ev(h,T)!=0 or ev(deriv(h),0)!=0:
        raise ArithmeticError('autocorrelation identities failed')
    if any(ev(g,v)!=0 or ev(deriv(g),v)!=0 for v in (-A,A)):
        raise ArithmeticError('pole cancellation endpoints not established')
    # The positive-index complete inventory is bounded before any omission.
    upper=exponential(T,bits).hi
    limit=upper.numerator//upper.denominator+1
    nat(limit,2,4096)
    bases=prime_base_sieve(limit)
    prime=IV.point(0); inventory=[]
    for n in range(2,limit+1):
        if bases[n]!=prime_base_trial(n):
            raise ArithmeticError('independent prime-power classification disagrees')
        x=log_integer(n,bits)
        if x.lo<=T<=x.hi:
            raise ArithmeticError('ambiguous source cutoff; increase precision')
        if x.hi<T and bases[n]:
            value=(2*log_integer(bases[n],bits)/sqrt_integer(n,bits)*ev(h,x)).rounded(bits)
            prime+=value
            inventory.append({'n':n,'base':bases[n],'signed_contribution':interval_json(value)})
    plus=2*exponential_integral(h,Q(1,2),0,T,bits)
    minus=2*exponential_integral(h,Q(-1,2),0,T,bits)
    # Exact pole cancellation is proved from f=(-D^2+1/4)g and g=g'=0.
    # This independent endpoint integration must also enclose its value.
    polar_check=plus+minus
    if not polar_check.contains(0):
        raise ArithmeticError('pole transport disagrees with direct integration')
    discrepancy=(plus-prime).rounded(bits)
    cell_discrepancy,cells=discrepancy_cells(h,T,bases,bits)
    if discrepancy.hi<cell_discrepancy.lo or cell_discrepancy.hi<discrepancy.lo:
        raise ArithmeticError('literal closed-floor integral disagrees')
    alt_discrepancy=(-minus-prime).rounded(bits)
    if discrepancy.hi<alt_discrepancy.lo or alt_discrepancy.hi<discrepancy.lo:
        raise ArithmeticError('centered source identity failed')
    series=IV.point(0)
    for j in range(terms):
        lam=Q(4*j+1,2)
        contribution=IV.point(N/lam)-exponential_integral(h,-lam,0,T,bits)
        series+=(2*contribution).rounded(bits)
    lam=Q(4*terms+1,2)
    tail=2*N1*(1/lam**3+1/(4*lam**2))
    arch=arch_constant(bits)*N+series+IV(0,tail)
    full=(arch-prime).rounded(bits) # polar term is EXACTLY zero, not merely dropped
    centered=(arch+minus+discrepancy).rounded(bits)
    if full.hi<centered.lo or centered.hi<full.lo:
        raise ArithmeticError('full source decompositions disagree')
    return {'A':str(A),'bits':bits,'arch_series_terms':terms,
      'test':'(-D^2+1/4)(1-u^2/A^2)^4 on [-A,A], zero outside',
      'function_class':'compact C^1, H^2; source form by the written H^1 density extension',
      'f_coefficients':list(map(str,f)),'autocorrelation_coefficients':list(map(str,h)),
      'norm_squared':str(N),'derivative_norm_squared':str(N1),
      'prime_power_inventory':inventory,'complete_prime_label_limit':limit,
      'prime_term':interval_json(prime),'continuum_plus':interval_json(plus),
      'positive_kernel':interval_json(minus),'pole_direct_check':interval_json(polar_check),
      'pole_exact_value':'0','signed_discrepancy':interval_json(discrepancy),
      'closed_floor_discrepancy':interval_json(cell_discrepancy),'closed_floor_cells':cells,
      'arch_constant':interval_json(arch_constant(bits)), 'arch_series_tail_upper':str(tail),
      'archimedean_term':interval_json(arch),'whole_weil_form':interval_json(full),
      'whole_weil_form_div_norm':interval_json(full/N),
      'whole_form_positive':full.lo>0,
      'scope':'three explicitly defined tests only; not all functions at this support',
      'RH':False,'all_support_lower_growth':False,'new_zero_region':False,'native_Lean':False}


def produce(bits=160,terms=512):
    return {'schema':'weil-prime-discrepancy-v1','profiles':[profile(a,bits,terms) for a in (Q(1,2),Q(1),Q(2))],
            'evidence':'written analytic identities and executed rational enclosures',
            'RH':False,'native_Lean':False,'uniform_source_lower_bound':False}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--bits',type=int,default=160)
    p.add_argument('--terms',type=int,default=512)
    a=p.parse_args()
    if a.output.exists():raise FileExistsError('output must be new')
    data=produce(a.bits,a.terms)
    with a.output.open('x') as f:json.dump(data,f,indent=2,sort_keys=True,allow_nan=False);f.write('\n')
    print(json.dumps({'profiles':3,'positive_tests':sum(x['whole_form_positive'] for x in data['profiles']),
                      'RH':False,'native_Lean':False},sort_keys=True))


if __name__=='__main__':main()
