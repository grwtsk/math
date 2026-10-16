#!/usr/bin/env python3
"""Rational cost certificates for compactifying a signed Gaussian pair test.

Direction: grwtsk contributors. Derivation/implementation: OpenAI ChatGPT. MIT.
The smooth-cutoff and Fourier statements are WRITTEN analysis, not executed
integration or Lean acceptance. Examples are synthetic infinite spectra with
an explicit counting envelope, never alleged off-line zeta zeros.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as Q
from math import comb, factorial
from pathlib import Path
import json
from typing import Sequence
from finite_hermite_isolation import (
    Gaussian as G, Poly, ZERO, ONE, I, add, mul, scale, trim, isolate, evaluate,
    divisor, rational,
)

MAX_DEGREE = 32
MAX_INTEGER = 100000
D1, D2 = Q(36), Q(144)


def exact(x: object, *, positive: bool = False) -> Q:
    z = rational(x)
    if positive and z <= 0:
        raise ValueError('strictly positive rational required')
    if z.numerator.bit_length() + z.denominator.bit_length() > 16384:
        raise ValueError('rational resource budget exceeded')
    return z


def natural(n: object, lo: int, hi: int) -> int:
    if type(n) is not int or not lo <= n <= hi:
        raise ValueError('integer outside frozen resource profile')
    return n


def polynomial(p: Sequence[G], *, real: bool = False) -> Poly:
    p = tuple(p)
    if len(p) > MAX_DEGREE + 1 or any(type(c) is not G for c in p):
        raise ValueError('bounded exact Gaussian-rational polynomial required')
    p = trim(p)
    if not p or (real and any(c.im for c in p)):
        raise ValueError('nonzero real-coefficient polynomial required')
    for c in p:
        exact(c.re); exact(c.im)
    return p


def derivative(p: Poly) -> Poly:
    return trim(tuple(k * p[k] for k in range(1, len(p))))


def l1(p: Poly) -> Q:
    return sum((abs(c.re) + abs(c.im) for c in p), Q(0))


def ceilq(x: Q) -> int:
    return -(-x.numerator // x.denominator)


def exp_negative_upper(x: Q) -> Q:
    """exp(-x) <= 2^(-floor(x)) for x>=0. No floating-point exponentiation."""
    x = exact(x)
    if x < 0:
        raise ValueError('nonnegative exponent required')
    k = natural(x.numerator // x.denominator, 0, 1000000)
    return Q(1, 1 << k)


def inverse_amplitude(p: Poly, t: Q, L: int) -> Poly:
    """P(iD)[exp(-itx-x²/(4L))] / exp(-itx-x²/(4L)).

    The separate normalization is exp(-L b²)/(2 sqrt(pi L)); it is NOT 1.
    It is bounded by 1 only in numerical allowances (L>=1).
    """
    p = polynomial(p, real=True); t = exact(t); natural(L, 1, MAX_INTEGER)
    u, out = (ONE,), ()
    for c in p:
        out = add(out, scale(u, c))
        u = add(mul((G(t), -I / (2 * L)), u), scale(derivative(u), I))
    return out


def physical_derivative_amplitude(p: Poly, t: Q, L: int) -> Poly:
    t = exact(t); natural(L, 1, MAX_INTEGER)
    return add(derivative(p), mul((-I * t, G(-Q(1, 2 * L))), p))


def gaussian_tail_coefficient(k: int, R: Q, L: int) -> Q:
    """J_k=integral_R^infinity x^k exp(-x²/(8L)) dx <= B_k exp(-R²/(8L))."""
    natural(k, 0, MAX_DEGREE + 2); R = exact(R, positive=True)
    natural(L, 1, MAX_INTEGER)
    out = [4 * L / R, Q(4 * L)]
    for j in range(2, k + 1):
        out.append(4 * L * R ** (j - 1) + 4 * L * (j - 1) * out[j - 2])
    return out[k]


def weighted_derivative_tails(p: Poly, t: Q, L: int, R: Q, A: Q = Q(1, 2)) -> tuple[Q, ...]:
    p = polynomial(p, real=True); t = exact(t); A = exact(A); R = exact(R)
    natural(L, 1, MAX_INTEGER)
    if A < 0 or R < max(Q(1), 8 * A * L):
        raise ValueError('tail onset R>=max(1,8AL) is required')
    amp = inverse_amplitude(p, t, L)
    envelope = exp_negative_upper(R * R / (8 * L))
    d = len(p) - 1
    out = []
    for j in range(3):
        out.append(2 * l1(amp) * gaussian_tail_coefficient(d + j, R, L) * envelope)
        amp = physical_derivative_amplitude(amp, t, L)
    return tuple(out)


def cutoff_error(p: Poly, t: Q, L: int, R: Q, A: Q = Q(1, 2)) -> dict:
    R = exact(R); A = exact(A)
    e0, e1, e2 = weighted_derivative_tails(p, t, L, R, A)
    delta = e2 + (2 * D1 / R + 2 * A) * e1 + (
        1 + D2 / R ** 2 + 2 * A * D1 / R + A ** 2) * e0
    return {'derivative_tails': [str(e0), str(e1), str(e2)], 'delta': str(delta),
            'norm': 'sup_{|Im z|<=A} (1+Re(z)^2)|G_R(z)-G_L(z)|',
            'cutoff_support': str(2 * R), 'cutoff_derivative_bounds': ['1', str(D1 / R), str(D2 / R ** 2)]}


def shifted_absolute_majorant(p: Poly, t: Q, A: Q) -> list[Q]:
    p = polynomial(p, real=True); t = exact(t); A = exact(A)
    if A < 0:
        raise ValueError('negative strip width')
    C = abs(t) + A
    out = [Q(0)] * len(p)
    for j, c in enumerate(p):
        for k in range(j + 1):
            out[k] += abs(c.re) * comb(j, k) * C ** (j - k)
    return out


def real_mul(p: list[Q], q: list[Q]) -> list[Q]:
    out = [Q(0)] * (len(p) + len(q) - 1)
    for i, a in enumerate(p):
        for j, b in enumerate(q):
            out[i + j] += a * b
    return out


def factorial_bound(p: list[Q]) -> Q:
    return sum((a * factorial(k) for k, a in enumerate(p)), Q(0))


def strip_bound(p: Poly, t: Q, L: int, A: Q = Q(1, 2)) -> Q:
    natural(L, 1, MAX_INTEGER)
    r = shifted_absolute_majorant(p, t, A)
    k = natural(ceilq(L * A * A), 0, MAX_INTEGER)
    return 3 ** k * factorial_bound(r)


def base_weighted_square_bound(p: Poly, t: Q) -> Q:
    """sup strip (1+Re(z)^2)|G_1(z)|² <= K, with |Im z|<=1/2."""
    t = exact(t)
    r = shifted_absolute_majorant(p, t, Q(1, 2))
    q = real_mul(real_mul(r, r), [1 + 2 * t * t, Q(0), Q(2)])
    return 2 * factorial_bound(q)  # exp(1/2)<=2; exp(-2b²)<=1


def choose_schedule(p: Poly, t: Q, pair_mass: Q, count_C: Q,
                    *, max_steps: int = 32) -> dict:
    """Cost schedule conditional on the stated count and exact selector contracts.

    NOT a checker of zeta source positivity, roots, zero counts or all-scale RH.
    """
    p = polynomial(p, real=True); t = exact(t)
    M = exact(pair_mass, positive=True); C = exact(count_C, positive=True)
    natural(max_steps, 1, 64)
    S = 27 * C
    K = base_weighted_square_bound(p, t)
    L = 1
    tail = S * K
    while tail > M / 4:
        L += 1
        if L > MAX_INTEGER:
            raise RuntimeError('Gaussian-width resource limit')
        tail /= 2
    B = strip_bound(p, t, L)
    R = Q(4 * L)  # A=1/2 and the declared tail onset
    for step in range(max_steps):
        cut = cutoff_error(p, t, L, R)
        delta = Q(cut['delta'])
        cost = S * delta * (2 * B + delta)
        if cost <= M / 4:
            return {
                'L': L, 'R': str(R), 'support_radius': str(2 * R),
                'pair_mass': str(M), 'count_C': str(C), 'weighted_count_bound': str(S),
                'base_gaussian_weighted_square_bound': str(K), 'strip_value_bound': str(B),
                'gaussian_tail_upper': str(tail), 'compactification': cut,
                'signed_trace_change_upper': str(cost),
                'final_signed_trace_upper': str(-M + tail + cost),
                'guaranteed_negative_margin': str(M / 2),
                'search_steps': step + 1,
                'conditions': ['exact pair values +i,-i; all other near-window zeros killed',
                    'multiplicity count <=C*(1+T)^(3/2), every T>=0',
                    'source frequencies lie in |Im z|<=1/2',
                    'Gaussian and cutoff are exactly the written functions'],
                'does_not_certify': ['actual zeta-zero data', 'arithmetic positivity', 'Lean acceptance', 'RH'],
            }
        R *= 2
    raise RuntimeError('compactification search resource limit; no certificate emitted')


def examples() -> dict:
    rows = []
    for t, b, repeat in [(Q(0), Q(1, 4), 1), (Q(2), Q(1, 16), 1), (Q(2), Q(1, 256), 3)]:
        target = G(t, b)
        points = [target, target.conj()] * repeat + [G(t - 1), G(t), G(t + 1)]
        p = isolate(points, target)
        M = Q(2 * repeat)
        row = {'target': target.json(), 'selector': [c.json() for c in p],
               'finite_near_divisor': [z.json() for z in points],
               'spectrum': 'integer real lattice plus selected pair and its negatives; retain specified multiplicities; t=0 identifies reflected locations',
               'count_proof': 'integer lattice count <=2T+1; added multiplicity <=12; hence <=32(1+T)^(3/2)',
               'schedule': choose_schedule(p, t, M, Q(32))}
        rows.append(row)
    return {'schema': 'gaussian-compactification-costs-v1',
            'scope': 'SYNTHETIC_INFINITE_SPECTRA; RATIONAL_ALLOWANCES_FOR_WRITTEN_ANALYSIS',
            'examples': rows, 'source_positive_witness': False, 'RH': False,
            'native_lean': False, 'actual_fourier_integrals_evaluated': False}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    result = examples()
    with args.output.open('x', encoding='utf-8') as f:
        json.dump(result, f, indent=2, sort_keys=True, allow_nan=False)
        f.write('\n')


if __name__ == '__main__':
    main()
