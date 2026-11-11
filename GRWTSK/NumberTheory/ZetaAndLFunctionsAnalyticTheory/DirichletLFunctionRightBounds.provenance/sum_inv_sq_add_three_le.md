# `GRWTSK.NumberTheory.DirichletRightBounds.sum_inv_sq_add_three_le`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem sum_inv_sq_add_three_le (m : ℕ) :
    (∑ n ∈ range m, 1 / ((n : ℝ) + 3) ^ 2) ≤ 1 / 2 - 1 / ((m : ℝ) + 2)
```

Argument: Induct on the finite cutoff. The new term is at most 1/(m+2)-1/(m+3), which cancels the previous terminal correction. The base cutoff zero gives equality.

Consumer: summable_inv_sq_add_three; tsum_inv_sq_add_three_le_half. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.



Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.sum_inv_sq_add_three_le`.
