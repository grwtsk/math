# `GRWTSK.NumberTheory.DirichletRightBounds.norm_LFunction_sub_one_le`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletLFunctionRightBounds.lean), SHA-256 `2bfee1bfc20ffdce689841a025c46956f28c03e6bd1428e59508283a90950417`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem norm_LFunction_sub_one_le (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    ‖DirichletCharacter.LFunction chi s - 1‖ ≤ 3 / 4
```

Argument: Specialize bounded coefficients to the actual character, use chi(1)=1, and invoke LFunction_eq_LSeries only on Re(s)>1. This is a return to analytically continued source values, not a redefinition by a divergent series.

Consumer: norm_LFunction_bounds; norm_riemannZeta_bounds. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- Aaron Anderson and Michael Stoll, [Mathlib/NumberTheory/LSeries/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Basic.lean), `LSeries.norm_term_le_of_re_le_re, LSeries.norm_term_eq, LSeriesSummable_of_bounded_of_one_lt_re`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `9c600187008df264d2ed6320fcfe3ee395538aca`.
- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.DirichletRightBounds.norm_LFunction_sub_one_le`.
