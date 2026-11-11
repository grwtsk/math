# summable_primitive_correlation_of_circle_growth

Local attribution: grwtsk contributors. 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_of_circle_growth`.
Source: [DirichletZeroJensen.lean](../DirichletZeroJensen.lean), line 296.
Source blob `50308f5753a55ee6f7229eeb1d1d0674902b6ffb`; SHA-256 `7abcae79175ce1a360ae96aae8b96b6b7e02a73a1e1c017b0d890b43dd070961`.

## Exact statement

```lean
theorem summable_primitive_correlation_of_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hgrowth : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖)
```

## Correspondence and consumer

Return to the existing actual-source complex-correlation consumer.
Reused locators: `heightCount_le_of_circle_growth; summable_primitive_correlation_of_heightCount`.
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
Proposed after-build audit: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_of_circle_growth`.
No successful execution or program completion is asserted.
