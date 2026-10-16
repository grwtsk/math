#!/usr/bin/env python3
"""Exact costs for compact convolution-power Weil pair detectors.

Direction: R.A. Jacob Martone. Derivation/implementation: OpenAI ChatGPT. MIT.
This calculates scalar budgets and synthetic finite interpolation data, NOT an
actual zeta zero, Weil integral, spectral lower bound, or Lean acceptance.
See evidence/analysis/weil-compact-power-20261015/derivation.txt.
"""
from __future__ import annotations
import argparse
from collections import Counter
from fractions import Fraction as Q
from hashlib import sha256
from math import factorial, isqrt
from pathlib import Path
import json
from typing import Sequence

from finite_hermite_isolation import Gaussian, I, ZERO, isolate, evaluate, divisor, trace

SCHEMA = 'weil-compact-power-costs-v1'
MAX_SHIFT = 256
MAX_STEPS = 10000
MAX_BITS = 200000
MAX_NODES = 24


def rat(x: object) -> Q:
    if type(x) not in (int, Q):
        raise TypeError('only exact int or Fraction; bool and float rejected')
    return Q(x)


def integer(x: object, low: int, high: int) -> int:
    if type(x) is not int or not low <= x <= high:
        raise ValueError('integer outside declared resource profile')
    return x


