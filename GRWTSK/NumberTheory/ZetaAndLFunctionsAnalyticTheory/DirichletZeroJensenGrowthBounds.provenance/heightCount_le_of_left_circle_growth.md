# `GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_of_left_circle_growth`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletZeroJensenGrowthBounds.lean), SHA-256 `853f5d871434421f7e963cdcdd672ce70511c08c4c7a36c07b6d599f3515a7ff`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem heightCount_le_of_left_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hleft : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), s.re < 2 →
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤
      ((C + 8 + Real.log 4) / Real.log 2) * H * (Real.log H + (L + 2))
```

Argument: Supply the full-circle bound just constructed, with C_new=C+8 and L_new=L+1, to the uniform-centre count. The prior centre absorption adds a further one to L, yielding L+2.

Consumer: summable_primitive_correlation_of_left_circle_growth. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_of_left_circle_growth`.
