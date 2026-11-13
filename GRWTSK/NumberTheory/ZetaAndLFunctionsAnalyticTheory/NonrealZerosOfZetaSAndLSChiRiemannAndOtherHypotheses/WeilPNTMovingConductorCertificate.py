#!/usr/bin/env python3
# Copyright (c) 2026 grwtsk contributors. MIT.
"""Exact-rational verification for the WMC-9 effective moving-window constants.

WMC-10 uses the unconditional classical PNT psi(x)~x as a WRITTEN
mathematical theorem; this finite checker neither proves the PNT nor
certifies any explicit PNT error term or conductor threshold.
No Lean/kernel/axiom audit or RH/GRH proof is performed.
"""
from fractions import Fraction as F


def main():
    if not __debug__:
        raise RuntimeError('exact certificate requires Python assertions (no -O)')

    # Prior WMC-7 proves 4/3<alpha=log(4)<139/100 and c(q,a)>log(q)-6.
    alpha_lower, alpha_upper = F(4, 3), F(139, 100)
    assert alpha_lower < alpha_upper
    for v in (F(128), F(512, 4), F(129), F(256), F(1024)):
        # sqrt(v)<=v/11 iff v>=121; cbrt(v)<=v/25 iff v>=125.
        assert v >= 125 and v >= 121
        assert v * v >= 25 ** 3  # equivalent to v^(2/3)>=25
        assert v >= 11**2

    coefficient = alpha_upper * (F(2) + F(1, 11) + F(1, 25)) / 4
    assert coefficient == F(40727, 55000)
    lower_coefficient = 1 - coefficient
    assert lower_coefficient == F(14273, 55000)
    # Save the exact negative Abel endpoint: -2*alpha is at most -8/3.
    intercept = -F(6) + 2*alpha_lower
    assert intercept == -F(10, 3)
    delta_slope = lower_coefficient - F(1, 4)
    assert delta_slope == F(523, 55000)
    gap_at_512 = 512*delta_slope + intercept - F(1)
    assert gap_at_512 == F(11041, 20625) > 0

    # Exact cutoff identities for q with M=log(q)>=512.
    cases = (512, 513, 768, 1024, 1536, 2048, 4096)
    for M in cases:
        v = F(M, 4)
        assert v >= F(128)
        assert v >= F(121) and v * v >= F(25**3)
        assert (lower_coefficient*M + intercept) > (F(M, 4) + 1)
        assert F(M*M, 16) == F(9, 4)*F(M*M, 36)

    # These examples check ONLY arithmetic ranges of the separate
    # PNT-conditional-on-a-classical-theorem parameter choice; there
    # is no computation of a uniform large-q threshold from o(1).
    parameter_cases = ((F(1, 3), F(1, 4)),
                       (F(3, 8)-F(1, 100), F(1, 4)),
                       (F(1, 4), F(2, 5)),
                       (F(2, 5), F(1, 10)))
    for theta, rho in parameter_cases:
        assert F(0) < theta < F(1, 2)
        assert F(0) < rho < 1 - 2*theta
    # Theta=3/8, rho=1/4 is a boundary equality: the proof does NOT
    # permit equality, since the asymptotic error may have either sign.
    assert 1 - 2*F(3, 8) == F(1, 4)
    assert F(9, 64) / F(1, 36) == F(81, 16)

    print('PASS WMC_PNT_ASYMPTOTIC_AND_EFFECTIVE_RATIONAL_V1')
    print('effective_logq_threshold=512; effective_expL_bound=M_squared_div_16')
    print('coercivity_lower_coefficient=14273/55000; intercept=-10/3')
    print('effective_margin=Q_over_mass_gt_M_div_4_plus_1')
    print('exact_boundary_gap_above_plus_1_at_M512=11041/20625')
    print('effective_cutoff_multiplier_vs_WMC8=9/4')
    print('PNT_theta_lt_one_half_rho_lt_one_minus_two_theta_parameter_checks=4')
    print('PNT_asymptotic=CLASSICAL_THEOREM_NOT_CERTIFIED_BY_FINITE_TEST')
    print('arithmetic=EXACT_FRACTIONS; Weil_source=WRITTEN; Lean=NOT_RUN; RH_GRH=UNPROVED')


if __name__ == '__main__':
    main()
