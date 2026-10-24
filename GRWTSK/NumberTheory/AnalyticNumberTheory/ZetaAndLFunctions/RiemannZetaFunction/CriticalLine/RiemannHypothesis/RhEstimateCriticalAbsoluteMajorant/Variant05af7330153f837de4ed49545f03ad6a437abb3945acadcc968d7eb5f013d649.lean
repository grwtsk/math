import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCriticalMajorantGrowth

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateCriticalMajorantGrowth EstimateCriticalPrimeErrorMajorant
open FormalResearch.RiemannHypothesis.SourcePairing

example :
    ∃ c : ℝ, 0 < c ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        c * A ≤ ∫ t in lowerEndpoint..2 * A,
          powerErrorMajorant A (1/2) (fun _ ↦ 1) t :=
  critical_majorant_linear_growth

example (A : ℝ) (hA : 32000 ≤ A) :
    (1 / 32000 : ℝ) * A ≤
      ∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1/2) (fun _ ↦ 1) t :=
  critical_majorant_ge_linear A hA
