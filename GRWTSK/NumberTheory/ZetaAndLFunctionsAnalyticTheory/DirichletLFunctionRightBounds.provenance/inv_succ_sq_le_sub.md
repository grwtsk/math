# `GRWTSK.NumberTheory.DirichletRightBounds.inv_succ_sq_le_sub`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem inv_succ_sq_le_sub (x : ℝ) (hx : 0 < x) :
    1 / (x + 1) ^ 2 ≤ 1 / x - 1 / (x + 1)
```

Argument: Elementary rational telescoping inequality. For x>0, x(x+1)>0 and x(x+1)<=(x+1)^2; taking reciprocals and the identity 1/(x(x+1))=1/x-1/(x+1) give the bound.

Consumer: sum_inv_sq_add_three_le. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.



Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.inv_succ_sq_le_sub`.
