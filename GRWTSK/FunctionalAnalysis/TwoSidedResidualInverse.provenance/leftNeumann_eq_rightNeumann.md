# GRWTSK.FunctionalAnalysis.TwoSidedResidual.leftNeumann_eq_rightNeumann

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: both residual norms below one imply equality of the left and right Neumann corrections.
Proof: if la=1 and at=1, then l=l(at)=(la)t=t. Both residuals are used.
Dependencies: `leftNeumann_mul`, `mul_rightNeumann` in the same source; associativity in pinned mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: a genuine two-sided inverse. Unilateral-shift examples prevent discarding one side without another hypothesis.
Standard algebraic consequence, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
