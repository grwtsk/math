#!/usr/bin/env python3
"""Exact finite certificate for the Möbius endpoint square variation.

The script proves the finite-prefix part using integer arithmetic only.  Its
infinite tail uses the explicitly recorded published input

  |M(X)| <= 0.006688 X / log X, X >= 1_798_118,

as an external mathematical theorem.  The theorem is not re-proved here and is
kept separate from the exact computation.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
from dataclasses import dataclass
from fractions import Fraction
from pathlib import Path
from typing import Any

N0 = 1_798_118
C = Fraction(209, 31_250)  # 0.006688 exactly
ROOT_BITS = 20
SUM_BITS = 120
PREFIX_TARGET = Fraction(55_867, 500_000)  # 0.111734
TAIL_TARGET = Fraction(1, 300_000)
GLOBAL_TARGET = Fraction(14, 125)  # 0.112
LOG2_UPPER = Fraction(7, 10)
DYADIC_NEGATIVE_CAP = Fraction(49, 625)  # GLOBAL_TARGET * LOG2_UPPER


def ceil_div(a: int, b: int) -> int:
    if a < 0 or b <= 0:
        raise ValueError("ceil_div requires a >= 0 and b > 0")
    return (a + b - 1) // b


def linear_mobius(limit: int) -> list[int]:
    if limit <= 1:
        raise ValueError("limit must exceed 1")
    mu = [0] * limit
    mu[1] = 1
    primes: list[int] = []
    composite = bytearray(limit)
    for n in range(2, limit):
        if not composite[n]:
            primes.append(n)
            mu[n] = -1
        for p in primes:
            m = n * p
            if m >= limit:
                break
            composite[m] = 1
            if n % p == 0:
                mu[m] = 0
                break
            mu[m] = -mu[n]
    return mu


@dataclass(frozen=True)
class PrefixCertificate:
    scaled_numerator: int
    scaled_denominator: int
    mertens_at_last_prefix: int
    max_abs_mertens: int
    root_checks: int
    term_checks: int
    diagnostic_variation: str

    @property
    def upper(self) -> Fraction:
        return Fraction(self.scaled_numerator, self.scaled_denominator)


def compute_prefix_certificate() -> PrefixCertificate:
    mu = linear_mobius(N0)
    root_scale = 1 << ROOT_BITS
    sum_scale = 1 << SUM_BITS
    root_scale_sq = root_scale * root_scale
    root_scale_six = root_scale**6

    mertens = 0
    max_abs_mertens = 0
    scaled_sum = 0
    root_checks = 0
    term_checks = 0

    # Diagnostic only; acceptance uses the integer fixed-point upper sum above.
    diagnostic = 0.0

    for n in range(1, N0):
        mertens += mu[n]
        max_abs_mertens = max(max_abs_mertens, abs(mertens))

        rn = math.isqrt(n * root_scale_sq)
        rs = math.isqrt((n + 1) * root_scale_sq)
        if not (rn * rn <= n * root_scale_sq < (rn + 1) * (rn + 1)):
            raise AssertionError("lower square-root certificate failed at n")
        if not (rs * rs <= (n + 1) * root_scale_sq < (rs + 1) * (rs + 1)):
            raise AssertionError("upper square-root certificate failed at n+1")
        root_checks += 2

        # sqrt(n), sqrt(n+1) are bounded below by rn/root_scale and
        # rs/root_scale.  Rationalizing the exact gap gives
        #   g_n = 1 / (sqrt(n)sqrt(n+1)(sqrt(n)+sqrt(n+1))).
        den = rn * rn * rs * rs * (rn + rs) * (rn + rs)
        num = mertens * mertens * root_scale_six * sum_scale
        units = ceil_div(num, den)
        if units * den < num:
            raise AssertionError("fixed-point ceiling failed")
        scaled_sum += units
        term_checks += 1

        gap = 1.0 / math.sqrt(n) - 1.0 / math.sqrt(n + 1)
        diagnostic += float(mertens * mertens) * gap * gap

    return PrefixCertificate(
        scaled_numerator=scaled_sum,
        scaled_denominator=sum_scale,
        mertens_at_last_prefix=mertens,
        max_abs_mertens=max_abs_mertens,
        root_checks=root_checks,
        term_checks=term_checks,
        diagnostic_variation=format(diagnostic, ".17g"),
    )


def rational_text(q: Fraction) -> str:
    return f"{q.numerator}/{q.denominator}"


def build_certificate() -> dict[str, Any]:
    prefix = compute_prefix_certificate()

    # Exact elementary reductions used for the external tail.
    exp14_proxy = Fraction(11, 4) ** 14
    exp14_proxy_ok = exp14_proxy < N0 - 1
    tail_from_log14 = C * C / 14
    tail_target_ok = tail_from_log14 < TAIL_TARGET
    prefix_target_ok = prefix.upper < PREFIX_TARGET
    total_target_ok = PREFIX_TARGET + TAIL_TARGET < GLOBAL_TARGET

    # exp(7/10) > 2 from the first four nonnegative Taylor terms, hence
    # log 2 < 7/10.
    x = Fraction(7, 10)
    exp_lower = 1 + x + x * x / 2 + x * x * x / 6
    log2_upper_ok = exp_lower > 2
    dyadic_cap_ok = GLOBAL_TARGET * LOG2_UPPER == DYADIC_NEGATIVE_CAP

    checks = {
        "scaled_prefix_below_0_111734": prefix_target_ok,
        "exp14_proxy_below_tail_threshold": exp14_proxy_ok,
        "published_tail_reduces_below_1_over_300000": tail_target_ok,
        "combined_bound_below_14_over_125": total_target_ok,
        "exp_0_7_lower_series_exceeds_two": log2_upper_ok,
        "dyadic_negative_cap_exact": dyadic_cap_ok,
    }
    if not all(checks.values()):
        raise AssertionError(f"certificate check failed: {checks}")

    exact_check_count = prefix.root_checks + prefix.term_checks + len(checks)
    return {
        "schema": "square-variation-coherence-certificate-v1",
        "date": "2026-10-16",
        "external_source_input": {
            "authors": "Olivier Ramare and Sebastian Zuniga Alterman",
            "arxiv": "2408.05969",
            "statement": "abs(M(X)) <= 0.006688 * X / log(X) for X >= 1798118",
            "formalized_here": False,
        },
        "constants": {
            "N0": N0,
            "mertens_constant": rational_text(C),
            "root_bits": ROOT_BITS,
            "sum_bits": SUM_BITS,
            "prefix_target": rational_text(PREFIX_TARGET),
            "tail_target": rational_text(TAIL_TARGET),
            "global_square_variation_bound": rational_text(GLOBAL_TARGET),
            "log_two_upper": rational_text(LOG2_UPPER),
            "dyadic_negative_sector_cap": rational_text(DYADIC_NEGATIVE_CAP),
        },
        "finite_prefix": {
            "scaled_numerator": prefix.scaled_numerator,
            "scaled_denominator": prefix.scaled_denominator,
            "upper_fraction": rational_text(prefix.upper),
            "diagnostic_decimal_not_used_for_acceptance": prefix.diagnostic_variation,
            "mertens_at_1798117": prefix.mertens_at_last_prefix,
            "max_abs_mertens_before_N0": prefix.max_abs_mertens,
        },
        "tail": {
            "analytic_majorant": "c^2 * sum_{n>=N0} 1/(n log(n)^2)",
            "integral_bound": "c^2 / log(N0-1)",
            "reduced_bound_using_log_N0_minus_1_gt_14": rational_text(tail_from_log14),
            "accepted_tail_target": rational_text(TAIL_TARGET),
        },
        "consequences": {
            "sum_Mn_gap_n_squared_lt": rational_text(GLOBAL_TARGET),
            "every_negative_coherence_value_lt_or_eq": rational_text(GLOBAL_TARGET),
            "every_dyadic_negative_coherence_mass_lt": rational_text(DYADIC_NEGATIVE_CAP),
            "signed_and_positive_dyadic_block_growth_classes_equal": True,
        },
        "exact_checks": {
            "count": exact_check_count,
            "root_checks": prefix.root_checks,
            "term_checks": prefix.term_checks,
            "global_checks": checks,
        },
        "nonclaims": [
            "The published Mertens theorem is cited, not Lean-formalized here",
            "No signed dyadic coherence growth witness is proved",
            "No eventual positivity theorem is proved",
            "No Lean elaboration or axiom audit is claimed",
            "No zero-free region or proof of RH is claimed",
        ],
    }


def write_new(path: Path, payload: dict[str, Any]) -> None:
    if path.exists():
        raise FileExistsError(f"refusing to overwrite {path}")
    path.parent.mkdir(parents=True, exist_ok=True)
    data = json.dumps(payload, indent=2, sort_keys=True) + "\n"
    path.write_text(data, encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    payload = build_certificate()
    write_new(args.output, payload)
    digest = hashlib.sha256(args.output.read_bytes()).hexdigest()
    print(json.dumps({"output": str(args.output), "sha256": digest, "checks": payload["exact_checks"]["count"]}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
