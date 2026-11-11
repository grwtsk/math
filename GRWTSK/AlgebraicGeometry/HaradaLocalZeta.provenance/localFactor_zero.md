# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.localFactor_zero`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25.

For every complex q and natural m, `localFactor q m 0 = 1`, where
`localFactor q m z = (1-q^2*z)^(-1) * ((1-z)^(-1))^m`.
Both affine denominators evaluate to 1 at zero. Their inverse powers and
product are therefore 1, including when m=0. This is direct simplification.

Consumer: the nonzero normalization anchor used with Program 8's
logarithmic-derivative rigidity. The anchor alone does not identify a function:
equality of the exact logarithmic derivatives on the stated domain remains
necessary. Totalized inverse values at possible poles are not analytic values.

Source comparison: the normalization of the local point-count exponential
in Shinya Harada, [arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2),
31 January 2014, p. 1, definition preceding the unnumbered theorem.
This lemma concerns the displayed rational candidate; it does not prove the
analytic exponential definition or a global Hasse-Weil identity.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins, limits and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication receipt](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Novelty: UNASSESSED; no novelty claim.
