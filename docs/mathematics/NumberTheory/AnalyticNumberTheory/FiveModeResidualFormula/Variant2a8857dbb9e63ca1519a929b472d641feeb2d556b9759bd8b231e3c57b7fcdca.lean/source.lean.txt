import scratch.common_mean_20261004.FiveModeActualDictionary
import scratch.common_mean_20261004.FiniteCertificate

/-!
Actual source instantiation of the finite scalar source formula. All prime
powers, floors and touching endpoints are retained through the repository's
closed-prime-moment equality. The zero-head and strict-tail inputs remain
independent external premises; this module supplies no finite zero certificate
and no uniform arithmetic witness.

Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- The literal Mertens residual is the original complete prime-power term. -/
theorem actual_residual_eq_prime_power (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      primePowerContribution explicitSecondDerivative A := by
  rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
  exact (EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA).symm

/-- The actual geometric matrix gives the exact source/residual identity. -/
theorem actual_residual_matrix_formula (A : ℝ) (hA : 1 ≤ A) :
    2 * EstimateMertensResidual.mertensResidual A =
      archimedeanValue explicitSecondDerivative A -
        dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) := by
  rw [actual_source_matrix_dictionary A hA, actual_residual_eq_prime_power A hA,
    sourceQuadraticValue]
  ring

/-- Actual-source finite conditional transport, before complete zero-head/tail
admission. The continuum hypotheses quantify every real scale in [1,160]. -/
theorem actual_finite_bounds_of_premises
    (verifiedHead strictTail : ℝ → ℝ) (a0 : ℝ)
    (hdecomposition : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) =
        verifiedHead A + strictTail A)
    (hhead : ∀ A : ℝ, 1 ≤ A → A ≤ 160 → 0 ≤ verifiedHead A)
    (htail : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      |strictTail A| ≤ CommonMean20261004.FiniteCertificate.tailBound)
    (hgamma : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 < -4) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        a0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply CommonMean20261004.FiniteCertificate.finite_bounds
    (verifiedHead := verifiedHead) (strictTail := strictTail)
  exact ⟨hdecomposition, hhead, htail,
    fun A hA _ => actual_residual_matrix_formula A hA, hgamma, ha0⟩

end CommonMeanScratch
