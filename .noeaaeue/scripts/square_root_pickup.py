#!/usr/bin/env python3
"""Finite square-root compression of the literal signed Mobius pickup.

Human mathematical direction: grwtsk contributors.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.
The finite divisor identity is classical; see Huxley--Watt (2018),
arXiv:1807.05890v1, equations (1.5)--(1.8). No exponent gain is assumed.

Only mu(1),...,mu(floor(sqrt(x))) enter the reconstruction. Every multiplier
and every ordered pair is retained. The moving cutoff is recomputed on each
integer cell, including square crossings. Exact finite coefficient equality
is separate from consistency of interval enclosures and from Lean acceptance.

Run: python3 -B scripts/square_root_pickup.py --cutoff 17/2 --cutoff 64
"""
from __future__ import annotations

import argparse
from fractions import Fraction
import json
from math import isqrt
from typing import Sequence

from one_third_energy import Interval, moebius_coefficients, sixth_root

Exact = int | Fraction


def physical_cutoff(value: Exact) -> Fraction:
    if not isinstance(value, (int, Fraction)) or isinstance(value, bool):
        raise TypeError("cutoff must be an exact integer or Fraction")
    value = Fraction(value)
    if value < 1:
        raise ValueError("physical cutoff must be at least one")
    return value


def natural(value: int, name: str) -> int:
    if not isinstance(value, int) or isinstance(value, bool) or value < 1:
        raise ValueError(f"{name} must be a positive integer")
    return value


def quadratic_coefficients(limit: int, short: Sequence[Exact]) -> list[Fraction]:
    """Coefficients of a*a*1; arbitrary exact TEST inputs are allowed.

    a is supported on 1..len(short)-1. This routine is finite algebra only;
    it does not certify that short is the actual Mobius prefix.
    """
    natural(limit, "limit")
    if len(short) < 2 or short[0] != 0:
        raise ValueError("short source must be indexed 0..U with a[0]=0, U>=1")
    if any(not isinstance(a, (int, Fraction)) or isinstance(a, bool) for a in short):
        raise TypeError("source coefficients must be exact integers or fractions")
    out = [Fraction(0)] * (limit + 1)
    for a in range(1, len(short)):
        for b in range(1, len(short)):
            c = Fraction(short[a]) * short[b]
            if not c:
                continue
            for n in range(a * b, limit + 1, a * b):
                out[n] += c
    return out


def reconstruct_moebius(limit: int, cut: int | None = None) -> list[Fraction]:
    """Recover the closed prefix from actual mu only through the small cutoff.

    The strict support gate limit < (cut+1)^2 is essential. No coefficient
    beyond cut is requested from the sieve. This is not a complexity claim.
    """
    natural(limit, "limit")
    cut = isqrt(limit) if cut is None else natural(cut, "cut")
    if cut > limit or limit >= (cut + 1) ** 2:
        raise ValueError("require cut <= limit < (cut+1)^2")
    small = moebius_coefficients(cut)
    quad = quadratic_coefficients(limit, small)
    return [2 * (small[n] if n <= cut else 0) - quad[n]
            for n in range(limit + 1)]


def _prefixes(coeff: Sequence[Exact], bits: int) -> tuple[list[Interval], list[Fraction]]:
    A, M = [Interval.point(0)], [Fraction(0)]
    for n in range(1, len(coeff)):
        A.append((A[-1] + coeff[n] * sixth_root(Fraction(n), bits) ** -3)
                 .outward(bits + 16))
        M.append(M[-1] + coeff[n])
    return A, M


def _cell_pair(A: Interval, M: Exact, B: Interval, N: Exact,
               left: Fraction, right: Fraction, bits: int) -> Interval:
    """Integral of x^(-5/3) [2(A-M/sqrt(x))][2(B-N/sqrt(x))]."""
    l, r = sixth_root(left, bits), sixth_root(right, bits)
    d4, d7, d10 = (l ** -p - r ** -p for p in (4, 7, 10))
    return (6 * A * B * d4 - Fraction(24, 7) * (A * N + B * M) * d7
            + Fraction(12, 5) * M * N * d10).outward(bits + 16)


def kernel_entry(cutoff: Exact, a: int, b: int, bits: int = 64) -> Interval:
    """Literal sum of h_(abk)(log(x)), including zero touching responses."""
    x = physical_cutoff(cutoff)
    natural(a, "a")
    natural(b, "b")
    end = sixth_root(x, bits) ** -3
    count = x.numerator // (x.denominator * a * b)
    out = Interval.point(0)
    for k in range(1, count + 1):
        out = (out + 2 * (sixth_root(Fraction(a * b * k), bits) ** -3 - end))\
            .outward(bits + 16)
    return out.outward(bits)


