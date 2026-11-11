# `GRWTSK.HermiteRealRootCriterion.exists_real_interpolant`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.

**Statement.** Let `S` be a finite conjugation-closed subset of the complex numbers and `n >= card S`. If prescribed values on `S` satisfy `values(conjugate z) = conjugate(values z)`, there is a real vector `v : Fin n -> R` whose polynomial evaluation matches all those values.

**Primary argument.** For empty support use the zero vector. Otherwise construct the complex Lagrange interpolant of degree below `card S`. The dimension bound gives degree below `n`; handle the zero polynomial separately when passing to `natDegree`. Averaging coefficients with their conjugates preserves the prescribed values by `twice_evaluation_realCoeffs` and the compatibility assumption. Cancel the nonzero factor two.

**Source comparison.** Direct formalization of the substance of Nathanson v2 Lemma 1, with coefficient averaging and an explicit finite vector representation. Reuses Mathlib `Lagrange.eval_interpolate_at_node` and `Lagrange.degree_interpolate_lt` rather than rebuilding interpolation. See the [principal record](nonnegative_iff_real_support.md) for exact edition and pins.

**Consumer and limits.** The dimension bound counts distinct locations, not multiplicities. This supports the Hermite separator; it does not provide effective enclosures or a compact smooth test. In contrast, RP-OC-02's opposite real pair values are not conjugation-compatible and cannot use this real-coefficient conclusion.

Evidence: `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`. The unrun build command and remaining analytic obligations are in the principal record.
