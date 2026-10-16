#!/usr/bin/env python3
"""Weighted block projection of the literal Mobius pickup, with its center retained.

Human mathematical direction: grwtsk contributors.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

For V(x)=W(log x), use weight x^(-5/3). Rank one uses 2^ceil(j/4)
blocks on [2^j,2^(j+1)] and retains constants. Rank two uses 2^ceil(j/8)
blocks and retains BOTH 1 and x^(-1/2). The written theorem gives H=K+E,
0<=E<=1/[20(1-2^(-1/6))]<1/2 at rank two. K is still UNPAID.
These finite rational enclosures do not prove the uniform bound for K.
No Fourier truncation, infinite integral or zeta nonvanishing is assumed.
"""
from __future__ import annotations

import argparse
from fractions import Fraction as Q
import json
from typing import Sequence

from one_third_energy import Interval as I, moebius_coefficients, sixth_root

Exact = int | Q


def exact(value: Exact, name: str) -> Q:
    if not isinstance(value, (int, Q)) or isinstance(value, bool):
        raise TypeError(f"{name} must be an exact integer or Fraction")
    return Q(value)


def block_count(j: int, rank: int = 1) -> int:
    if not isinstance(j, int) or isinstance(j, bool) or j < 0:
        raise ValueError("octave index must be a nonnegative integer")
    if type(rank) is not int or rank not in (1, 2):
        raise ValueError("rank must be one or two")
    exponent = 4 * rank
    return 1 << ((j + exponent - 1) // exponent)


def partition(cutoff: Exact, rank: int = 1) -> list[tuple[int, Q, Q]]:
    """Partition [1,x], retaining a possible partial final block."""
    x = exact(cutoff, "cutoff")
    block_count(0, rank)
    if x < 1:
        raise ValueError("cutoff must be at least one")
    out: list[tuple[int, Q, Q]] = []
    j, X = 0, 1
    while X < x:
        m = block_count(j, rank)
        width = X // m
        if width * m != X:
            raise ArithmeticError("nonintegral block partition")
        for r in range(m):
            left = Q(X + r * width)
            if left >= x:
                break
            out.append((j, left, min(x, left + width)))
        j, X = j + 1, 2 * X
    return out


def drop(left: Exact, right: Exact, power: int, bits: int) -> I:
    return sixth_root(Q(left), bits) ** -power - sixth_root(Q(right), bits) ** -power


def mass(left: Exact, right: Exact, bits: int = 64) -> I:
    l, r = exact(left, "left"), exact(right, "right")
    if not 1 <= l < r:
        raise ValueError("require 1 <= left < right")
    value = Q(3, 2) * drop(l, r, 4, bits)
    if value.lo <= 0:
        raise ArithmeticError("mass not separated from zero; increase precision")
    return value


def atom_integral(n: int, left: Exact, right: Exact, bits: int = 64) -> I:
    """Integral of x^(-5/3) h_n(log x) on [left,right], with exact support."""
    if not isinstance(n, int) or isinstance(n, bool) or n < 1:
        raise ValueError("atom index must be positive")
    l, r = exact(left, "left"), exact(right, "right")
    if not 1 <= l < r:
        raise ValueError("require 1 <= left < right")
    c = max(l, Q(n))
    if c >= r:
        return I.point(0)
    return (3 * sixth_root(Q(n), bits) ** -3 * drop(c, r, 4, bits)
            - Q(12, 7) * drop(c, r, 7, bits)).outward(bits + 16)


def cell_integrals(A: I, M: Exact | I, left: Q, right: Q, bits: int) -> tuple[I, I]:
    """Return the weighted first moment and square integral of 2(A-M/sqrt x)."""
    d4, d7, d10 = (drop(left, right, p, bits) for p in (4, 7, 10))
    first = 3 * A * d4 - Q(12, 7) * M * d7
    square = 6 * A ** 2 * d4 - Q(48, 7) * A * M * d7 + Q(12, 5) * M ** 2 * d10
    return first.outward(bits + 16), square.outward(bits + 16)


def green(weights: Sequence[Exact]) -> list[list[Q]]:
    """G=L^t diag(w)L; its anchored inverse is the Jacobi precision below."""
    w = [exact(x, "weight") for x in weights]
    if not w or min(w) <= 0:
        raise ValueError("need positive weights")
    return [[sum(w[max(i, j):], Q(0)) for j in range(len(w))]
            for i in range(len(w))]


def precision(weights: Sequence[Exact]) -> list[list[Q]]:
    """v^t G^-1 v=sum (v_i-v_(i+1))^2/w_i+v_last^2/w_last."""
    w = [exact(x, "weight") for x in weights]
    if not w or min(w) <= 0:
        raise ValueError("need positive weights")
    n = len(w)
    out = [[Q(0) for _ in w] for _ in w]
    for i in range(n - 1):
        out[i][i] += 1 / w[i]
        out[i + 1][i + 1] += 1 / w[i]
        out[i][i + 1] -= 1 / w[i]
        out[i + 1][i] -= 1 / w[i]
    out[-1][-1] += 1 / w[-1]
    return out


def projected_energy(cutoff: Exact, bits: int = 64,
                     coefficients: Sequence[Exact] | None = None) -> dict[str, object]:
    x = exact(cutoff, "cutoff")
    blocks = partition(x)
    sixth_root(x, bits)
    nmax = x.numerator // x.denominator
    raw = moebius_coefficients(nmax) if coefficients is None else coefficients
    if len(raw) != nmax + 1 or raw[0] != 0:
        raise ValueError("need a[0..floor(x)] with a[0]=0; future coefficients forbidden")
    a = [exact(v, "coefficient") for v in raw]
    if any(abs(v) > 1 for v in a):
        raise ValueError("the displayed error budget requires |a_n|<=1")
    A, M = [I.point(0)], [Q(0)]
    for n in range(1, nmax + 1):
        A.append((A[-1] + a[n] * sixth_root(Q(n), bits) ** -3).outward(bits + 16))
        M.append(M[-1] + a[n])
    H, K, E = (I.point(0) for _ in range(3))
    records = []
    by_octave: dict[int, list[tuple[I, I]]] = {}
    for j, l, r in blocks:
        w, first, square = mass(l, r, bits), I.point(0), I.point(0)
        cells = []
        for n in range(int(l), r.numerator // r.denominator + 1):
            upper = min(r, Q(n + 1))
            if Q(n) >= upper:
                continue
            f, h = cell_integrals(A[n], M[n], Q(n), upper, bits)
            first, square = (first + f).outward(bits + 16), (square + h).outward(bits + 16)
            cells.append((n, Q(n), upper))
        q = first / w
        coarse = first ** 2 / w
        error = I.point(0)
        for n, lower, upper in cells:
            _, term = cell_integrals(A[n] - q / 2, M[n], lower, upper, bits)
            error = (error + term).outward(bits + 16)
        H, K, E = ((old + new).outward(bits + 16)
                   for old, new in ((H, square), (K, coarse), (E, error)))
        by_octave.setdefault(j, []).append((w, q))
        records.append({"octave": j, "left": str(l), "right": str(r),
                        "mass": w.outward(bits).json(), "first_moment": first.outward(bits).json(),
                        "mean": q.outward(bits).json(), "coarse_energy": coarse.outward(bits).json()})
    center, transverse = I.point(0), I.point(0)
    for values in by_octave.values():
        total = sum((w for w, _ in values), I.point(0))
        avg = sum((w * q for w, q in values), I.point(0)) / total
        center = (center + total * avg ** 2).outward(bits + 16)
        for w, q in values:
            transverse = (transverse + w * (q - avg) ** 2).outward(bits + 16)
    error_budget = I.point(1) / (12 * (I.point(1) - sixth_root(Q(2), bits) ** -1))
    result = {"pickup_energy": H, "coarse_energy": K, "projection_error": E,
              "center_energy": center, "transverse_energy": transverse,
              "orthogonal_identity_residual": H - K - E,
              "center_identity_residual": K - center - transverse,
              "written_global_error_budget": error_budget,
              "error_budget_slack": error_budget - E}
    return {"cutoff": str(x), "horizon": f"log({x})", "closed_N": nmax,
            "source": "actual Mobius" if coefficients is None else "bounded test sequence",
            "block_count": len(blocks), "blocks": records,
            "intervals": {k: v.outward(bits).json() for k, v in result.items()},
            "consistency": {k: v.contains_zero() for k, v in result.items() if k.endswith("residual")}}


def projected_two_mode_energy(cutoff: Exact, bits: int = 64,
                              coefficients: Sequence[Exact] | None = None) -> dict[str, object]:
    """Orthogonal projection onto BOTH homogeneous modes, not their deletion.

    The true functions use exact moments; intervals enclose those moments and
    solve the 2x2 system with a strictly positive certified Schur denominator.
    A failed denominator separation raises an error, never removes a mode.
    """
    x = exact(cutoff, "cutoff")
    blocks = partition(x, 2)
    sixth_root(x, bits)
    nmax = x.numerator // x.denominator
    raw = moebius_coefficients(nmax) if coefficients is None else coefficients
    if len(raw) != nmax + 1 or raw[0] != 0:
        raise ValueError("need a[0..floor(x)] with a[0]=0; future coefficients forbidden")
    a = [exact(v, "coefficient") for v in raw]
    if any(abs(v) > 1 for v in a):
        raise ValueError("the displayed error budget requires |a_n|<=1")
    A, M = [I.point(0)], [Q(0)]
    for n in range(1, nmax + 1):
        A.append((A[-1] + a[n] * sixth_root(Q(n), bits) ** -3).outward(bits + 16))
        M.append(M[-1] + a[n])
    H, K, E, center, slope = (I.point(0) for _ in range(5))
    records = []
    for j, l, r in blocks:
        w = mass(l, r, bits)
        nu = Q(6, 7) * drop(l, r, 7, bits)
        tau = Q(3, 5) * drop(l, r, 10, bits)
        schur = tau - nu ** 2 / w
        if schur.lo <= 0:
            raise ArithmeticError("second mode not separated; increase precision")
        first, second, square = (I.point(0) for _ in range(3))
        cells = []
        for n in range(int(l), r.numerator // r.denominator + 1):
            upper = min(r, Q(n + 1))
            if Q(n) >= upper:
                continue
            f, h = cell_integrals(A[n], M[n], Q(n), upper, bits)
            t = (Q(12, 7) * A[n] * drop(n, upper, 7, bits)
                 - Q(6, 5) * M[n] * drop(n, upper, 10, bits))
            first, second, square = ((old + new).outward(bits + 16)
                                    for old, new in ((first, f), (second, t), (square, h)))
            cells.append((n, Q(n), upper))
        alpha = first / w
        beta = (second - nu * alpha) / schur
        constant = alpha - beta * nu / w
        root_energy = first ** 2 / w
        slope_energy = (second - nu * alpha) ** 2 / schur
        coarse = root_energy + slope_energy
        error = I.point(0)
        for n, lower, upper in cells:
            # V-(constant+beta/sqrt(x))=2[(A-constant/2)-(M+beta/2)/sqrt(x)].
            _, term = cell_integrals(A[n] - constant / 2, I.point(M[n]) + beta / 2,
                                     lower, upper, bits)
            error = (error + term).outward(bits + 16)
        H, K, E, center, slope = ((old + new).outward(bits + 16)
                                  for old, new in ((H, square), (K, coarse), (E, error),
                                                   (center, root_energy), (slope, slope_energy)))
        normal0 = first - constant * w - beta * nu
        normal1 = second - constant * nu - beta * tau
        records.append({"octave": j, "left": str(l), "right": str(r),
                        "mass": w.outward(bits).json(), "schur_mass": schur.outward(bits).json(),
                        "constant_coefficient": constant.outward(bits).json(),
                        "inverse_sqrt_coefficient": beta.outward(bits).json(),
                        "coarse_energy": coarse.outward(bits).json(),
                        "normal_equation_consistency": normal0.contains_zero() and normal1.contains_zero()})
    error_budget = I.point(1) / (20 * (I.point(1) - sixth_root(Q(2), bits) ** -1))
    result = {"pickup_energy": H, "coarse_energy": K, "projection_error": E,
              "center_energy": center, "slope_energy": slope,
              "orthogonal_identity_residual": H - K - E,
              "mode_identity_residual": K - center - slope,
              "written_global_error_budget": error_budget, "error_budget_slack": error_budget - E}
    return {"cutoff": str(x), "horizon": f"log({x})", "closed_N": nmax,
            "source": "actual Mobius" if coefficients is None else "bounded test sequence",
            "rank_per_block": 2, "block_count": len(blocks), "blocks": records,
            "intervals": {k: v.outward(bits).json() for k, v in result.items()},
            "consistency": {k: v.contains_zero() for k, v in result.items() if k.endswith("residual")}}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cutoff", type=Q, action="append")
    parser.add_argument("--bits", type=int, default=64)
    parser.add_argument("--rank", type=int, choices=(1, 2), default=2)
    args = parser.parse_args()
    try:
        evaluator = projected_energy if args.rank == 1 else projected_two_mode_energy
        records = [evaluator(x, args.bits) for x in (args.cutoff or [Q(1), Q(7, 2), Q(16), Q(64)])]
        if any(not all(row["consistency"].values()) or
               not all(b.get("normal_equation_consistency", True) for b in row["blocks"])
               for row in records):
            raise ArithmeticError("incompatible projection enclosures")
    except (ValueError, TypeError, ArithmeticError) as exc:
        parser.exit(2, f"error: {exc}\n")
    print(json.dumps({"schema": "weighted-pickup-projection-finite-v1", "bits": args.bits,
                      "scope": "finite enclosures; general proof is written only",
                      "uniform_coarse_bound_proved": False, "lean_replay": "NOT_RUN",
                      "note": "Interval overlap is not an identity proof. Centers are retained.",
                      "records": records}, indent=2))


if __name__ == "__main__":
    main()
