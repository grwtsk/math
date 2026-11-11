# `GRWTSK.NumberTheory.DirichletRightBounds.norm_LSeries_sub_first_le`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem norm_LSeries_sub_first_le {f : ℕ → ℂ}
    (hf : ∀ n : ℕ, n ≠ 0 → ‖f n‖ ≤ 1) {s : ℂ} (hs : 2 ≤ s.re) :
    ‖LSeries f s - f 1‖ ≤ 3 / 4
```

Argument: Prove absolute convergence for the bounded coefficients at Re(s)>=2. Split the original sum at index 3: f(1), the n=2 term, and the complete n>=3 tail; n=0 is zero by definition. Bound the latter two pieces by 1/4 and 1/2 using an explicitly summable majorant. Apply the triangle inequality.

Consumer: norm_LFunction_sub_one_le. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- Aaron Anderson and Michael Stoll, [Mathlib/NumberTheory/LSeries/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Basic.lean), `LSeries.norm_term_le_of_re_le_re, LSeries.norm_term_eq, LSeriesSummable_of_bounded_of_one_lt_re`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `9c600187008df264d2ed6320fcfe3ee395538aca`.
- Sébastien Gouëzel and Yury Kudryashov, [Mathlib/Topology/Algebra/InfiniteSum/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/Real.lean), `summable_of_sum_range_le; passage from bounded nonnegative finite sums`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `82131f71d8c5c0b14cb5d23cd6da8543422a4e3b`.
- Johannes Hölzl, [Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean), `Summable.sum_add_tsum_nat_add, generated from Multipliable.prod_mul_tprod_nat_add`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `068846239a74b9cff04c456bcba142809ac58eca`.
- Sébastien Gouëzel, Heather Macbeth, Johannes Hölzl and Yury Kudryashov, [Mathlib/Analysis/Normed/Group/InfiniteSum.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/InfiniteSum.lean), `Summable.of_norm_bounded, HasSum.norm_le_of_bounded`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.norm_LSeries_sub_first_le`.
