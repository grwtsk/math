#!/usr/bin/env python3
"""Causal dyadic localization of the literal signed Mobius pickup.

Human mathematical direction: R.A. Jacob Martone.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

With V(x)=W(log x), extended by zero below one, a=2^(-1/2), define
D(x)=V(x)-(1+a)V(x/2)+a*V(x/4). Only x/4<n<=x enters D(x).
The complete startup data is retained by the finite causal inverse. At every
positive damping the filter and inverse have explicit finite-window L2 bounds.
No uniform arithmetic energy bound or Lean proof admission is asserted.

Uses the unchanged one_third_energy interval/sieve module. Recorded output
contains only exact rational enclosures. Interval overlap is not an equality
proof. General identities and analytic inequalities have written proofs in
../docs/mathematics/NumberTheory/Moebius/matched-pickup.md.
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


def precision(bits: int) -> int:
    # Validate before the cached root function: equal numeric cache keys need not have equal types.
    if type(bits) is not int or not 8 <= bits <= 512:
        raise ValueError("bits must be an integer in [8, 512]")
    return bits


def positive_index(n: int) -> int:
    if type(n) is not int or n < 1:
        raise ValueError("atom index must be a positive integer")
    return n


def source(cutoff: Exact, coefficients: Sequence[Exact] | None) -> tuple[Q, list[Q]]:
    x = exact(cutoff, "cutoff")
    if x < 1:
        raise ValueError("physical cutoff must be at least one")
    N = x.numerator // x.denominator
    raw = moebius_coefficients(N) if coefficients is None else coefficients
    if len(raw) != N + 1 or raw[0] != 0:
        raise ValueError("require a[0..floor(x)], a[0]=0; future coefficients forbidden")
    values = [exact(v, "coefficient") for v in raw]
    if any(abs(v) > 1 for v in values):
        raise ValueError("the diagonal bound requires |a_n|<=1")
    return x, values


def atom_coefficients(n: int, x: Q, bits: int) -> tuple[I, I]:
    """D-filtered atom at a point is 2*(A-B/sqrt(x)).

    Return exact zero outside [n,4n], including both touching endpoints.
    Select either identical branch at x=2n. No source coefficient is removed.
    """
    positive_index(n)
    if x <= n or x >= 4 * n:
        return I.point(0), I.point(0)
    root2 = sixth_root(Q(2), bits) ** 3
    invn = sixth_root(Q(n), bits) ** -3
    if x <= 2 * n:
        return invn, I.point(1)
    return -invn / root2, -root2


def localized_atom(n: int, cutoff: Exact, bits: int = 64) -> I:
    precision(bits)
    x = exact(cutoff, "cutoff")
    if x <= 0:
        raise ValueError("multiplicative coordinate must be positive")
    sixth_root(x, bits)
    A, B = atom_coefficients(n, x, bits)
    return (2 * (A - B * sixth_root(x, bits) ** -3)).outward(bits)


def _pickup_at(x: Q, coeff: Sequence[Q], bits: int) -> I:
    """Literal causal V; callers already validated the complete source."""
    if x <= 1:
        return I.point(0)
    invx = sixth_root(x, bits) ** -3
    out = I.point(0)
    for n in range(1, x.numerator // x.denominator + 1):
        if x == n:  # Its response is zero; the coefficient remains in coeff.
            continue
        out = (out + 2 * coeff[n] * (sixth_root(Q(n), bits) ** -3 - invx))\
            .outward(bits + 16)
    return out


def _local_at(x: Q, coeff: Sequence[Q], bits: int) -> I:
    if x <= 1:
        return I.point(0)
    first = x.numerator // (4 * x.denominator) + 1
    last = x.numerator // x.denominator
    out = I.point(0)
    for n in range(first, last + 1):
        out = (out + coeff[n] * localized_atom(n, x, bits)).outward(bits + 16)
    return out


def reconstruction_at(cutoff: Exact, bits: int = 64,
                      coefficients: Sequence[Exact] | None = None) -> dict[str, I]:
    """Verify local reading, literal filter, and finite causal inverse separately."""
    precision(bits)
    x, coeff = source(cutoff, coefficients)
    root2 = sixth_root(Q(2), bits) ** 3
    a = root2.reciprocal()
    V = _pickup_at(x, coeff, bits)
    filtered = V - (1 + a) * _pickup_at(x / 2, coeff, bits) + a * _pickup_at(x / 4, coeff, bits)
    local = _local_at(x, coeff, bits)
    restored, ck, power, y = I.point(0), I.point(1), I.point(1), x
    while y >= 1:
        restored = (restored + ck * _local_at(y, coeff, bits)).outward(bits + 16)
        power = (power * a).outward(bits + 16)
        ck = (ck + power).outward(bits + 16)
        y /= 2
    return {"literal_pickup": V.outward(bits), "localized_reading": local.outward(bits),
            "restored_pickup": restored.outward(bits),
            "local_identity_residual": (filtered - local).outward(bits),
            "inverse_identity_residual": (restored - V).outward(bits)}


def _pair(A: I, B: I, C: I, D: I, left: Q, right: Q, bits: int) -> I:
    """Exact primitive for x^(-5/3)*[2(A-B/sqrt x)]*[2(C-D/sqrt x)]."""
    l, r = sixth_root(left, bits), sixth_root(right, bits)
    d4, d7, d10 = (l ** -p - r ** -p for p in (4, 7, 10))
    return (6 * A * C * d4 - Q(24, 7) * (A * D + B * C) * d7
            + Q(12, 5) * B * D * d10).outward(bits + 16)


def atom_gram(m: int, n: int, cutoff: Exact, bits: int = 64) -> I:
    """Finite-horizon localized Gram; no full-response tail is silently substituted."""
    precision(bits)
    positive_index(m)
    positive_index(n)
    x = exact(cutoff, "cutoff")
    if x < 1:
        raise ValueError("physical cutoff must be at least one")
    sixth_root(x, bits)
    left, right = Q(max(m, n)), min(x, Q(4 * m), Q(4 * n))
    if left >= right:
        return I.point(0)
    cuts = sorted({left, right} | {Q(v) for v in (2 * m, 2 * n) if left < v < right})
    out = I.point(0)
    for l, r in zip(cuts, cuts[1:]):
        middle = (l + r) / 2
        A, B = atom_coefficients(m, middle, bits)
        C, D = atom_coefficients(n, middle, bits)
        out = (out + _pair(A, B, C, D, l, r, bits)).outward(bits + 16)
    return out.outward(bits)


def stability_constants(bits: int = 64) -> dict[str, I]:
    """Squared gains at sigma=1/3, plus the exact full atom diagonal constant."""
    precision(bits)
    r = sixth_root(Q(2), bits)
    a, q = r ** -3, r ** -2
    gap = (1 - q) * (1 - a * q)
    if gap.lo <= 0:
        raise ArithmeticError("inverse not separated; increase precision")
    c = atom_gram(1, 1, 4, bits)
    return {"inverse_squared_gain": (gap ** -2).outward(bits),
            "forward_squared_gain": (((1 + q) * (1 + a * q)) ** 2).outward(bits),
            "single_atom_mass": c, "diagonal_budget": (Q(5, 2) * c).outward(bits),
            "rational_diagonal_budget": I.point(Q(9, 10)),
            "rational_inverse_squared_gain": I.point(123),
            "rational_forward_squared_gain": I.point(8)}


def localized_energy(cutoff: Exact, bits: int = 64,
                     coefficients: Sequence[Exact] | None = None,
                     *, pair_check: bool = False) -> dict[str, object]:
    """Integrate the original and filtered source with independent atom diagonals.

    The optional full ordered-pair expansion is quadratic in the cutoff.
    Without it, the cross sum is obtained as energy minus its atom diagonal.
    No finite calculation is promoted to an infinite-range arithmetic bound.
    """
    precision(bits)
    x, coeff = source(cutoff, coefficients)
    if type(pair_check) is not bool:
        raise TypeError("pair_check must be a boolean")
    N = len(coeff) - 1
    r2 = sixth_root(Q(2), bits) ** 3
    a = r2.reciprocal()
    A, M = [I.point(0)], [Q(0)]
    for n in range(1, N + 1):
        A.append((A[-1] + coeff[n] * sixth_root(Q(n), bits) ** -3).outward(bits + 16))
        M.append(M[-1] + coeff[n])
    H, G, diagonal = I.point(0), I.point(0), I.point(0)
    for n in range(1, N + 1):
        right = min(x, Q(n + 1))
        diagonal = (diagonal + coeff[n] ** 2 * atom_gram(n, n, x, bits)).outward(bits + 16)
        if right == n:
            continue
        # All change points n,2n,4n are integers; these floors are exact on the open cell.
        P = A[n] - (1 + a) * A[n // 2] + a * A[n // 4]
        Qm = I.point(M[n]) - (r2 + 1) * M[n // 2] + r2 * M[n // 4]
        H = (H + _pair(A[n], I.point(M[n]), A[n], I.point(M[n]), Q(n), right, bits))\
            .outward(bits + 16)
        G = (G + _pair(P, Qm, P, Qm, Q(n), right, bits)).outward(bits + 16)
    constants = stability_constants(bits)
    point = reconstruction_at(x, bits, coeff)
    values = {"pickup_energy": H, "localized_energy": G, "localized_diagonal": diagonal,
              "localized_cross": G - diagonal,
              "inverse_bound_slack": constants["inverse_squared_gain"] * G - H,
              "forward_bound_slack": constants["forward_squared_gain"] * H - G,
              "diagonal_bound_slack": constants["diagonal_budget"] - diagonal,
              **point}
    if pair_check:
        gram = I.point(0)
        for m in range(1, N + 1):
            for n in range(1, N + 1):
                gram = (gram + coeff[m] * coeff[n] * atom_gram(m, n, x, bits)).outward(bits + 16)
        values["ordered_gram_identity_residual"] = gram - G
    return {"cutoff": str(x), "horizon": f"log({x})", "closed_N": N,
            "source": "actual Mobius" if coefficients is None else "bounded test sequence",
            "local_atom_range": {"strict_lower": str(x / 4), "closed_upper": str(x)},
            "full_ordered_pair_check": pair_check,
            "intervals": {k: v.outward(bits).json() for k, v in values.items()},
            "consistency": {k: v.contains_zero() for k, v in values.items() if k.endswith("residual")}}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cutoff", type=Q, action="append")
    parser.add_argument("--bits", type=int, default=64)
    parser.add_argument("--pair-check", action="store_true")
    args = parser.parse_args()
    try:
        records = [localized_energy(x, args.bits, pair_check=args.pair_check)
                   for x in (args.cutoff or [Q(1), Q(7, 2), Q(17, 2), Q(16), Q(64)])]
        if any(not all(r["consistency"].values()) for r in records):
            raise ArithmeticError("incompatible finite enclosures")
        result = {"schema": "dyadic-pickup-localization-finite-v1", "bits": args.bits,
                  "scope": "finite diagnostics; general analysis written only",
                  "uniform_localized_energy_proved": False, "lean_replay": "NOT_RUN",
                  "constants": {k: v.json() for k, v in stability_constants(args.bits).items()},
                  "records": records}
    except (ValueError, TypeError, ArithmeticError) as error:
        parser.exit(2, f"error: {error}\n")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
