#!/usr/bin/env python3
"""Source-exact Hankel quotient and reflected Laguerre overlap certificates.

Direction: grwtsk contributors. Derivation/implementation: OpenAI ChatGPT. MIT.
The infinite identities have written proofs. This program certifies finite
rational calculations, not Lean admission, an all-depth estimate, or RH.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from math import comb, factorial
from fractions import Fraction as Q
from pathlib import Path
import arithmetic_quotient_sections as source

I = source.I
UPSTREAM_SHA256 = 'efc700c5aca9223b4ca07743e69e6469f61e6dd55aed53ee7e5f550a80d5580e'  # filled from the inspected immutable source bytes
GRID_BITS = 160


def require(condition, message):
    if not condition:
        raise ValueError(message)


def pinned_source():
    raw = Path(source.__file__).read_bytes()
    require(hashlib.sha256(raw).hexdigest() == UPSTREAM_SHA256,
            'arithmetic source drift: a reviewed pin and fresh replay are required')


def transpose(a):
    require(bool(a) and bool(a[0]) and all(len(r) == len(a[0]) for r in a),
            'nonempty rectangular matrix required')
    return [list(r) for r in zip(*a)]


def matmul(a, b):
    bt = transpose(b)
    require(bool(a) and all(len(r) == len(b) for r in a), 'matrix shape mismatch')
    return [[sum((x*y for x, y in zip(r, c)), Q(0)) for c in bt] for r in a]


def hankel(c, n):
    source.integer(n, 'section size', 1, 32)
    require(len(c) >= 2*n, 'terminal coefficient c_(2N-1) is required')
    return [[c[i+j+1] for j in range(n)] for i in range(n)]


def toeplitz(c, n):
    source.integer(n, 'section size', 1, 32)
    require(len(c) >= n, 'complete Toeplitz prefix required')
    return [[c[i-j] if i >= j else Q(0) for j in range(n)] for i in range(n)]


def quotient_bridge(a, c, n):
    require(len(a) == len(c) and len(a) >= 2*n, 'matched complete source prefixes required')
    b = [((1 if k == 0 else 0)-x)/2 for k, x in enumerate(c)]
    bt = toeplitz(b, n)
    ha, hc = hankel(a, n), hankel(c, n)
    k = matmul(ha, transpose(bt))
    reconstructed = [[2*x for x in r] for r in matmul(bt, k)]
    return k, hc, [[x-y for x, y in zip(r, s)] for r, s in zip(hc, reconstructed)]


def laguerre(n):
    source.integer(n, 'Laguerre degree', 0, 64)
    return [Q((-1)**j*comb(n, j), factorial(j)) for j in range(n+1)]


def polynomial_value(c, x):
    x = source.exact(x)
    out = Q(0)
    for v in reversed(c):
        out = out*x+v
    return out


def reflected_polynomial(c):
    """Coefficients of p(1-t); reflection retains every odd contribution."""
    return [sum((c[k]*comb(k, j)*(-1)**j for k in range(j, len(c))), Q(0))
            for j in range(len(c))]


def integral_product(a, b):
    return sum((x*y/Q(i+j+1) for i, x in enumerate(a)
                for j, y in enumerate(b)), Q(0))


def laguerre_channels(x, n):
    x = source.exact(x)
    source.integer(n, 'channel size', 1, 16)
    require(x >= 0, 'nonnegative spectral argument required')
    features = [[v*x**k for k, v in enumerate(laguerre(j))] for j in range(n)]
    reflected = [reflected_polynomial(p) for p in features]
    even = [[(a+b)/2 for a, b in zip(p, r)] for p, r in zip(features, reflected)]
    odd = [[(a-b)/2 for a, b in zip(p, r)] for p, r in zip(features, reflected)]
    eg = [[integral_product(p, q) for q in even] for p in even]
    og = [[integral_product(p, q) for q in odd] for p in odd]
    cross = [[integral_product(p, q) for q in reflected] for p in features]
    return eg, og, cross


def continuum_coefficients(n):
    """Exact integral of y^(-3/2) q_k(2 log y), y from 1 to infinity."""
    source.integer(n, 'coefficient count', 1, 64)
    return [Q(2)] + [-8*Q(-3)**(k-1) for k in range(1, n)]


def discrepancy_polynomial(k):
    """p(t) with d/dx[x^(-3/2) q_k(2log x)]=x^(-5/2)p(log x)."""
    source.integer(k, 'coefficient index', 0, 63)
    q = source.prime_jet_polynomials(k+1)[k]
    p = [v*2**j for j, v in enumerate(q)]
    derivative = [(j+1)*p[j+1] for j in range(len(p)-1)] + [Q(0)]
    return [v-Q(3, 2)*w for v, w in zip(derivative, p)]


def filtered_reconstruction_error(a_error, c_error, h_norm, b_norm):
    """Complete one-sided error; arguments are certified nonnegative norm bounds."""
    e, f, h, b = map(source.exact, (a_error, c_error, h_norm, b_norm))
    require(min(e, f, h, b) >= 0, 'nonnegative reconstruction bounds required')
    return e*b+h*f/2+e*f/2


def clean_box(x, bits=GRID_BITS):
    return I.outward(x.lo, x.hi, bits)


def short_box(x):
    return clean_box(x, 96).record()


def quadratic(g, v):
    return sum((v[i]*g[i][j]*v[j] for i in range(len(v))
                for j in range(len(v))), Q(0))


def proposed_vector(g, steps=16):
    """Deterministic rational proposal only; acceptance uses the full interval Gram."""
    n = len(g)
    m = [[(x.lo+x.hi)/2 for x in r] for r in g]
    v = [Q(1)]*n
    grid = 10**12
    for _ in range(steps):
        w = [sum((x*y for x, y in zip(r, v)), Q(0)) for r in m]
        scale = max(abs(x) for x in w)
        if not scale:
            break
        v = [Q((x*grid/scale).numerator//(x*grid/scale).denominator, grid) for x in w]
    if not any(v):
        v[0] = Q(1)
    return v


def coupled_norm_certificate(matrix, bound, vector=None):
    """Squared operator norm < bound, with the whole orthogonal complement paid."""
    bound = source.exact(bound)
    require(bound > 0, 'positive squared norm bound required')
    require(matrix and all(isinstance(x, I) for r in matrix for x in r),
            'interval matrix required')
    g = matmul(matrix, transpose(matrix))
    v = proposed_vector(g) if vector is None else [source.exact(x) for x in vector]
    require(len(v) == len(g) and any(v), 'nonzero complete vector required')
    v2 = sum((x*x for x in v), Q(0))
    a = quadratic(g, v)/v2
    gv = [sum((x*y for x, y in zip(r, v)), Q(0)) for r in g]
    r = sum((x.square() for x in gv), Q(0))/v2-a.square()
    c = sum((g[i][i] for i in range(len(g))), Q(0))-a
    require(r.hi >= 0 and c.hi >= 0, 'inconsistent positive-Gram enclosure')
    x, y = bound-a.hi, bound-c.hi
    require(x > 0 and y > 0 and x*y > r.hi, 'coupled norm margin not certified')
    return {'squared_norm_bound': str(bound), 'strict': True,
            'vector': [str(x) for x in v], 'rayleigh': short_box(a),
            'complement_trace': short_box(c), 'coupling_squared': short_box(r),
            'positive_margin_lower': str(I.outward(x*y-r.hi, x*y-r.hi, 96).lo),
            'complement_discarded': False}


def moment_section(c, n):
    t, h = toeplitz(c, n), hankel(c, n)
    g = matmul(h, transpose(h))
    g2 = matmul(g, g)
    tr = sum((g[i][i] for i in range(n)), Q(0))
    tr3 = sum((g2[i][j]*g[j][i] for i in range(n) for j in range(n)), Q(0))
    numerator = tr3-(n-1)*(tr/n).power(3)
    require(numerator.hi >= 0, 'inconsistent cubic numerator')
    norm_lower = I.point(sum((x.square().lo for x in c[:n]), Q(0)), GRID_BITS).sqrt().lo
    upper = max(Q(0), numerator.hi)/(1+norm_lower)**6
    upper = I.outward(0, upper, 96).hi
    require(upper < Q(1, 600), 'finite J bound not certified')
    return {'size': n, 'terminal_index': 2*n-1,
            'cubic_numerator': short_box(numerator),
            'J_upper': str(upper), 'strict_bound': '1/600', 'all_depth': False}


def verify_box_identity(a, c, n):
    k, h, residual = quotient_bridge(a, c, n)
    require(all(x.lo <= 0 <= x.hi for r in residual for x in r),
            'source Hankel identity enclosures disagree')
    return k, h, max(x.abs_upper() for r in residual for x in r)


def finite_controls():
    eg, og, cross = laguerre_channels(Q(1), 2)
    v = [Q(1), Q(-2)]
    wrong = [[integral_product(p, q) for q in [laguerre(0), laguerre(1)]]
             for p in [laguerre(0), laguerre(1)]]
    signed = quadratic(cross, v)
    unsigned = quadratic(wrong, v)
    require(signed == -Q(1, 3) and unsigned == Q(1, 3), 'reflection negative control changed')
    return {'reflected_reading': str(signed), 'unreflected_reading': str(unsigned),
            'dropped_odd_channel_permitted': False,
            'continuum_first_eight': [str(x) for x in continuum_coefficients(8)]}


def produce(bits=512):
    pinned_source()
    require(type(bits) is int and bits in (512, 640), 'profile must be 512 or 640 bits')
    a, rem = source.logarithmic_xi_jet(64, 128, 64, bits)
    c, qcert = source.certified_quotient(a)
    a, c = [clean_box(x) for x in a], [clean_box(x) for x in c]
    k, h, error = verify_box_identity(a, c, 32)
    denominator = 1 << GRID_BITS
    def pair(x):
        lo, hi = x.lo*denominator, x.hi*denominator
        require(lo.denominator == hi.denominator == 1, 'non-grid export')
        return [str(lo.numerator), str(hi.numerator)]
    return {'schema': 'hankel-quotient-bridge-v1', 'coefficient_count': 64,
            'source': 'unchanged F=(xi_prime/xi-1)/(xi_prime/xi+1), s=(3+w)/(2(1-w))',
            'working_bits': bits, 'matrix_bits': GRID_BITS,
            'cutoff': 128, 'em_order': 64, 'analytic_remainders': rem,
            'coefficient_denominator': str(denominator),
            'logarithmic_jet': [pair(x) for x in a], 'quotient_jet': [pair(x) for x in c],
            'quotient_reconstruction': qcert,
            'identity_interval_residual_upper': str(I.outward(0, error, 96).hi),
            'filtered_K': coupled_norm_certificate(k, Q(7, 25)),
            'hankel_H': coupled_norm_certificate(h, Q(23, 50)),
            'principal_compression_scope': {'minimum': 1, 'maximum': 32},
            'sections': [moment_section(c, n) for n in (1, 2, 4, 8, 16, 32)],
            'controls': finite_controls(),
            'RH_proved': False, 'all_depth_bound': False, 'native_Lean_admission': False,
            'new_zero_exclusion': False,
            'verification_grade': 'FINITE_RATIONAL_WITH_WRITTEN_ANALYTIC_REMAINDERS'}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--bits', type=int, choices=(512, 640), default=512)
    args = p.parse_args()
    print(json.dumps(produce(args.bits), sort_keys=True, indent=2))


if __name__ == '__main__':
    main()
