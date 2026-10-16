#!/usr/bin/env python3
"""Source-exact prime-discrepancy moments and finite Dirichlet interfaces.

Direction: grwtsk contributors. Derivation/implementation: OpenAI ChatGPT. MIT.
Acceptance uses rational intervals, not numerical zeta values or zero tables.
Analytic identities and infinite-tail bounds have accompanying written proofs.
No all-depth arithmetic estimate, zero exclusion, or Lean admission is asserted.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as Q
import hashlib
from math import comb, factorial
from pathlib import Path
import json
import arithmetic_quotient_sections as source

I = source.I
SOURCE_SHA256 = 'efc700c5aca9223b4ca07743e69e6469f61e6dd55aed53ee7e5f550a80d5580e'
GRID_BITS = 160


def require(condition, message):
    if not condition:
        raise ValueError(message)


def source_pin():
    require(hashlib.sha256(Path(source.__file__).read_bytes()).hexdigest() == SOURCE_SHA256,
            'arithmetic interval-source drift')


def compose_half_plane(jet):
    """Complete composition h=2w/(1-w), through the supplied terminal index."""
    require(0 < len(jet) <= 128, 'complete nonempty jet of length at most 128 required')
    return [jet[0]] + [sum((2**j*comb(k-1, j-1)*jet[j] for j in range(1, k+1)), 0)
                     for k in range(1, len(jet))]


def inverse_filter(p):
    """Exact inverse of p_k=-(3u_k+u_(k-1))/2; retain k=0."""
    require(0 < len(p) <= 128, 'nonempty moment prefix of length at most 128 required')
    out = []
    values = [x if isinstance(x, I) else source.exact(x) for x in p]
    for value in values:
        out.append((-2*value-(out[-1] if out else 0))/3)
    return out


def source_moments(n=128, bits=1024, cutoff=128, order=96):
    """Generate u directly from 1/(s-1)+zeta'/zeta; gamma cancels first."""
    source_pin()
    source.integer(n, 'moment count', 1, 128)
    source.integer(bits, 'working bits', 256, 2048)
    z, remainder = source.zeta_h_jet(n+1, cutoff, order, bits)
    require(z[0].lo > 0, 'initial zeta value not separated from zero')
    derivative = [(k+1)*z[k+1] for k in range(n)]
    logderivative = source.conv(derivative, source.inverse(z, n), n)
    pole = source.inverse_affine(Q(1, 2), 1, 1, n, bits)
    # The pole and prime source are assembled before composition or any norm.
    p = compose_half_plane([a+b for a, b in zip(logderivative, pole)])
    u = inverse_filter(p)
    return p, u, {'zeta_circle_remainder': str(remainder), 'circle_radius': '1/4',
                  's_center': '3/2', 'initial_zeta_box': z[0].record(),
                  'gamma_evaluated': False, 'full_xi_quotient_inverted': False}


def laguerre_t(k):
    source.integer(k, 'polynomial degree', 0, 127)
    return [Q((-2)**j*comb(k, j), factorial(j)) for j in range(k+1)]


def primitive_coefficients(k, rate):
    """Q with rate*Q-Q'=L_k(2t); tail integral is exp(-rate*t)Q(t)."""
    rate = source.exact(rate)
    require(rate > 0, 'positive decay rate required')
    p = laguerre_t(k)
    return [sum((p[j]*Q(factorial(j), factorial(i))/rate**(j-i+1)
                 for j in range(i, k+1)), Q(0)) for i in range(k+1)]


def polynomial_value(coefficients, x):
    value = 0
    for c in reversed(coefficients):
        value = value*x+c
    return value


def prime_power_bases(cutoff):
    """Complete integer sieve. A nonzero entry n names p when n=p^a."""
    source.integer(cutoff, 'prime cutoff', 1, 4096)
    spf = list(range(cutoff+1))
    for p in range(2, cutoff+1):
        if spf[p] == p:
            for n in range(p*p, cutoff+1, p):
                if spf[n] == n:
                    spf[n] = p
    out = [0]*(cutoff+1)
    for n in range(2, cutoff+1):
        p, m = spf[n], n
        while m % p == 0:
            m //= p
        if m == 1:
            out[n] = p
    return out


def half_integer_tail(k, rate, x, bits=256):
    source.integer(x, 'integer endpoint', 1, 4096)
    rate = source.exact(rate)
    require(rate in (Q(1, 2), Q(3, 2)), 'supported half-integer rate required')
    root = I.point(Q(1, x), bits).sqrt()
    factor = root if rate == Q(1, 2) else root/x
    return factor*polynomial_value(primitive_coefficients(k, rate), source.log_q(Q(x), bits))


