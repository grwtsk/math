# GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_of_strip_growth

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../DirichletLFunctionLeftBounds.lean); Git blob `2c47565053a5f684e543f03da4d3f7181b2d0493`;
SHA-256 `3a1f3ec4f7d9d61733406b1b8e8c7b3be394e1a067d081ef620ab32b91a8f80f`. Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`.
Ambient context: `variable {N : ℕ} [NeZero N]`.

Exact statement (proof body in the maintained source):

```lean
theorem heightCount_le_of_strip_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hstrip : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      -1 < s.re → s.re < 2 →
        ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤
      ((C + farLeftGrowthConstant chi + 8 + Real.log 4) / Real.log 2) *
        H * (Real.log H + (L + 2))
```

Argument: Apply the existing uniform-center Jensen count to the whole-circle estimate just derived, with parameters C+K+8 and L+1. This gives the exact original multiplicity count, not a replacement divisor.

Consumer/source return: summable_primitive_correlation_of_strip_growth. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

David Loeffler and Michael Stoll: [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `gammaFactor; LFunction_eq_completed_div_gammaFactor; IsPrimitive.completedLFunction_one_sub; rootNumber; rootNumber_modOne; LFunction_modOne_eq`; Git blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

Stefan Kebekus: [Mathlib/Analysis/Complex/JensenFormula.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/JensenFormula.lean), `AnalyticOnNhd.sum_divisor_le, via the existing DirichletZeroJensen consumer`; Git blob `3dd78e234df51703431c913f5bc6081233542e97`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_of_strip_growth
```
