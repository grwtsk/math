# GRWTSK.FunctionalAnalysis.TwoSidedResidual.isUnit_of_twoSidedResidual

Local attribution: grwtsk contributors. Date: 2026-11-11.
Source: `../TwoSidedResidualInverse.lean`, SHA-256 `9f9915efac2220e437b096ec8e3f70b62e5c45571fa69605f43020e5eb8c273a`.
Statement: for a,r in a complete normed ring, norm(1-ra)<1 and norm(1-ar)<1 imply IsUnit(a).
Proof: construct a Units value with value a and inverse leftNeumann(a,r), using the proved products in both orders. No finite dimension or commutativity is assumed.
Dependencies: the same-source inverse identities and actual Units constructor; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Consumer: determinant nonvanishing under a separately proved Fredholm implication. The theorem does not construct that determinant.
Standard Neumann consequence, novelty UNASSESSED. Source candidate; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
[Full comparison and reproduction](https://github.com/grwtsk/math/blob/main/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantCertification.md).
