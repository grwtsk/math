# `GRWTSK.HermiteRealRootCriterion.evaluation_re`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** For every real coefficient vector `v : Fin n -> R` and complex `z`, the real part of its finite complex evaluation is the existing `realEvaluation z v`.

**Primary argument.** Distribute the real-part additive map over the finite sum. A real coefficient has zero imaginary part, leaving the summands `v_i Re(z^i)`.

**Correspondence and consumer.** Local representation helper for the ordinary-square evaluation in Nathanson v2 Theorem 1 and ZCERT-1 section 6, not a separate paper theorem. It is used to compute the separator's Hermite value. No analytic source identity is supplied.

Exact paper edition, source and dependency pins, unrun reproduction command, shared limitations and evidence are recorded in [the principal record](nonnegative_iff_real_support.md). This declaration is `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, transitive axiom audit and independent review are `NOT_RUN`. No novelty or GRH claim.
