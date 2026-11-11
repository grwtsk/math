# GRWTSK.FunctionalAnalysis.TwoSidedResidual.rightResidual_le

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: norm(1-ar)<=norm(1-a0*r)+norm(a-a0)*norm(r).
Proof: expand 1-ar=(1-a0*r)-(a-a0)r. Apply triangle inequality and submultiplicativity without swapping factors.
Primary comparison: standard normed-ring identities, mathlib contributors, pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: the second full-operator residual budget. It is not inferred from the first residual by commutativity.
Standard estimate, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
