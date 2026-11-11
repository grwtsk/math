# heightCount_le_jensen

Local attribution: grwtsk contributors. 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_jensen`.
Source: [DirichletZeroJensen.lean](../DirichletZeroJensen.lean), line 226.
Source blob `50308f5753a55ee6f7229eeb1d1d0674902b6ffb`; SHA-256 `7abcae79175ce1a360ae96aae8b96b6b7e02a73a1e1c017b0d890b43dd070961`.

## Exact statement

```lean
theorem heightCount_le_jensen (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (H M : ℝ) (hH : 2 ≤ H) (hM : 1 ≤ M)
    (hbound : ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), ‖poleClearedLFunction chi s‖ ≤ M) :
    (heightCount chi hprim H : ℝ) ≤
      Real.log (M / ‖DirichletCharacter.LFunction chi 2‖) / Real.log 2
```

## Correspondence and consumer

Substantive source Jensen count, retaining M>=1 and the exact radii.
Reused locators: `AnalyticOnNhd.sum_divisor_le; heightCount_le_poleCleared_divisor`.
Primary source editions, authors, licenses, complete analytical argument, source
comparison, dependencies, hostile boundaries and program consumers are in
[README](README.md). Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`;
canonical prerequisite base `78daf1725c74caf6f9cff350732269bcac9ceeb4`; Lean v4.34.1.
This is a source adaptation or local consequence, not a direct new paper
formalization. All hypotheses shown above are retained. No source growth or
positivity is inferred from conditional conclusions.

## Evidence

Elaboration, kernel replay, transitive axiom audit, and independent review: NOT_RUN.
The owning commit and actual source-only checks are recorded in math#1801.
Proposed after-build audit: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.heightCount_le_jensen`.
No successful execution or program completion is asserted.