def ceilq(x: Q) -> int:
    x = rat(x)
    return -((-x.numerator)//x.denominator)


def ceil_sqrt(x: int) -> int:
    integer(x, 0, 3**(MAX_SHIFT+4))
    y = isqrt(x)
    return y if y*y == x else y+1


def majorant(p: Sequence[Q], x: Q) -> Q:
    x = rat(x)
    if x < 0 or not p:
        raise ValueError('nonempty polynomial and nonnegative radius required')
    ans = Q(0)
    for c in reversed(p):
        ans = ans*x + abs(rat(c))
    if max(ans.numerator.bit_length(), ans.denominator.bit_length()) > MAX_BITS:
        raise OverflowError('rational resource budget exceeded')
    return ans


def cosh_lower(x: Q, terms: int = 32) -> Q:
    """Positive Taylor partial sum, a LOWER bound for cosh(x), never equality."""
    x = abs(rat(x))
    integer(terms, 1, 256)
    if x > MAX_SHIFT:
        raise ValueError('cosh argument outside exact profile')
    ans, term = Q(1), Q(1)
    for k in range(1, terms):
        term *= x*x / ((2*k-1)*(2*k))
        ans += term
    return ans


def rate_lower(displacement: Q, shift: Q) -> Q:
    """2 log cosh(shift*b)/(shift+2) > this rational value when it is positive."""
    b, ell = abs(rat(displacement)), rat(shift)
    if not 0 < b < Q(1,2) or not 0 < ell <= MAX_SHIFT:
        raise ValueError('nonreal open-strip displacement and positive shift required')
    return max(Q(0), 2*(ell*b-Q(7,10))/(ell+2))


def shift_for_rate(displacement: Q, desired: Q) -> int:
    b, r = abs(rat(displacement)), rat(desired)
    if not 0 < b < Q(1,2) or not 0 <= r < 2*b:
        raise ValueError('target must lie strictly below twice the displacement')
    threshold = (2*r+Q(7,5))/(2*b-r)
    ell = threshold.numerator//threshold.denominator+1
    integer(ell, 1, MAX_SHIFT)
    if not rate_lower(b, Q(ell)) > r:
        raise ArithmeticError('strict rate separation failed')
    return ell


def quartic_tail_constant(count_constant: Q = Q(30)) -> Q:
    """From N(T)<=c T^2 (T>=1): c + 4c sum_j 4^-j = 19c/3."""
    c = rat(count_constant)
    if c <= 0:
        raise ValueError('positive external counting constant required')
    return Q(19,3)*c


def first_tail_index(C: Q, M: Q, n0: int, max_steps: int = MAX_STEPS) -> tuple[int,Q]:
    C, M = rat(C), rat(M)
    integer(n0, 1, MAX_STEPS)
    integer(max_steps, 0, MAX_STEPS)
    if C < 0 or M <= 0:
        raise ValueError('nonnegative tail and positive pair mass required')
    tail = C
    for j in range(max_steps+1):
        if tail < M/2:
            return n0+j, tail
        tail /= 4
    raise RuntimeError('search budget exhausted; no completed certificate')


def profile(points: Sequence[Gaussian], selected: Gaussian, shift: Q,
            max_steps: int = MAX_STEPS) -> dict:
    """Sufficient budgets for a declared synthetic divisor plus a far real tail.

    An ACTUAL-source use must independently identify every source node inside
    the computed window. This function does not enumerate or certify such nodes.
    Pole nodes are interpolation constraints only, never source mass.
    """
    if len(points) > MAX_NODES:
        raise ValueError('finite interpolation resource limit exceeded')
    counts = divisor(points)
    if selected not in counts or not 0 < abs(selected.im) < Q(1,2):
        raise ValueError('selected node must be nonreal inside the open strip')
    if any(abs(z.im) >= Q(1,2) for z in counts):
        raise ValueError('source inventory must lie in the open half-strip')
    if sum(counts.values()) > 20:
        raise ValueError('synthetic counting certificate requires finite mass <=20')
    ell = rat(shift)
    if not 0 < ell <= MAX_SHIFT:
        raise ValueError('shift outside bounded profile')
    a0 = ell+2
    E = 3**ceilq(a0/2)  # upper bound exp(a0/2), from e<3
    R = ceil_sqrt(8*E)
    if not R*R >= 8*E or R <= 0:
        raise ArithmeticError('whole-strip tail threshold failed')
    t, b = selected.re, selected.im
    if any(abs(z.re-t) > R for z in counts):
        raise ValueError('all supplied finite nodes must lie inside selected window')
    pole_nodes = (Gaussian(0,Q(1,2)), Gaussian(0,-Q(1,2)))
    nodes = tuple(sorted(set(counts) | set(pole_nodes),key=lambda z:(z.re,z.im)))
    # Interpolation depends on distinct support. Source masses stay in counts.
    pp = isolate(nodes, selected)
    if evaluate(pp,pole_nodes[0]) != ZERO or evaluate(pp,pole_nodes[1]) != ZERO:
        raise ArithmeticError('pole constraints lost')
    p = tuple(c.re for c in pp)
    d = len(p)-1
    n0 = (d+3)//2  # ceil((d+2)/2)
    k = 4*n0-2*d
    if k < 4:
        raise ArithmeticError('baseline Fourier integrability not established')
    M = Q(counts[selected]+counts[selected.conj()])
    if trace(points, pp, 2) != -M:
        raise ArithmeticError('complete finite source trace changed')
    Rz = abs(t)+Q(5,2)
    B = Q(E)**n0*(1+Rz*Rz)*majorant(p,Rz)
    C = majorant(p,abs(t)+2)**2
    v_lower = cosh_lower(ell*b)
    if C <= 0 or v_lower <= 1:
        raise ArithmeticError('nonzero norm or normalization gap missing')
    tail0 = quartic_tail_constant()*B*B
    n1, tail = first_tail_index(tail0,M,n0,max_steps)
    if not tail == tail0/Q(4)**(n1-n0) or not tail < M/2:
        raise ArithmeticError('tail recurrence mismatch')
    # An explicit synthetic infinite spectrum: the input divisor plus simple real
    # pairs +/-k for k >= K. N(T)<=20+2T<=30T^2 for every T>=1.
    K = ceilq(abs(t)+R)+1
    return {
      'schema':SCHEMA,
      'source_kind':'SYNTHETIC_INFINITE_SPECTRUM_NOT_ZETA_DATA',
      'selected':selected.json(),
      'finite_source':[{'node':z.json(),'multiplicity':m} for z,m in counts.items()],
      'far_source':{'description':'simple real nodes +k and -k for all integers k>=K','K':K},
      'test_only_pole_nodes':[z.json() for z in pole_nodes],
      'coefficients':[str(c) for c in p], 'degree':d,
      'pair_mass':str(M),'shift':str(ell),'base_half_support':str(a0),
      'strip_exponential_upper':E,'near_window_radius':R,
      'baseline_power':n0,'integrability_exponent':k,
      'normalizer_lower':str(v_lower),
      'normalizer_status':'lower bound for H(i*b), not its computed value',
      'strip_weighted_constant':str(B),'norm_prefactor':str(C),
      'global_weighted_mass_upper':'190','baseline_tail_upper':str(tail0),
      'first_power':n1,'tail_at_first_power':str(tail),
      'all_later_tail_ratio':'1/4',
      'negative_margin':str(M/2),
      'test_half_support_at_first_power':str(n1*a0),
      'convolution_half_support_at_first_power':str(2*n1*a0),
      'rayleigh_prefactor':str(M/(2*C)),
      'rational_growth_rate_lower':str(rate_lower(b,ell)),
      'limiting_fixed_pair_rate':str(2*abs(b)),
      'scope':{
        'finite_interpolation_checked':True,'scalar_costs_checked':True,
        'all_near_nodes_are_actual_zeta_nodes':False,
        'compact_fourier_integrals_evaluated':False,
        'actual_weil_lower_bound_proved':False,
        'native_Lean_checked':False,'RH_proof':False},
    }


def examples() -> dict:
    r = Gaussian(2,Q(1,4))
    source = (r,r.conj(),-r,-r.conj(),Gaussian(0),Gaussian(4),Gaussian(-4))
    r0=Gaussian(0,Q(1,8))
    src0=(r0,r0.conj(),Gaussian(2),Gaussian(-2))
    rsmall=Gaussian(2,Q(1,16))
    small=(rsmall,rsmall.conj(),-rsmall,-rsmall.conj(),Gaussian(0))
    return {
      'schema':'weil-compact-power-examples-v1',
      'outcome':'EXACT_SCALAR_CERTIFICATES_WRITTEN_CONTINUUM_NOT_NATIVE',
      'profiles':[profile(source,r,Q(ell)) for ell in (4,8,16,32)] +
                 [profile(src0,r0,Q(16)),profile(small,rsmall,Q(64))],
      'rate_sequence':[
        {'b':'1/4','shift':ell,'rate_lower':str(rate_lower(Q(1,4),Q(ell)))}
        for ell in (4,8,16,32,64,128,256)],
      'assumptions':['published complete zero counting for the actual-source application',
                     'complete finite source-window isolation before powers increase',
                     'classical compact convolution/Fourier/Weil identities'],
      'unpaid':'source-specific negative spectral growth upper bound',
      'RH_proof':False,'new_zero_free_region':False,'native_Lean_checked':False,
    }


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    data=examples()
    payload=json.dumps(data,indent=2,sort_keys=True,allow_nan=False)+'\n'
    with args.output.open('x',encoding='utf-8') as f:
        f.write(payload)
    print(json.dumps({'output_sha256':sha256(payload.encode()).hexdigest(),
                      'profiles':len(data['profiles']),
                      'RH_proof':False,'native_Lean_checked':False},sort_keys=True))

if __name__=='__main__':
    main()
