# `GRWTSK.NumberTheory.DirichletRightBounds.norm_term_le_inv_sq`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem norm_term_le_inv_sq {f : ℕ → ℂ}
    (hf : ∀ n : ℕ, n ≠ 0 → ‖f n‖ ≤ 1) {s : ℂ} (hs : 2 ≤ s.re)
    {n : ℕ} (hn : n ≠ 0) :
    ‖LSeries.term f s n‖ ≤ 1 / (n : ℝ) ^ 2
```

Argument: Move the complex exponent from Re(s)>=2 to 2 using norm monotonicity, evaluate the norm there, and bound the numerator by one. The natural index is nonzero.

Consumer: norm_LSeries_sub_first_le. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- Aaron Anderson and Michael Stoll, [Mathlib/NumberTheory/LSeries/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Basic.lean), `LSeries.norm_term_le_of_re_le_re, LSeries.norm_term_eq, LSeriesSummable_of_bounded_of_one_lt_re`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `9c600187008df264d2ed6320fcfe3ee395538aca`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.norm_term_le_inv_sq`.
