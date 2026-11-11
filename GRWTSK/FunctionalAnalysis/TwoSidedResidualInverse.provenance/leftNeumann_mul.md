# GRWTSK.FunctionalAnalysis.TwoSidedResidual.leftNeumann_mul

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: in any complete normed ring, norm(1-ra)<1 implies leftNeumann(a,r)*a=1.
Proof: the convergent geometric series S for E=1-ra satisfies S(1-E)=1. Associate (Sr)a=S(ra).
Primary source: mathlib contributors, SpecificLimits/Normed.lean, `geom_series_mul_neg`, revision `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: the two-sided inverse construction. A left inverse alone does not prove surjectivity in infinite dimension.
Standard consequence, novelty UNASSESSED; no novelty claim. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full source comparison, pins, hostile controls and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
