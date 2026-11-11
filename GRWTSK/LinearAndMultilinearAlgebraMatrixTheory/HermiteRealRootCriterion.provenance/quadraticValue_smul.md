# `GRWTSK.HermiteRealRootCriterion.quadraticValue_smul`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** For every finite real matrix `M`, scalar `c` and real vector `v`, `quadraticValue M (c smul v) = norm(c)^2 * quadraticValue M v`. Matrix symmetry is unnecessary for this identity.

**Primary argument.** Over the reals, squared norm is `c^2`. Expand scalar multiplication and both finite sums. Each term has two factors `c`; ring normalization factors them out.

**Source comparison and consumer.** Local finite algebra helper, not a new paper theorem. It discharges the exact homogeneity premise of Program 3 `NegativeIndex.negativeIndex_eq_zero_iff`. It concerns the literal matrix form over the real scalar field, not an arbitrary function labeled as a quadratic form.

Dependency pins, unrun build command and evidence scope are in the [principal record](nonnegative_iff_real_support.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`. No arithmetic positivity or GRH claim.
