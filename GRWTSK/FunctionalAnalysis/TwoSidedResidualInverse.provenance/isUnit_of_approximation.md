# GRWTSK.FunctionalAnalysis.TwoSidedResidual.isUnit_of_approximation

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: norm(a-a0)<=epsilon and both head-plus-tail residual budgets strictly below one imply IsUnit(a).
Proof: monotonicity under multiplication by norm(r) transports the error bound through `leftResidual_le` and `rightResidual_le`. Apply `isUnit_of_twoSidedResidual` to the resulting exact residuals.
Dependencies: these three same-source lemmas, mathlib pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: exact invertibility from approximations. For a=0,r=1 the residual is one and invertibility fails, so replacing < by <= is invalid.
Standard consequence, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
