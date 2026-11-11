# `GRWTSK.RationalHermiteSignCertificates.continuous_quadraticValue`

Local attribution: grwtsk contributors. Source: [module](../RationalHermiteSignCertificates.lean); exact revision, digest, dependencies and reproduction: [context](context.md).

For every finite index type with decidable equality and every real matrix H, the existing literal function x -> sum_i sum_j x_i H_ij x_j is continuous in the finite product topology. No symmetry, positivity or nonsingularity hypothesis is used. The primary proof is continuity of coordinate evaluations, multiplication by constants, products and finite sums, discharged by `fun_prop` after unfolding the existing definition.

This is a standard local consequence of Mathlib's topological ring/finite-sum rules, not a new paper theorem. Consumer: the open negative locus used by `exists_rational_negative`. It says nothing about continuity of arithmetic source parameters or zero divisors. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
