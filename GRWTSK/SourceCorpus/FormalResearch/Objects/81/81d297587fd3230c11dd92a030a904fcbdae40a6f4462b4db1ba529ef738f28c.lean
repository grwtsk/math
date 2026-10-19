import Mathematics.TensorNetwork.Canonical

/-!
# Gauge-independent finite observables

Observable expectations are normalized contractions of the represented state.
The unnormalized numerator and normalization denominator remain separately
available.
-/

namespace Mathematics.TensorNetwork

open scoped BigOperators

/-- A finite Hermitian observable in the selected tensor basis. -/
structure HermitianObservable (N D : Nat) where
  matrix :
    PhysicalConfiguration N D →
    PhysicalConfiguration N D →
    ℂ
  hermitian :
    ∀ left right,
      star (matrix right left) = matrix left right

/-- Exact squared norm in the coordinate basis. -/
noncomputable def stateWeight
    (state : TensorState N D) : ℂ :=
  ∑ basis : PhysicalConfiguration N D,
    star (state basis) * state basis

/-- Exact unnormalized quadratic contraction. -/
noncomputable def observableNumerator
    (observable : HermitianObservable N D)
    (state : TensorState N D) : ℂ :=
  ∑ left : PhysicalConfiguration N D,
    ∑ right : PhysicalConfiguration N D,
      star (state left) *
        observable.matrix left right *
        state right

/-- Normalized expectation; semantic use additionally certifies nonzero weight. -/
noncomputable def normalizedExpectation
    (observable : HermitianObservable N D)
    (state : TensorState N D) : ℂ :=
  observableNumerator observable state / stateWeight state

/-- A nonzero-state witness for normalized observable use. -/
structure NormalizedStateCertificate
    (state : TensorState N D) where
  nonzeroWeight : stateWeight state ≠ 0

/-- Gauge-equivalent MPS coordinates give the same normalized expectation. -/
theorem normalizedExpectation_gauge_invariant
    (observable : HermitianObservable N D)
    {source target : OpenMPS N D}
    (gauge : GaugeTransformation source target) :
    normalizedExpectation observable target.contract =
      normalizedExpectation observable source.contract := by
  rw [gauge.contractPreserved]

end Mathematics.TensorNetwork
