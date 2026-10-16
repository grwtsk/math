#!/usr/bin/env python3
"""Finite signed prime-toggle packets of the literal localized Mobius source.

Human mathematical direction: R.A. Jacob Martone.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

The packet keeps actual mu(n) at squarefree n having exactly one prime factor
outside a FIXED finite prime set. Its complement is always retained, including
the complete mixed energy. This is not the positive/negative-part split.
General PNT asymptotics and comparison barriers are written mathematics, not
proved by these finite diagnostics. No uniform core bound or Lean admission.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as Q
import json
from typing import Sequence

from one_third_energy import Interval as I, moebius_coefficients, sixth_root


def exact(value: int | Q, name: str) -> Q:
    if type(value) is not int and not isinstance(value, Q):
        raise TypeError(f'{name} must be an integer or Fraction')
    return Q(value)


def natural(value: int, name: str) -> int:
    if type(value) is not int or value < 1:
        raise ValueError(f'{name} must be a positive integer')
    return value


def precision(bits: int) -> int:
    if type(bits) is not int or not 8 <= bits <= 512:
        raise ValueError('bits must be an integer in [8,512]')
    return bits


def is_prime(n: int) -> bool:
    if type(n) is not int or n < 2:
        return False
    p = 2
    while p * p <= n:
        if n % p == 0:
            return False
        p += 1
    return True


def prime_set(values: Sequence[int]) -> tuple[int, ...]:
    values = tuple(values)
    if len(values) != len(set(values)):
        raise ValueError('duplicate prime')
    if any(not is_prime(p) for p in values):
        raise ValueError('every selected value must be prime')
    return tuple(sorted(values))


def density_factor(primes: Sequence[int]) -> Q:
    result = Q(1)
    for p in prime_set(primes):
        result *= Q(p - 1, p)
    return result


def signed_divisors(primes: Sequence[int], limit: int) -> list[tuple[int, int]]:
    """All d<=limit supported on the selected primes, paired with mu(d)."""
    natural(limit, 'limit')
    out = [(1, 1)]
    for p in prime_set(primes):
        out += [(d * p, -sign) for d, sign in out if d * p <= limit]
    return sorted(out)


def packet_sources(limit: int, primes: Sequence[int]) -> tuple[list[int], list[int], list[int]]:
    natural(limit, 'limit')
    selected = prime_set(primes)
    mu = moebius_coefficients(limit)
    packet = [0] * (limit + 1)
    for n in range(1, limit + 1):
        if mu[n] == 0:
            continue
        remainder = n
        for p in selected:
            if remainder % p == 0:
                remainder //= p
        if is_prime(remainder):
            packet[n] = mu[n]
    return mu, packet, [a - b for a, b in zip(mu, packet)]


def orbit_packet(limit: int, primes: Sequence[int]) -> list[int]:
    """Independent finite d*p expansion; never uses mu(n) for the output."""
    natural(limit, 'limit')
    selected = prime_set(primes)
    outside = [p for p in range(2, limit + 1) if is_prime(p) and p not in selected]
    out = [0] * (limit + 1)
    for d, sign in signed_divisors(selected, limit):
        for p in outside:
            if d * p > limit:
                break
            out[d * p] -= sign
    return out


def packet_prefix(cutoff: int | Q, primes: Sequence[int]) -> int:
    """Exact -sum_(d|P) mu(d)*pi_notS(floor(x/d)); all sums are finite."""
    x = exact(cutoff, 'cutoff')
    if x < 1:
        raise ValueError('cutoff must be at least one')
    selected = prime_set(primes)
    N = x.numerator // x.denominator
    return -sum(sign * sum(is_prime(p) and p not in selected
                           for p in range(2, x.numerator // (x.denominator * d) + 1))
                for d, sign in signed_divisors(selected, N))


def _filtered_prefixes(coeff: Sequence[Q], bits: int) -> list[tuple[I, I]]:
    A, M = [I.point(0)], [Q(0)]
    for n in range(1, len(coeff)):
        A.append((A[-1] + coeff[n] * sixth_root(Q(n), bits) ** -3).outward(bits + 16))
        M.append(M[-1] + coeff[n])
    root2 = sixth_root(Q(2), bits) ** 3
    alpha = root2.reciprocal()
    return [(A[n] - (1 + alpha) * A[n // 2] + alpha * A[n // 4],
             I.point(M[n]) - (1 + root2) * M[n // 2] + root2 * M[n // 4])
            for n in range(len(coeff))]


def localized_inner(left: Sequence[int | Q], right: Sequence[int | Q],
                    cutoff: int | Q, bits: int = 64) -> I:
    """Finite integral of x^(-5/3)*L_left(x)*L_right(x), including mixed signs."""
    precision(bits)
    x = exact(cutoff, 'cutoff')
    if x < 1:
        raise ValueError('cutoff must be at least one')
    N = x.numerator // x.denominator
    if len(left) != N + 1 or len(right) != N + 1 or left[0] != 0 or right[0] != 0:
        raise ValueError('require exactly indices 0..floor(x), with index zero zero')
    a, b = ([exact(v, 'coefficient') for v in row] for row in (left, right))
    f, g = _filtered_prefixes(a, bits), _filtered_prefixes(b, bits)
    out = I.point(0)
    for n in range(1, N + 1):
        upper = min(Q(n + 1), x)
        if upper == n:
            continue
        l, r = sixth_root(Q(n), bits), sixth_root(upper, bits)
        d4, d7, d10 = (l ** -p - r ** -p for p in (4, 7, 10))
        A, B = f[n]
        C, D = g[n]
        term = 6 * A * C * d4 - Q(24, 7) * (A * D + B * C) * d7 + Q(12, 5) * B * D * d10
        out = (out + term).outward(bits + 16)
    return out.outward(bits)


def packet_record(cutoff: int | Q, primes: Sequence[int], bits: int = 64) -> dict:
    precision(bits)
    x = exact(cutoff, 'cutoff')
    if x < 1:
        raise ValueError('cutoff must be at least one')
    selected = prime_set(primes)
    N = x.numerator // x.denominator
    mu, a, b = packet_sources(N, selected)
    if a != orbit_packet(N, selected) or sum(a) != packet_prefix(x, selected):
        raise ArithmeticError('independent prime-orbit or cutoff identity failed')
    A = localized_inner(a, a, x, bits)
    C = localized_inner(a, b, x, bits)
    E = localized_inner(b, b, x, bits)
    G = localized_inner(mu, mu, x, bits)
    values = {'full_energy': G, 'packet_energy': A, 'remainder_energy': E,
              'signed_mixed_energy': C, 'energy_identity_residual': G - A - 2 * C - E}
    active = any(a[n] and n < x for n in range(1, N + 1))
    if active:
        if A.lo <= 0:
            raise ArithmeticError('packet norm not separated from zero; increase precision')
        residual = E - C ** 2 / A
        aligned = (A + C) ** 2 / A
        values.update({'regression_coefficient': C / A, 'orthogonal_residual': residual,
                       'aligned_residual': aligned,
                       'schur_identity_residual': G - aligned - residual})
        state = 'positive_packet_norm'
    else:
        state = 'zero_packet_no_division'
    checks = {k: v.contains_zero() for k, v in values.items() if k.endswith('identity_residual')}
    if not all(checks.values()):
        raise ArithmeticError('incompatible interval identities')
    return {'cutoff': str(x), 'selected_primes': list(selected),
            'density_factor': str(density_factor(selected)), 'packet_norm_state': state,
            'source_scope': 'actual Mobius restriction plus its retained complement; not a sign split',
            'intervals': {k: v.outward(bits).json() for k, v in values.items()}, 'consistency': checks}


def comparison_witness(xi: int | Q, length_total: int | Q, ell: int | Q) -> dict[str, Q]:
    """Exact algebra of Liu v2 (34.1); NOT an imported analytic theorem.

    Source length constraints M>2ell additionally force L0>5/6. Thus a
    better character count alone cannot reach 5/6 inside the unchanged system.
    """
    xi, M, ell = (exact(v, n) for v, n in ((xi, 'xi'), (length_total, 'M'), (ell, 'ell')))
    if not Q(19, 50) <= xi <= Q(39, 100):
        raise ValueError('xi outside the source critical-class interval')
    den = 9 + 18 * xi
    w0, wK, wH = (4 + 18 * xi) / den, Q(2) / den, Q(3) / den
    L0, LK = Q(5, 6) + M / 12 - ell / 6, Q(1, 3) + 7 * M / 12 + ell / 3
    H = 1 + xi - (1 + xi) * M / 2 + xi * ell
    F = (18 * xi + 7) / den
    if w0 + wK + wH != 1 or w0 * L0 + wK * LK + wH * H != F:
        raise ArithmeticError('affine dual identity failed')
    return {'L0': L0, 'LK': LK, 'H': H, 'w0': w0, 'wK': wK, 'wH': wH,
            'weighted_lower_bound': F, 'weighted_gain_needed_for_five_sixths': F - Q(5, 6),
            'nonprincipal_only_gain_needed_in_relaxation': xi - Q(1, 6),
            'direct_margin_above_five_sixths': (M - 2 * ell) / 12}


def bound_parameters(primes: Sequence[int]) -> dict[str, Q | int]:
    """Exact coefficients of the WRITTEN log-power and signed-mixed bounds.

    The tail starts at R>=4*exp(385); for the packet also require R>=4*P^2.
    The Mertens supplier is JLT Theorem A.1(A.6), relaxed from 4.88346 to 5.
    No numerical evaluation of exp(385), asymptotic onset, or bound for all R
    is inferred from this parameter routine.
    """
    P, plus = 1, Q(1)
    for q in prime_set(primes):
        P *= q
        plus *= Q(q + 1, q)
    return {'prime_product': P, 'density_factor': density_factor(primes),
            'reciprocal_divisor_mass': plus, 'mertens_log_power': Q(47,20),
            'core_log_power': Q(47,10), 'mixed_log_power': Q(67,20),
            'relative_regression_log_power': Q(27,20),
            'core_tail_coefficient_without_alpha': Q(900),
            'mixed_tail_coefficient_without_alpha': 3240*plus,
            'startup_coefficient': Q(108,25), 'logarithmic_threshold': 385}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--cutoff', type=Q, action='append')
    parser.add_argument('--prime', type=int, action='append')
    parser.add_argument('--bits', type=int, default=64)
    args = parser.parse_args()
    try:
        primes = [2, 3] if args.prime is None else args.prime
        records = [packet_record(x, primes, args.bits) for x in (args.cutoff or [Q(7, 2), Q(17, 2), Q(64)])]
        witness = comparison_witness(Q(38858, 100000), Q(2, 3), Q(1, 3))
        print(json.dumps({'schema': 'signed-prime-packet-finite-v1', 'records': records,
                          'comparison_relaxation': {k: str(v) for k, v in witness.items()},
                          'relaxed_target_point_is_admissible': False,
                          'written_bound_parameters': {k: str(v) for k,v in bound_parameters(primes).items()},
                          'scope': 'finite coefficient checks and rational enclosures; no uniform-core proof',
                          'uniform_core_bound_proved': False, 'lean_replay': 'NOT_RUN'}, indent=2))
    except (ValueError, TypeError, ArithmeticError) as error:
        parser.exit(2, f'error: {error}\n')


if __name__ == '__main__':
    main()
