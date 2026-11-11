# GRWTSK.FunctionalAnalysis.TwoSidedResidual.norm_leftNeumann_sub_le

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: both residual norms below one imply norm(b-r)<=norm(1-ra)*norm(b), where b=leftNeumann(a,r).
Proof: from ab=1, expand (1-ra)b=b-r. Apply submultiplicativity.
Dependencies: same-source `mul_leftNeumann`; normed-ring algebra in mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: posterior error certification; sampled numerical residuals do not establish the hypotheses about exact elements.
Standard estimate, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
