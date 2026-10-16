#!/usr/bin/env python3
"""Finite reciprocal-zeta moment certificates for the literal Mobius pickup.

Human mathematical direction: R.A. Jacob Martone.
Written derivation and implementation assistance: OpenAI ChatGPT. MIT.

For 0<sigma<=1/2 set alpha=1/2-sigma and
 P_n(y)=P_n^(0,alpha)(2y-1)=sum_j p[n,j] y^j.
The actual moments, independent of sigma, are
 m[j]=1/((2j+3/2)(2j+2)*zeta(2j+2)).
Set d[n]=sum_j p[n,j]m[j] and
 Q_N(sigma)=sum_(n<=N)(4n+3-2sigma)*d[n]^2.
The written moment-uniqueness argument gives sup_T H_sigma(T)=sup_N Q_N
in [0,infinity], WITHOUT assuming half-line L2 membership in advance.
This program encloses finite Q_N only. These are LOWER approximations to
full energy, never upper bounds. The all-degree arithmetic bound is UNPAID.

No network, floating point, zeta black box, or numerical quadrature is used.
Even zeta values use exact Bernoulli numbers and a proved Machin pi bracket.
Interval cancellation is controlled by guard precision and a checked final
width. No Lean admission, zero-free gain, P04 requirement, or RH claim.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction as F
from math import comb, factorial, isqrt
import json
from typing import Sequence


def integer(value: int, name: str, low: int, high: int) -> int:
    if type(value) is not int or not low <= value <= high:
        raise ValueError(f'{name} must be an integer in [{low},{high}]')
    return value


def rational(value: int | F, name: str) -> F:
    if type(value) is not int and not isinstance(value, F):
        raise TypeError(f'{name} must be an exact integer or Fraction')
    return F(value)


def damping(value: int | F) -> F:
    value = rational(value, 'sigma')
    if not 0 < value <= F(1, 2):
        raise ValueError('require 0 < sigma <= 1/2')
    return value


@dataclass(frozen=True)
class Bounds:
    lo: F
    hi: F

    def __post_init__(self) -> None:
        object.__setattr__(self, 'lo', rational(self.lo, 'lower endpoint'))
        object.__setattr__(self, 'hi', rational(self.hi, 'upper endpoint'))
        if self.lo > self.hi:
            raise ValueError('reversed interval')

    @staticmethod
    def point(q: int | F) -> Bounds:
        q = rational(q, 'point')
        return Bounds(q, q)

    def add(self, b: Bounds) -> Bounds:
        return Bounds(self.lo + b.lo, self.hi + b.hi)

    def scale(self, q: int | F) -> Bounds:
        q = rational(q, 'scale')
        ends = (q * self.lo, q * self.hi)
        return Bounds(min(ends), max(ends))

    def mul(self, b: Bounds) -> Bounds:
        ends = [a * c for a in (self.lo, self.hi) for c in (b.lo, b.hi)]
        return Bounds(min(ends), max(ends))

    def square(self) -> Bounds:
        hi = max(self.lo * self.lo, self.hi * self.hi)
        lo = F(0) if self.lo <= 0 <= self.hi else min(self.lo * self.lo, self.hi * self.hi)
        return Bounds(lo, hi)

    def reciprocal(self) -> Bounds:
        if self.lo <= 0 <= self.hi:
            raise ZeroDivisionError('interval contains zero')
        return Bounds(1 / self.hi, 1 / self.lo)

    def outward(self, bits: int) -> Bounds:
        integer(bits, 'rounding bits', 8, 16384)
        scale = 1 << bits
        low = (self.lo.numerator * scale) // self.lo.denominator
        high = -((-self.hi.numerator * scale) // self.hi.denominator)
        return Bounds(F(low, scale), F(high, scale))

    def contains(self, q: int | F) -> bool:
        return self.lo <= q <= self.hi

    def overlaps(self, b: Bounds) -> bool:
        return max(self.lo, b.lo) <= min(self.hi, b.hi)

    def json(self, bits: int) -> dict[str, str]:
        b = self.outward(bits)
        return {'lower': str(b.lo), 'upper': str(b.hi)}


def atan_reciprocal(q: int, terms: int) -> Bounds:
    integer(q, 'arctan denominator', 2, 10000)
    integer(terms, 'arctan terms', 1, 10000)
    total = F(0)
    power = q
    for j in range(terms):
        total += F((-1) ** j, (2*j + 1) * power)
        power *= q*q
    next_term = F((-1) ** terms, (2*terms + 1) * power)
    return Bounds(min(total, total + next_term), max(total, total + next_term))


def pi_bounds(bits: int) -> Bounds:
    integer(bits, 'pi bits', 8, 16380)
    # 5^(2n)>2^(4n); the signed Machin remainder is <20*2^(-4n).
    n = (bits + 24 + 3) // 4
    ans = atan_reciprocal(5, n).scale(16).add(atan_reciprocal(239, n).scale(-4))
    if not F(3) < ans.lo <= ans.hi < F(4):
        raise ArithmeticError('Machin branch check failed')
    if ans.hi - ans.lo >= F(1, 1 << bits):
        raise ArithmeticError('pi remainder budget failed')
    return ans.outward(bits + 4)


def bernoulli_numbers(last: int) -> list[F]:
    integer(last, 'Bernoulli index', 0, 514)
    out = [F(1)]
    for n in range(1, last + 1):
        out.append(-sum((comb(n + 1, k) * out[k] for k in range(n)), F(0)) / (n + 1))
    return out


def jacobi_coefficients(n: int, sigma: int | F = F(1, 3)) -> list[F]:
    integer(n, 'degree', 0, 256)
    alpha = F(1, 2) - damping(sigma)
    v = F((-1) ** n)
    for k in range(1, n + 1):
        v *= (alpha + k) / k
    out = [v]
    for j in range(n):
        v *= F(-n + j) * (n + alpha + 1 + j) / ((alpha + 1 + j) * (j + 1))
        out.append(v)
    return out


def gram(size: int, sigma: int | F = F(1, 3)) -> list[list[F]]:
    integer(size, 'matrix size', 1, 257)
    s = damping(sigma)
    return [[1 / (2*i + 2*j + 3 - 2*s) for j in range(size)] for i in range(size)]


def gram_determinant(size: int, sigma: int | F = F(1, 3)) -> F:
    A = gram(size, sigma)
    out = F(1)
    for i in range(size):
        for j in range(i + 1, size):
            out *= (2*(j-i))**2
        for j in range(size):
            out *= A[i][j]
    return out


def exact_projection_energy(moments: Sequence[int | F], sigma: int | F = F(1, 3)) -> F:
    integer(len(moments), 'moment count', 1, 257)
    s = damping(sigma)
    values = [rational(v, 'moment') for v in moments]
    total = F(0)
    for n in range(len(values)):
        d = sum((c*v for c, v in zip(jacobi_coefficients(n, s), values)), F(0))
        total += (4*n + 3 - 2*s)*d*d
    return total


def reciprocal_moments(degree: int, work_bits: int) -> list[Bounds]:
    integer(degree, 'degree', 0, 256)
    integer(work_bits, 'work bits', 8, 16000)
    b = bernoulli_numbers(2*degree + 2)
    inv_pi2 = pi_bounds(work_bits + 8).square().reciprocal().outward(work_bits + 8)
    power = Bounds.point(1)
    out = []
    for j in range(degree + 1):
        k = j + 1
        if not b[2*k] or ((-1)**(k+1))*b[2*k] <= 0:
            raise ArithmeticError('Bernoulli sign check failed')
        power = power.mul(inv_pi2).outward(work_bits + 8)
        c = F(2*factorial(2*k), 2**(2*k)) / abs(b[2*k])
        z, s = F(4*j + 3, 2), 2*j + 2
        out.append(power.scale(c/(z*s)).outward(work_bits))
    return out


def certificate(degree: int = 32, sigma: int | F = F(1, 3), bits: int = 80,
                work_bits: int | None = None) -> dict:
    integer(degree, 'degree', 0, 256)
    integer(bits, 'output bits', 8, 256)
    sigma = damping(sigma)
    wb = bits + 12*(degree + 1) + 64 if work_bits is None else work_bits
    integer(wb, 'work bits', 8, 16000)
    values = reciprocal_moments(degree, wb)
    total = Bounds.point(0)
    rows = []
    for n in range(degree + 1):
        d = Bounds.point(0)
        for c, v in zip(jacobi_coefficients(n, sigma), values):
            d = d.add(v.scale(c)).outward(wb)
        term = d.square().scale(4*n + 3 - 2*sigma).outward(wb)
        total = total.add(term).outward(wb)
        # A catastrophic alternating sum is a rejected computation, not evidence of a zero.
        if max(d.hi-d.lo, total.hi-total.lo) > F(1, 1 << (bits + 2)):
            raise ArithmeticError('cancellation not resolved; increase work bits')
        rows.append({'degree': n, 'd': d.json(bits), 'energy_term': term.json(bits),
                     'partial_energy': total.json(bits)})
    return {'schema': 'reciprocal-moment-energy-finite-v1', 'sigma': str(sigma),
            'degree': degree, 'moment_count': degree + 1, 'highest_zeta_argument': 2*degree + 2,
            'bits': bits, 'work_bits': wb, 'partial_energy': total.json(bits),
            'moments': [v.json(bits) for v in values], 'coefficients': rows,
            'energy_interpretation': 'finite lower approximation, NOT an upper bound on full energy',
            'uniform_core_bound_proved': False, 'coefficient_tail_bound': 'UNPAID',
            'lean_replay': 'NOT_RUN'}


def inverse_sqrt(value: int | F, bits: int) -> Bounds:
    value = rational(value, 'radicand')
    integer(bits, 'root bits', 8, 16384)
    if value <= 0:
        raise ValueError('positive radicand required')
    scale = 1 << bits
    root = isqrt((value.numerator*scale*scale)//value.denominator)
    lo = F(root, scale)
    hi = lo if lo*lo == value else F(root+1, scale)
    if not lo*lo <= value <= hi*hi or lo <= 0:
        raise ArithmeticError('root bracket failed; increase precision')
    return Bounds(lo, hi).reciprocal()


def moebius_trial(n: int) -> int:
    integer(n, 'Mobius index', 1, 1000000)
    result, p = 1, 2
    while p*p <= n:
        if n % p == 0:
            n //= p
            result = -result
            if n % p == 0:
                return 0
        p += 1
    return -result if n > 1 else result


def recording_moment(j: int, cutoff: int | F, bits: int = 80) -> dict[str, Bounds]:
    """Original W integrated only to log(R), with BOTH endpoint corrections.

    The returned tail allowance bounds the difference to the infinite moment;
    it is not a physical-time ENERGY tail bound. No future coefficient used.
    """
    integer(j, 'moment index', 0, 256)
    integer(bits, 'output bits', 8, 256)
    R = rational(cutoff, 'cutoff')
    if R < 1:
        raise ValueError('cutoff must be at least one')
    N = R.numerator // R.denominator
    integer(N, 'finite cutoff', 1, 100000)
    z, s, wb = F(4*j + 3, 2), 2*j + 2, bits + 32
    A, M, D = Bounds.point(0), 0, F(0)
    for n in range(1, N + 1):
        mu = moebius_trial(n)
        M += mu
        D += F(mu, n**s)
        A = A.add(inverse_sqrt(n, wb).scale(mu)).outward(wb)
    rz = inverse_sqrt(R, wb).scale(R**(-(2*j+1)))
    moment = Bounds.point(D/(z*s)).add(A.mul(rz).scale(-2/z))
    moment = moment.add(Bounds.point(2*M*R**(-s)/s))
    tail = Bounds.point(2*R**(-(2*j+1))/(z-F(1,2))).add(rz.scale(-2/z))
    return {'finite_recording_moment': moment.outward(bits),
            'infinite_moment_tail_allowance': tail.outward(bits),
            'coefficient_term': Bounds.point(D/(z*s)),
            'weighted_prefix_endpoint': A.mul(rz).scale(-2/z).outward(bits),
            'mertens_endpoint': Bounds.point(2*M*R**(-s)/s)}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--degree', type=int, default=32)
    parser.add_argument('--sigma', type=F, default=F(1, 3))
    parser.add_argument('--bits', type=int, default=80)
    parser.add_argument('--work-bits', type=int)
    args = parser.parse_args()
    try:
        print(json.dumps(certificate(args.degree, args.sigma, args.bits, args.work_bits), indent=2))
    except (ValueError, TypeError, ArithmeticError) as error:
        parser.exit(2, f'error: {error}\n')


if __name__ == '__main__':
    main()
