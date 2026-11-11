# GRWTSK.FunctionalAnalysis.TwoSidedResidual.leftResidual_le

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: norm(1-ra)<=norm(1-ra0)+norm(r)*norm(a-a0), for arbitrary a,a0,r in the declared complete normed ring.
Proof: expand 1-ra=(1-ra0)-r(a-a0), then apply the triangle inequality and submultiplicativity. Multiplication order is preserved.
Primary comparison: standard normed-ring identities, mathlib contributors, pin `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: head-plus-tail operator certification. A finite head alone supplies no bound on a-a0.
Standard estimate, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
