# GRWTSK.FunctionalAnalysis.TwoSidedResidual.mul_leftNeumann

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: both residual norms below one imply a*leftNeumann(a,r)=1.
Proof: replace the left correction with the equal right correction, then use its right-inverse identity.
Dependencies: `leftNeumann_eq_rightNeumann`, `mul_rightNeumann`; mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: the Units constructor. Complete normed ring and both residual hypotheses are retained; arithmetic estimates are not supplied.
Standard consequence, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
