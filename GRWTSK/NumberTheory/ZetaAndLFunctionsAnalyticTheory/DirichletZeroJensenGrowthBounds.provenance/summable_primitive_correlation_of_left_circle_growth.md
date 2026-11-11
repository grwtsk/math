# `GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_of_left_circle_growth`

Attribution: grwtsk contributors. Date: 2026-11-11. MSC2020: 11M41, 11M06, 30C15.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Coordination: math#1801.
[Source](../DirichletZeroJensenGrowthBounds.lean), SHA-256 `853f5d871434421f7e963cdcdd672ce70511c08c4c7a36c07b6d599f3515a7ff`.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

```lean
theorem summable_primitive_correlation_of_left_circle_growth
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hleft : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), s.re < 2 →
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖)
```

Argument: Supply D=(C+8+log(4))/log(2) and L_count=L+2 to the unchanged actual-source correlation theorem, using the preceding all-height count. Original character, analytic multiplicities, support, smoothness and complex spectral coordinates are retained.

Consumer: RP-OC-01 and RP-OC-02; convergence only, not the arithmetic Weil identity. Local dependencies, exact source identities, retained hypotheses,
prior-art comparison and open obligations: [module record](README.md).
Classification: local consequence/pinned-API use, not a numbered-paper formalization.

- David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `DirichletCharacter.LFunction_eq_LSeries, LFunction_modOne_eq`. Revision `d13f23b723b8a846827a245b89c10fc7d3f11612`; Apache-2.0. Blob `89c72580697983d86706cff17ccbea2cee6475a3`.

Elaboration, fresh kernel replay, transitive axiom audit and independent review: NOT_RUN.
No full-circle growth, arithmetic Weil identity, positivity or RH/GRH is supplied.
Unexecuted audit: `#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.summable_primitive_correlation_of_left_circle_growth`.
