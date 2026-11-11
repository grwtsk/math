# `GRWTSK.HermiteRealRootCriterion.twice_evaluation_realCoeffs`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** If the complex polynomial `p` has `natDegree < n`, and `h` is the `n`-slot vector of real parts of its coefficients, then `2 h(z) = p(z) + conjugate(p(conjugate(z)))` for every complex `z`.

**Primary argument.** Expand `p` at both arguments over `Fin n`. Conjugation commutes with sums, products and powers. Apply `2 Re(c) = c + conjugate(c)` to every coefficient and distribute. No claim that real part is a ring homomorphism is used.

**Source comparison.** This is an explicit averaging proof of the realification step underlying Nathanson v2 Lemma 1, rather than a proof via uniqueness of the interpolation polynomial. Upstream support is `Polynomial.eval_eq_sum_range'` and `Fin.sum_univ_eq_sum_range` at the pinned mathlib revision. No independent theorem novelty is asserted.

**Consumer and limits.** It supplies a real coefficient vector while retaining complex evaluation at the actual nodes. Degree control is a hypothesis. It supplies no numerical coefficient enclosure, Fourier realization or arithmetic source equality.

Exact edition, pins and unrun build target: [principal record](nonnegative_iff_real_support.md). Evidence: `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, transitive axiom audit and independent review `NOT_RUN`.
