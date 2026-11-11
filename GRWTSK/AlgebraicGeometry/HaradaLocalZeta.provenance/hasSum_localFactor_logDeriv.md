# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.hasSum_localFactor_logDeriv`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25; 30B10.

For complex q,z and natural m, if `norm (q^2*z) < 1` and `norm z < 1`,
`HasSum (fun n => ((q^2)^(n+1)+m)*z^n) (logDeriv (localFactor q m) z)`.
The index n+1 ranges over EVERY positive extension degree.

Primary argument: the series is the sum of q^2 times the geometric series
with ratio q^2*z and m times the geometric series with ratio z. Apply
`hasSum_geometric_of_norm_lt_one`, `HasSum.mul_left`, and `HasSum.add`.
Power laws give the coefficient identity exactly. The norm hypotheses exclude
both denominator zeros, so `logDeriv_localFactor` supplies the target value.
No interchange of differentiation and an unproved infinite sum is used.

Consumer: a convergent local count-generating series, not a finite-coefficient
fit. Outside the stated domain no convergence is asserted. This lemma is not
an arithmetic all-prime product or a proof that an externally proposed
function has the same logarithmic derivative.

Source comparison: standard geometric-series consequence of Harada's count,
[arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2), 31 January 2014,
p. 1, f2 and local point-count exponential. Mathlib's geometric-series API was
inspected at d13f23b723b8a846827a245b89c10fc7d3f11612 in
`Mathlib/Analysis/SpecificLimits/Normed.lean`.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication coordination](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Novelty: UNASSESSED; no novelty claim.
