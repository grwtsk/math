# `GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_norm_le_right_circle`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletZeroJensenGrowthBounds.lean), SHA-256 `853f5d871434421f7e963cdcdd672ce70511c08c4c7a36c07b6d599f3515a7ff`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem poleClearedLFunction_norm_le_right_circle (chi : DirichletCharacter ℂ N)
    (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) (hRe : 2 ≤ s.re) :
    ‖poleClearedLFunction chi s‖ ≤ 8 * H
```

Argument: On the outer circle, norm(s-2)=2(H+2). The triangle inequality gives norm(s-1)<=2H+5. Multiply by 7/4; for H>=2 the result is <=8H. Every point of the right-hand circle portion is covered.

Consumer: poleClearedLFunction_right_circle_growth. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.poleClearedLFunction_norm_le_right_circle`.
