# `GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_norm_le_right`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletZeroJensenGrowthBounds.lean), SHA-256 `853f5d871434421f7e963cdcdd672ce70511c08c4c7a36c07b6d599f3515a7ff`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem poleClearedLFunction_norm_le_right (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    ‖poleClearedLFunction chi s‖ ≤ (7 / 4 : ℝ) * ‖s - 1‖
```

Argument: Re(s)>=2 excludes s=1. Rewrite the already defined pole-cleared source as (s-1)L(chi,s), take norms, and apply the unconditional right-half-plane upper bound.

Consumer: poleClearedLFunction_norm_le_right_circle. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_norm_le_right`.
