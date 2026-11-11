# `GRWTSK.HermiteRealRootCriterion.negativeIndex_zero_iff_real_support`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** For conjugation-closed finite `S`, strictly positive weights and `n >= card S`, Program 3's real-scalar negative index of the literal Hermite quadratic form is zero iff all support locations are real.

**Primary argument.** The finite quadratic form vanishes at zero and has norm-square homogeneity by `quadraticValue_smul`. Apply Program 3 `negativeIndex_eq_zero_iff`, then the finite `nonnegative_iff_real_support` equivalence.

**Source comparison.** Local composition of the classical Hermite criterion with `GRWTSK.LinearAlgebra.NegativeIndex.negativeIndex_eq_zero_iff`, inspected at math `5f66eb82a40921253664f53602851091ccd01d94`; coordinate through math#1808. The scalar field is explicitly real. This is a zero-index equivalence, not the full inertia formula or a new Weil-index theorem.

**Consumer and limits.** Provides a shared finite sign interface for Programs 3 and 6. It does not count complex negative dimensions, construct an indefinite arithmetic completion, or infer a global Weil index.

Exact external edition, pins, unrun reproduction and limitations: [principal record](nonnegative_iff_real_support.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`.
