# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.residualWeight_eq_one`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25.

For every finite field K, define the complex residual weight by
`((card (Points K) : C) - (card K : C)^2 + delta)/2`, where delta is 1 exactly
when 2=0 in K. The theorem proves that this residual weight equals 1.
Subtraction and division are in characteristic zero, not in K or in naturals.

Primary argument: in characteristic two the count is q^2+1 and delta=1;
otherwise it is q^2+2 and delta=0. In either branch the numerator is exactly 2.
The proof imports `card_points_of_two_eq_zero` and `card_points_of_two_ne_zero`
and performs field algebra; it does not posit the residual as a certificate field.

Consumer: an exact corrected coefficient for a future arithmetic prime-term
source-return theorem. Recovering this coefficient does not recover the
conductor, gamma/parity or pole terms, and is not a positivity argument.
Dropping delta in characteristic two instead gives 1/2, not 1.

Source comparison: Shinya Harada, [arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2),
31 January 2014, p. 1, f2 and the theorem for L2=(12/5); elementary local
consequence, not a new point-count result.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication coordination](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Novelty: UNASSESSED; no GRH claim.
