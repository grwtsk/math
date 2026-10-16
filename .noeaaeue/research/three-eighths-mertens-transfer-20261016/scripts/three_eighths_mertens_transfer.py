#!/usr/bin/env python3
from fractions import Fraction
import argparse, json, pathlib

B = Fraction(4374785349, 5000000000)
SEVEN_EIGHTHS = Fraction(7, 8)
FIVE_SIXTHS = Fraction(5, 6)
SIGMA = Fraction(3, 8)

def fs(x):
    return str(x.numerator) if x.denominator == 1 else f"{x.numerator}/{x.denominator}"

def build():
    delta = SEVEN_EIGHTHS - B
    epsilon = delta / 2
    beta = B + epsilon
    alpha = 2 * B - 1
    gap = SIGMA + Fraction(1,2) - beta
    multiplier = 1 / (2 * SIGMA * SIGMA * gap)
    checks = {
        "boundary_below_seven_eighths": B < SEVEN_EIGHTHS,
        "strict_margin_positive": delta > 0,
        "midpoint_epsilon_positive": epsilon > 0,
        "midpoint_exponent_below_seven_eighths": beta < SEVEN_EIGHTHS,
        "three_eighths_above_boundary_shift": SIGMA > B - Fraction(1,2),
        "transfer_gap_equals_half_margin": gap == delta / 2,
        "multiplier_exact": multiplier == Fraction(320000000000,1931859),
        "coherence_exponent_exact": alpha == Fraction(1874785349,2500000000),
        "coherence_exponent_below_three_quarters": alpha < Fraction(3,4),
        "one_third_not_reached": B > FIVE_SIXTHS,
        "baseline_seven_eighths_has_zero_endpoint_margin":
            SIGMA + Fraction(1,2) - SEVEN_EIGHTHS == 0,
    }
    fixtures = []
    for extra in [Fraction(1,100), Fraction(1,64), Fraction(1,10), Fraction(1,4)]:
        sigma = B - Fraction(1,2) + extra
        eps = (sigma + Fraction(1,2) - B)/2
        beta_s = B + eps
        denominator = 2*sigma*sigma*(sigma+Fraction(1,2)-beta_s)
        expected = sigma*sigma*(sigma+Fraction(1,2)-B)
        fixtures.append({
            "sigma":fs(sigma),
            "epsilon":fs(eps),
            "beta":fs(beta_s),
            "strict_gap": beta_s < sigma+Fraction(1,2),
            "denominator_identity":denominator == expected,
        })
    checks["generic_fixtures_all_pass"] = all(
        row["strict_gap"] and row["denominator_identity"] for row in fixtures
    )
    assert all(checks.values()), checks
    return {
        "schema":"three-eighths-mertens-transfer-certificate-v1",
        "status":"passed",
        "exact_arithmetic":{
            "B":fs(B),
            "delta_to_seven_eighths":fs(delta),
            "midpoint_epsilon":fs(epsilon),
            "midpoint_beta":fs(beta),
            "boundary_shift":fs(B-Fraction(1,2)),
            "coherence_exponent":fs(alpha),
            "coherence_gain_below_three_quarters":fs(Fraction(3,4)-alpha),
            "gap_to_five_sixths":fs(B-FIVE_SIXTHS),
            "three_eighths_multiplier":fs(multiplier),
        },
        "checks":checks,
        "generic_fixtures":fixtures,
        "external_dependencies":{
            "quasi_riemann_formal_revision":"b83dbbd914c5751acf9bc3389cde58970437278f",
            "pintz_arxiv":"2608.24878",
            "local_transfer_blob":"5cf91262ed912e477f2d6b19c94b9791402e801d",
        },
        "limitations":[
            "external Lean theorem not replayed at local pin",
            "Pintz transfer not formalized locally",
            "Mertens constant existential, not explicit",
            "no one-third-line estimate",
            "no RH proof",
        ],
    }

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--output", required=True)
    a=p.parse_args()
    out=pathlib.Path(a.output)
    if out.exists():
        raise SystemExit("output exists")
    out.write_text(json.dumps(build(),indent=2,sort_keys=True)+"\n")
if __name__=="__main__":
    main()
