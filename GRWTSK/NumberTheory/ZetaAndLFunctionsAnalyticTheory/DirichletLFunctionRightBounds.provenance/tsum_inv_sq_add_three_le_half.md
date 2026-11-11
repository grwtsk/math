# `GRWTSK.NumberTheory.DirichletRightBounds.tsum_inv_sq_add_three_le_half`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem tsum_inv_sq_add_three_le_half :
    (∑' n : ℕ, 1 / ((n : ℝ) + 3) ^ 2) ≤ 1 / 2
```

Argument: Use the explicitly proved summability and the uniform bound on every finite initial sum. No divergent totalized sum is assigned arithmetic meaning.

Consumer: norm_LSeries_sub_first_le. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- Sébastien Gouëzel and Yury Kudryashov, [Mathlib/Topology/Algebra/InfiniteSum/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/Real.lean), `summable_of_sum_range_le; passage from bounded nonnegative finite sums`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `82131f71d8c5c0b14cb5d23cd6da8543422a4e3b`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.tsum_inv_sq_add_three_le_half`.
