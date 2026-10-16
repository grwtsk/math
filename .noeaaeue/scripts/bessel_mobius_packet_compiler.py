#!/usr/bin/env python3
"""Exact finite arithmetic compiler for the existing Bessel coefficient.

Human mathematical direction: grwtsk contributors.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

The cubic identity is classical (Huxley--Watt, arXiv:1807.05890v1,
equation (1.6), degree three). This program compiles the actual Mobius
coefficients, retaining all product multiplicities and all mixed terms.
It does NOT numerically evaluate the Bessel integrals, prove a uniform
energy bound, or provide native Lean acceptance.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
import json
from typing import Sequence

Exact = int | Q


def positive_integer(value: int, name: str) -> int:
    if type(value) is not int or value < 1:
        raise ValueError(f'{name} must be a positive integer')
    return value


def rational(value: Exact) -> Q:
    if type(value) is not int and not isinstance(value, Q):
        raise TypeError('expected an exact integer or Fraction')
    return Q(value)


def integer_cube_root(value: int) -> int:
    positive_integer(value, 'value')
    low, high = 0, 1 << ((value.bit_length() + 2) // 3)
    while high - low > 1:
        mid = (low + high) // 2
        if mid ** 3 <= value:
            low = mid
        else:
            high = mid
    return low


def mobius_by_factorization(n: int) -> int:
    """Finite exact value; the production compiler calls this only up to U."""
    positive_integer(n, 'n')
    sign, p, rest = 1, 2, n
    while p * p <= rest:
        if rest % p == 0:
            rest //= p
            sign = -sign
            if rest % p == 0:
                return 0
        p += 1
    return -sign if rest > 1 else sign


def dirichlet_convolution(left: Sequence[int], right: Sequence[int],
                          limit: int) -> list[int]:
    """Truncated finite convolution. Missing entries mean zero, not unknown."""
    positive_integer(limit, 'limit')
    for row in (left, right):
        if not row or row[0] != 0 or any(type(v) is not int for v in row):
            raise ValueError('integer coefficient arrays must have index zero equal to zero')
    out = [0] * (limit + 1)
    for a in range(1, min(limit + 1, len(left))):
        if left[a] == 0:
            continue
        for b in range(1, min(limit // a + 1, len(right))):
            if right[b]:
                out[a * b] += left[a] * right[b]
    return out


def cubic_branches(limit: int, short: Sequence[int]) -> tuple[list[int], ...]:
    """Return a, a*a*1, a*a*a*1*1. No inverse property is asserted here."""
    positive_integer(limit, 'limit')
    if len(short) < 2 or len(short) > limit + 1:
        raise ValueError('short source must have indices 0..U with 1<=U<=limit')
    if short[0] != 0 or any(type(v) is not int for v in short):
        raise ValueError('short source must contain exact integers and start with zero')
    a = list(short) + [0] * (limit + 1 - len(short))
    ones = [0] + [1] * limit
    a2 = dirichlet_convolution(a, a, limit)
    second = dirichlet_convolution(a2, ones, limit)
    a3 = dirichlet_convolution(a2, a, limit)
    third = dirichlet_convolution(dirichlet_convolution(a3, ones, limit), ones, limit)
    return a, second, third


@dataclass(frozen=True)
class CubicPacket:
    limit: int
    cutoff: int
    branches: tuple[tuple[int, ...], ...]

    def recombined(self) -> tuple[int, ...]:
        a, b, c = self.branches
        return tuple(3 * x - 3 * y + z for x, y, z in zip(a, b, c))


def compile_prefix(limit: int, cutoff: int | None = None) -> CubicPacket:
    """Use actual mu only through U; enforce limit < (U+1)^3 BEFORE transport."""
    positive_integer(limit, 'limit')
    U = integer_cube_root(limit) if cutoff is None else positive_integer(cutoff, 'cutoff')
    if U > limit or limit >= (U + 1) ** 3:
        raise ValueError('require 1<=U<=limit<(U+1)^3')
    short = [0] + [mobius_by_factorization(k) for k in range(1, U + 1)]
    return CubicPacket(limit, U, tuple(tuple(row) for row in cubic_branches(limit, short)))


def shell_plan(start: int) -> dict[str, int]:
    positive_integer(start, 'start')
    if start < 2 or start & (start - 1):
        raise ValueError('degree-shell start must be a power of two at least two')
    last = 2 * start - 1
    limit = last ** 2
    U = integer_cube_root(limit)
    return {'first_degree': start, 'last_degree': last, 'degree_count': start,
            'closed_source_limit': limit, 'mobius_input_limit': U,
            'strict_support_threshold': (U + 1) ** 3}


def atom_window(degree: int, atom: int) -> tuple[Q, Q]:
    """Exact rational y endpoints; equality denotes the zero touching interval."""
    positive_integer(degree, 'degree')
    positive_integer(atom, 'atom')
    if degree < 2:
        raise ValueError('the finite-source coefficient starts at degree two')
    lower = Q(1, degree ** 4)
    upper = min(Q(1, degree), Q(1, atom ** 2))
    return lower, max(lower, upper)


def atom_kernel_parts(degree: int) -> dict[str, dict[Q, Q]]:
    """Exact scalar prefactors, with B_n'(y) and k^(-1/2) NOT evaluated.

    The sum is [(1-y)/(2 lambda_n)] * [1/3-5 k^(-1/2)y^(-1/4)/6].
    Returning separate symbolic coefficients here is algebraic bookkeeping;
    they are recombined before integration and before any squared norm.
    """
    positive_integer(degree, 'degree')
    if degree < 2:
        raise ValueError('degree must be at least two')
    lam = degree * (Q(degree) + Q(7, 6))
    return {'times_inverse_sqrt_atom': {Q(-1, 4): -Q(5, 12) / lam,
                                          Q(3, 4): Q(5, 12) / lam},
            'constant': {Q(0): Q(1, 6) / lam, Q(1): -Q(1, 6) / lam}}


def apply_test_weights(packet: CubicPacket, weights: Sequence[Exact]) -> tuple[Q, Q, Q, Q]:
    """Exact finite linear transport for TEST weights; not Bessel evaluation."""
    if len(weights) != packet.limit + 1 or weights[0] != 0:
        raise ValueError('weights must be indexed 0..limit and zero at index zero')
    w = [rational(v) for v in weights]
    q = tuple(sum((Q(c) * v for c, v in zip(row, w)), Q(0)) for row in packet.branches)
    return q[0], q[1], q[2], 3 * q[0] - 3 * q[1] + q[2]


def joint_energy(rows: Sequence[Sequence[Exact]], weights: Sequence[Exact]) -> dict[str, Q]:
    """Full six-term expansion of |3T1-3T2+T3|^2; both orders retained."""
    if len(rows) != len(weights):
        raise ValueError('one nonnegative weight required per row')
    names = ('first', 'second', 'third', 'first_second', 'first_third', 'second_third')
    out = {name: Q(0) for name in names}
    direct = Q(0)
    for row, weight in zip(rows, weights):
        if len(row) != 3:
            raise ValueError('each row must contain all three channels')
        a, b, c = map(rational, row)
        w = rational(weight)
        if w < 0:
            raise ValueError('energy weights must be nonnegative')
        parts = (9 * a * a, 9 * b * b, c * c, -18 * a * b, 6 * a * c, -6 * b * c)
        for name, term in zip(names, parts):
            out[name] += w * term
        direct += w * (3 * a - 3 * b + c) ** 2
    out['joint'] = sum(out.values(), Q(0))
    out['direct'] = direct
    out['identity_residual'] = out['joint'] - direct
    return out


def low_phase_plan(degree: int) -> dict[str, Q]:
    """Written bound only: x>=3 nu implies z=2 nu asin(1/x)<=1/sqrt(2).

    The normalized F_(1/6) then is >=25/28, by its Poisson integral.
    This statement concerns F, not the sign or energy of B_n' or t_n.
    """
    positive_integer(degree, 'degree')
    if degree < 4:
        raise ValueError('the displayed nonempty subinterval requires degree>=4')
    nu = Q(degree) + Q(7, 12)
    return {'nu': nu, 'physical_left': 3 * nu, 'physical_right': Q(degree ** 2),
            'argument_squared_upper': Q(1, 2), 'normalized_bessel_lower': Q(25, 28)}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--shell', type=int, action='append')
    parser.add_argument('--max-source', type=int, default=100000)
    args = parser.parse_args()
    try:
        positive_integer(args.max_source, 'max-source')
        records = []
        for start in args.shell or [2, 8, 32, 64]:
            plan = shell_plan(start)
            limit = plan['closed_source_limit']
            if limit > args.max_source:
                raise ValueError('diagnostic source limit exceeded; raise --max-source explicitly')
            bundle = compile_prefix(limit)
            values = bundle.recombined()
            records.append({**plan, 'coefficient_count': limit,
                            'source_queries_beyond_short_cutoff': 0,
                            'branch_l1_masses': [sum(abs(v) for v in row) for row in bundle.branches],
                            'recombined_l1_mass': sum(abs(v) for v in values),
                            'initial_coefficients': list(values[:min(17, len(values))]),
                            'all_cross_channels_required': True})
        print(json.dumps({'schema': 'bessel-mobius-cubic-packets-v1', 'records': records,
                          'scope': 'exact finite arithmetic source compiler only',
                          'bessel_integrals_evaluated': False, 'uniform_energy_bound_proved': False,
                          'lean_replay': 'NOT_RUN'}, indent=2))
    except (ValueError, TypeError, ArithmeticError) as error:
        parser.exit(2, f'error: {error}\n')


if __name__ == '__main__':
    main()
