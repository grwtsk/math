# GRWTSK.FunctionalAnalysis.TwoSidedResidual.mul_rightNeumann

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: in any complete normed ring, norm(1-ar)<1 implies a*rightNeumann(a,r)=1.
Proof: the convergent geometric series S for E=1-ar satisfies (1-E)S=1. Associate a(rS)=(ar)S.
Primary source: mathlib contributors, SpecificLimits/Normed.lean, `mul_neg_geom_series`, revision `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: the two-sided inverse construction. No commutation or finite-dimensional inference is used.
Standard consequence, novelty UNASSESSED; no novelty claim. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full source comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