def finite_head(n=8, cutoff=64, bits=256):
    """Literal finite prime head, including all prime powers and both backgrounds."""
    source.integer(n, 'finite head length', 1, 16)
    source.integer(cutoff, 'finite head cutoff', 1, 4096)
    source.integer(bits, 'finite head precision', 128, 1024)
    bases = prime_power_bases(cutoff)
    if cutoff == 1:
        return [I.point(0, bits) for _ in range(n)]
    out = []
    for k in range(n):
        tail = half_integer_tail(k, Q(3, 2), cutoff, bits)
        value = I.point(0, bits)
        for m in range(2, cutoff+1):
            if bases[m] and m < cutoff:
                # At m=cutoff the integral is exactly zero, not two independent boxes.
                value += source.log_q(Q(bases[m]), bits)*(half_integer_tail(k, Q(3, 2), m, bits)-tail)
        value -= half_integer_tail(k, Q(1, 2), 1, bits)-half_integer_tail(k, Q(1, 2), cutoff, bits)
        value += half_integer_tail(k, Q(3, 2), 1, bits)-tail
        out.append(value)
    return out


def prime_label_tail_squared(n):
    source.integer(n, 'energy size', 1, 4096)
    return Q(16*n*(4*n+1)**2*9**(2*n-2), 256**n)


def mellin_frequency_tail_squared(n):
    """Written bound for X=2^(16N), |tau|>2^(10N); no such ranges enumerated."""
    source.integer(n, 'energy size', 1, 4096)
    return Q(n*(16*n+1)**2, 16**n)


def total_tail_squared(n):
    return 2*(prime_label_tail_squared(n)+mellin_frequency_tail_squared(n))


def dyadic_shells(cutoff):
    source.integer(cutoff, 'dyadic cutoff', 1, 4096)
    pairs, lower = [], 1
    while lower < cutoff:
        upper = min(2*lower, cutoff)
        pairs.append((lower, upper))
        lower = upper
    return pairs


def weighted_layers(squared_values, weights):
    """Exact finite layer-cake identity, including the highest amplitude layer."""
    require(len(squared_values) == len(weights) and 0 < len(weights) <= 4096,
            'matched nonempty finite value and weight inventories required')
    values = [source.exact(x) for x in squared_values]
    weights = [source.exact(x) for x in weights]
    require(min(values) >= 0 and min(weights) >= 0, 'nonnegative squared values and weights required')
    previous, result = Q(0), []
    for level in sorted(set(values)-{Q(0)}):
        mass = sum((weight for value, weight in zip(values, weights) if value >= level), Q(0))
        result.append((level, mass, (level-previous)*mass))
        previous = level
    return result


def grid_box(x):
    return I.outward(x.lo, x.hi, GRID_BITS)


def grid_record(x):
    x = grid_box(x)
    d = 1 << GRID_BITS
    return [str(x.lo.numerator*(d//x.lo.denominator)),
            str(x.hi.numerator*(d//x.hi.denominator))]


def record_profile(bits=1024):
    p, u, analytic = source_moments(bits=bits)
    p, u = list(map(grid_box, p)), list(map(grid_box, u))
    energy = I.point(0, GRID_BITS)
    prefixes = []
    for n, v in enumerate(u, 1):
        energy += v.square()
        if n & (n-1) == 0:
            prefixes.append({'N': n, 'energy_box': energy.record()})
    head = finite_head()
    return {'schema': 'laguerre-dirichlet-profile-v1', 'working_bits': bits,
            'moment_count': 128, 'grid_bits': GRID_BITS, 'cutoff': 128, 'em_order': 96,
            'source_sha256': SOURCE_SHA256, 'analytic': analytic,
            'grid_denominator': str(1 << GRID_BITS), 'p_jet': list(map(grid_record, p)),
            'u_jet': list(map(grid_record, u)), 'energy_prefixes': prefixes,
            'finite_head': {'cutoff': 64, 'length': 8, 'bits': 256,
                            'moments': list(map(grid_record, head)),
                            'includes_touching_prime_power': True,
                            'includes_both_backgrounds': True},
            'tail_squared_by_N': {str(n): {'prime_label': str(prime_label_tail_squared(n)),
                                 'mellin_frequency': str(mellin_frequency_tail_squared(n)),
                                 'total': str(total_tail_squared(n))}
                                 for n in (1, 2, 4, 8, 16, 32, 64, 128)},
            'enormous_cutoffs_executed': False, 'all_depth_bound': False,
            'RH_proved': False, 'new_zero_exclusion': False, 'native_Lean_admission': False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--bits', type=int, choices=(1024, 1152), default=1024)
    args = parser.parse_args()
    print(json.dumps(record_profile(args.bits), sort_keys=True, indent=2))


if __name__ == '__main__':
    main()
