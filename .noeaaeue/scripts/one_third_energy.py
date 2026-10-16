#!/usr/bin/env python3
"""Finite, rational enclosures for the literal one-third Mobius pickup energy.

Human mathematical direction: R.A. Jacob Martone.
Written reduction and implementation assistance: OpenAI ChatGPT. MIT.

No floating-point arithmetic, external dependency, network call, or infinite
series truncation is used. Roots are enclosed using integer inequalities.
These are finite diagnostics, not a uniform bound, Lean replay, or RH proof.
The mathematical identities are explained in the existing damped-tails guide.

Run: python3 -B scripts/one_third_energy.py --cutoff 7/2 --cutoff 64
The input x is the physical cutoff; the recording horizon is T = log(x).
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction
from functools import lru_cache
import json
from typing import Sequence


@dataclass(frozen=True)
class Interval:
    """A closed rational interval with inclusion-preserving arithmetic."""

    lo: Fraction
    hi: Fraction

    def __post_init__(self) -> None:
        object.__setattr__(self, "lo", Fraction(self.lo))
        object.__setattr__(self, "hi", Fraction(self.hi))
        if self.lo > self.hi:
            raise ValueError("reversed interval")

    @staticmethod
    def point(value: int | Fraction) -> Interval:
        return Interval(Fraction(value), Fraction(value))

    @staticmethod
    def coerce(value: Interval | int | Fraction) -> Interval:
        return value if isinstance(value, Interval) else Interval.point(value)

    def __add__(self, other: Interval | int | Fraction) -> Interval:
        other = self.coerce(other)
        return Interval(self.lo + other.lo, self.hi + other.hi)

    __radd__ = __add__

    def __neg__(self) -> Interval:
        return Interval(-self.hi, -self.lo)

    def __sub__(self, other: Interval | int | Fraction) -> Interval:
        return self + -self.coerce(other)

    def __rsub__(self, other: Interval | int | Fraction) -> Interval:
        return self.coerce(other) + -self

    def __mul__(self, other: Interval | int | Fraction) -> Interval:
        other = self.coerce(other)
        products = tuple(a * b for a in (self.lo, self.hi)
                         for b in (other.lo, other.hi))
        return Interval(min(products), max(products))

    __rmul__ = __mul__

    def reciprocal(self) -> Interval:
        if self.lo <= 0 <= self.hi:
            raise ZeroDivisionError("interval contains zero")
        return Interval(1 / self.hi, 1 / self.lo)

    def __truediv__(self, other: Interval | int | Fraction) -> Interval:
        return self * self.coerce(other).reciprocal()

    def __pow__(self, power: int) -> Interval:
        if not isinstance(power, int) or isinstance(power, bool):
            raise TypeError("interval powers must be integers")
        if power < 0:
            return self.reciprocal() ** (-power)
        if power == 0:
            return self.point(1)
        ends = (self.lo ** power, self.hi ** power)
        if power % 2:
            return Interval(*ends)
        lower = Fraction(0) if self.lo <= 0 <= self.hi else min(ends)
        return Interval(lower, max(ends))

    def contains_zero(self) -> bool:
        return self.lo <= 0 <= self.hi

    def overlaps(self, other: Interval) -> bool:
        return max(self.lo, other.lo) <= min(self.hi, other.hi)

    def outward(self, bits: int) -> Interval:
        """Round outwards to a dyadic grid, avoiding denominator explosion."""
        scale = 1 << bits
        low = (self.lo.numerator * scale) // self.lo.denominator
        high = -((-self.hi.numerator * scale) // self.hi.denominator)
        return Interval(Fraction(low, scale), Fraction(high, scale))

    def json(self) -> dict[str, str]:
        return {"lower": str(self.lo), "upper": str(self.hi)}


def _integer_sixth_root(value: int) -> int:
    """Return r with r**6 <= value < (r+1)**6 using integer arithmetic."""
    if value < 0:
        raise ValueError("negative root input")
    low, high = 0, 1 << ((value.bit_length() + 5) // 6)
    while high - low > 1:
        middle = (low + high) // 2
        if middle ** 6 <= value:
            low = middle
        else:
            high = middle
    return low


@lru_cache(maxsize=8192)
def sixth_root(value: Fraction, bits: int = 64) -> Interval:
    """Enclose a positive rational sixth root; verify both endpoint inequalities."""
    value = Fraction(value)
    if value <= 0:
        raise ValueError("root input must be positive")
    if not isinstance(bits, int) or isinstance(bits, bool) or not 8 <= bits <= 512:
        raise ValueError("bits must be an integer in [8, 512]")
    scale = 1 << bits
    scaled = value.numerator * scale ** 6
    r = _integer_sixth_root(scaled // value.denominator)
    lower = Fraction(r, scale)
    upper = lower if r ** 6 * value.denominator == scaled else Fraction(r + 1, scale)
    if not lower ** 6 <= value <= upper ** 6:
        raise ArithmeticError("sixth-root enclosure failed")
    return Interval(lower, upper)


def moebius_coefficients(limit: int) -> list[int]:
    """Exact linear sieve, including mu(0)=0 and mu(1)=1."""
    if not isinstance(limit, int) or isinstance(limit, bool) or limit < 1:
        raise ValueError("limit must be a positive integer")
    least = [0] * (limit + 1)
    mu = [0] * (limit + 1)
    mu[1] = 1
    primes: list[int] = []
    for n in range(2, limit + 1):
        if least[n] == 0:
            least[n], mu[n] = n, -1
            primes.append(n)
        for p in primes:
            m = n * p
            if m > limit:
                break
            least[m] = p
            if n % p == 0:
                mu[m] = 0
                break
            mu[m] = -mu[n]
    return mu


def finite_energy(cutoff: Fraction, bits: int = 64,
                  coefficients: Sequence[int | Fraction] | None = None
                  ) -> dict[str, Interval]:
    """Enclose three independently organized finite identities at T=log(cutoff).

    A supplied coefficient sequence is a TEST source, not the Mobius function.
    Index zero must be zero; indices 1 through floor(cutoff) are all retained.
    No coefficient after the recording horizon is used.
    """
    cutoff = Fraction(cutoff)
    if cutoff < 1:
        raise ValueError("physical cutoff must be at least one")
    nmax = cutoff.numerator // cutoff.denominator
    raw = moebius_coefficients(nmax) if coefficients is None else coefficients
    if len(raw) != nmax + 1 or raw[0] != 0:
        raise ValueError("need coefficients indexed 0..floor(cutoff), with a[0]=0")
    if any(not isinstance(a, (int, Fraction)) or isinstance(a, bool) for a in raw):
        raise TypeError("coefficients must be exact integers or fractions")
    coeff = [Fraction(a) for a in raw]
    roots = [Interval.point(1)] + [sixth_root(Fraction(n), bits)
                                         for n in range(1, nmax + 1)]
    endpoint = sixth_root(cutoff, bits)
    A, M = [Interval.point(0)], [Fraction(0)]
    diagonal, cross, source_cross = (Interval.point(0) for _ in range(3))
    for n in range(1, nmax + 1):
        a, r = coeff[n], roots[n]
        # Ordered-complete off-diagonal: twice the strict m<n triangle.
        cross += Fraction(36, 7) * a * A[-1] * r ** -7
        cross -= Fraction(72, 35) * a * M[-1] * r ** -10
        source_cross += Fraction(6, 5) * a * M[-1] * r ** -10
        diagonal += Fraction(54, 35) * a * a * r ** -10
        cross, source_cross, diagonal = (v.outward(bits + 16)
                                          for v in (cross, source_cross, diagonal))
        A.append((A[-1] + a * r ** -3).outward(bits + 16))
        M.append(M[-1] + a)

    tail = (6 * A[-1] ** 2 * endpoint ** -4
            - Fraction(48, 7) * A[-1] * M[-1] * endpoint ** -7
            + Fraction(12, 5) * M[-1] ** 2 * endpoint ** -10)
    tail_square = (6 * endpoint ** -4
                   * (A[-1] - Fraction(4, 7) * M[-1] * endpoint ** -3) ** 2
                   + Fraction(108, 245) * M[-1] ** 2 * endpoint ** -10)
    cells, source_cells, sampled = (Interval.point(0) for _ in range(3))
    for n in range(1, nmax + 1):
        upper = min(Fraction(n + 1), cutoff)
        if upper == n:  # Touching atom has zero response, not a removed prefix term.
            continue
        left = roots[n]
        right = endpoint if upper == cutoff else roots[n + 1]
        d4, d7, d10 = (left ** -p - right ** -p for p in (4, 7, 10))
        cells += (6 * A[n] ** 2 * d4 - Fraction(48, 7) * A[n] * M[n] * d7
                  + Fraction(12, 5) * M[n] ** 2 * d10)
        source_cells += Fraction(3, 5) * M[n] ** 2 * d10
        sampled += Fraction(3, 2) * (A[n] - M[n] * left ** -3) ** 2 * d4
        cells, source_cells, sampled = (v.outward(bits + 16)
                                         for v in (cells, source_cells, sampled))

    # This is the tail of the finite response sum, NOT the actual future W.
    gram = diagonal + cross
    corrected = gram - tail
    source_diagonal = diagonal * Fraction(7, 18)  # (3/5)/(54/35)
    source_compensation = Fraction(3, 5) * M[-1] ** 2 * endpoint ** -10
    source_completed = source_diagonal + source_cross - source_compensation
    result = {
        "energy_cells": cells, "energy_gram_minus_tail": corrected,
        "gram_diagonal": diagonal, "gram_cross": cross,
        "finite_response_tail": tail, "tail_completed_square": tail_square,
        "direct_signed_residual": cross - tail,
        "sampled_defect_energy": sampled,
        "mertens_source_cells": source_cells,
        "mertens_source_completed": source_completed,
        "mertens_source_cutoff_compensation": source_compensation,
        "volterra_slack": 9 * source_cells - cells,
        "energy_identity_residual": cells - corrected,
        "tail_identity_residual": tail - tail_square,
        "source_identity_residual": source_cells - source_completed,
    }
    return {name: value.outward(bits) for name, value in result.items()}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cutoff", type=Fraction, action="append",
                        help="exact rational x>=1; the recording ends at log(x)")
    parser.add_argument("--bits", type=int, default=64)
    args = parser.parse_args()
    cutoffs = args.cutoff or [Fraction(1), Fraction(3, 2), Fraction(2),
                              Fraction(7, 2), Fraction(16), Fraction(64)]
    records = []
    try:
        for x in cutoffs:
            values = finite_energy(x, args.bits)
            checks = {k: v.contains_zero() for k, v in values.items()
                      if k.endswith("identity_residual")}
            if not all(checks.values()):
                raise ArithmeticError(f"incompatible finite formulas at cutoff {x}")
            records.append({"cutoff": str(x), "horizon": f"log({x})",
                            "intervals": {k: v.json() for k, v in values.items()},
                            "residual_enclosures_contain_zero": checks})
    except (ValueError, TypeError, ZeroDivisionError, ArithmeticError) as error:
        parser.exit(2, f"error: {error}\n")
    print(json.dumps({"schema": "one-third-finite-energy-v1", "bits": args.bits,
                      "scope": "finite rational enclosures only",
                      "uniform_bound_proved": False, "lean_replay": "not run",
                      "note": "Overlapping enclosures are consistency checks, not equality proofs.",
                      "records": records}, indent=2))


if __name__ == "__main__":
    main()
