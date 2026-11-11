# `GRWTSK.NumberTheory.DirichletRightBounds.norm_LFunction_bounds`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem norm_LFunction_bounds (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    1 / 4 ≤ ‖DirichletCharacter.LFunction chi s‖ ∧
      ‖DirichletCharacter.LFunction chi s‖ ≤ 7 / 4
```

Argument: Apply both triangle inequalities to the proved norm(L-1)<=3/4: 1<=norm(L)+norm(L-1), and norm(L)<=norm(L-1)+1. The lower bound is quantitative, not a supplied nonvanishing premise.

Consumer: abs_log_norm_LFunction_le; poleClearedLFunction_norm_le_right. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.norm_LFunction_bounds`.
