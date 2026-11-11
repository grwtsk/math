# GRWTSK.FunctionalAnalysis.TwoSidedResidual.norm_leftNeumann_le

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: with norm(1)=1 and norm(1-ra)<1, norm(leftNeumann(a,r))<=norm(r)/(1-norm(1-ra)).
Proof: use the geometric-series norm bound, submultiplicativity and nonnegative norm(r). The norm-one assumption is explicit, unlike the more general upstream estimate.
Primary source: mathlib contributors, SpecificLimits/Normed.lean, `tsum_geometric_le_of_norm_lt_one`, revision `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: quantitative inverse/resolvent control. To identify this correction with a two-sided inverse requires the other residual; no matrix entry norm is silently used.
Standard estimate, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