def square_root_energy(cutoff: Exact, bits: int = 64) -> dict[str, object]:
    """Finite moving-cutoff energies, from the short Mobius data only.

    P(t)=2*sum_(a<=floor(exp(t/2))) mu(a)h_a(t).
    B(t)=sum_(a,b<=floor(exp(t/2)),abk<=exp(t)) mu(a)mu(b)h_(abk)(t).
    W=P-B. No horizon-independent energy supplier is asserted.
    """
    x = physical_cutoff(cutoff)
    sixth_root(x, bits)  # Validate precision even at the zero horizon.
    nmax = x.numerator // x.denominator
    umax = isqrt(nmax)
    small = moebius_coefficients(umax)
    quad_end = quadratic_coefficients(nmax, small)
    recovered = [2 * (small[n] if n <= umax else 0) - quad_end[n]
                 for n in range(nmax + 1)]
    A, M = _prefixes(recovered, bits)
    AS, MS = _prefixes(small, bits)
    cache: dict[int, tuple[list[Interval], list[Fraction]]] = {}
    h, p, b, pb = (Interval.point(0) for _ in range(4))
    source_residual = Interval.point(0)
    # All sources are constant-prefix expressions on [n,n+1). At squares,
    # P and B jump together; they are not separately asserted continuous.
    for n in range(1, nmax + 1):
        right = min(x, Fraction(n + 1))
        if right == n:
            continue
        u = isqrt(n)
        if u not in cache:
            end = min(nmax, (u + 1) ** 2 - 1)
            cache[u] = _prefixes(quadratic_coefficients(end, small[:u + 1]), bits)
        AB, MB = cache[u]
        pA, pM = 2 * AS[u], 2 * MS[u]
        left = Fraction(n)
        h += _cell_pair(A[n], M[n], A[n], M[n], left, right, bits)
        p += _cell_pair(pA, pM, pA, pM, left, right, bits)
        b += _cell_pair(AB[n], MB[n], AB[n], MB[n], left, right, bits)
        pb += _cell_pair(pA, pM, AB[n], MB[n], left, right, bits)
        h, p, b, pb = (z.outward(bits + 16) for z in (h, p, b, pb))
        # Coefficient comparison is exact for M; A comparison uses enclosures.
        if M[n] != pM - MB[n]:
            raise ArithmeticError("closed unweighted prefix identity failed")
        weighted_residual = A[n] - (pA - AB[n])
        if not weighted_residual.contains_zero():
            raise ArithmeticError("incompatible weighted prefix enclosures on an integer cell")
        source_residual += weighted_residual
        source_residual = source_residual.outward(bits + 16)
    values = {"pickup_energy": h, "short_prefix_energy": p,
              "quadratic_energy": b, "signed_mixed_energy": pb,
              "energy_identity_residual": h - (p + b - 2 * pb),
              "weighted_prefix_residual": source_residual,
              "short_prefix_budget_slack": Fraction(864, 5) - p,
              "forward_linear_slack": Fraction(1728, 5) + 2 * b - h,
              "reverse_linear_slack": Fraction(1728, 5) + 2 * h - b}
    return {"cutoff": str(x), "horizon": f"log({x})", "closed_N": nmax,
            "max_moebius_index_used": umax, "support_gate": nmax < (umax + 1) ** 2,
            "intervals": {k: v.outward(bits).json() for k, v in values.items()},
            "enclosure_consistency": {
                k: v.contains_zero() for k, v in values.items() if k.endswith("residual")}}


def indefinite_kernel_control(bits: int = 64) -> dict[str, dict[str, str]]:
    """At x=4 the 2x2 kernel has K22=0<K12, hence negative determinant."""
    k11, k12, k22 = (kernel_entry(4, a, b, bits) for a, b in ((1, 1), (1, 2), (2, 2)))
    # Rational vector (1/4,-1) lies in [-1,1]^2 and has negative quadratic form.
    return {"determinant": (k11 * k22 - k12 ** 2).outward(bits).json(),
            "bounded_vector_form": (k11 / 16 - k12 / 2 + k22).outward(bits).json()}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cutoff", type=Fraction, action="append")
    parser.add_argument("--bits", type=int, default=64)
    args = parser.parse_args()
    try:
        records = [square_root_energy(x, args.bits)
                   for x in (args.cutoff or [Fraction(1), Fraction(7, 2), Fraction(4),
                                            Fraction(17, 2), Fraction(64)])]
        if any(not all(r["enclosure_consistency"].values()) for r in records):
            raise ArithmeticError("incompatible finite enclosures")
        output = {"schema": "square-root-pickup-finite-v1", "bits": args.bits,
                  "scope": "finite diagnostics; analytic estimates are written only",
                  "uniform_quadratic_bound_proved": False, "lean_replay": "NOT_RUN",
                  "records": records, "indefinite_kernel": indefinite_kernel_control(args.bits)}
    except (ValueError, TypeError, ZeroDivisionError, ArithmeticError) as error:
        parser.exit(2, f"error: {error}\n")
    print(json.dumps(output, indent=2))


if __name__ == "__main__":
    main()
