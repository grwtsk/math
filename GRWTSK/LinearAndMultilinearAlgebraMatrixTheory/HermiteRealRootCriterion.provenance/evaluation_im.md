# `GRWTSK.HermiteRealRootCriterion.evaluation_im`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** For every real coefficient vector `v : Fin n -> R` and complex `z`, the imaginary part of its finite complex evaluation is the existing `imagEvaluation z v`.

**Primary argument.** Distribute imaginary part over the finite sum. Multiplication by a real coefficient contributes `v_i Im(z^i)`.

**Correspondence and consumer.** Local representation helper for Nathanson v2 Theorem 1 and ZCERT-1 section 6, not a separate paper theorem. Together with `evaluation_re`, this converts the prescribed values `i,-i` into the literal real matrix quadratic form. It does not replace an ordinary square with an absolute square.

Exact paper edition, pins, unrun reproduction command and shared limitations are in [the principal record](nonnegative_iff_real_support.md). Evidence: `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, transitive axiom audit and independent review `NOT_RUN`. No novelty or GRH claim.
