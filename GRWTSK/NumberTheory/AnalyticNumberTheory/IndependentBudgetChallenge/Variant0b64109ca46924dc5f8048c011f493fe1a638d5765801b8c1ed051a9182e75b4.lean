import SourceMangoldtDirectBudget

/-! Independent endpoint/sign and source-consumer challenge. -/
set_option autoImplicit false
namespace RH16IndependentBudgetReview
open RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
open FormalResearch.RiemannHypothesis.SourcePairing
open OmegaResearch.CriticalRelativePairing
noncomputable section

theorem baseline_at_six : criticalBaselineCorrection 6 = -(6 / 91 : ℝ) := by
  unfold criticalBaselineCorrection
  norm_num

theorem residual_tail_at_six (K A : ℝ) (hA : 6 ≤ A)
    (hQ : criticalRelativePairing A ≤ K) :
    mertensResidual A ≤ K - 6 / 91 := by
  have h := residual_upper_of_criticalRelative_tail K 6 A (by norm_num) hA hQ
  rw [baseline_at_six] at h
  linarith

theorem all_real_at_six (K : ℝ)
    (hQ : ∀ A : ℝ, 6 ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 6) (archimedeanMultiplier 0 - 2 * (K - 6 / 91)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  have h := all_real_source_lower_of_criticalRelative_tail K 6 (by norm_num) hQ
  rw [baseline_at_six] at h
  simpa only [sub_eq_add_neg] using h

theorem Mangoldt_residual_at_six (C A : ℝ) (hA : 6 ≤ A)
    (hwork : -C ≤ FormalResearch.RiemannHypothesis.SourceMangoldtAbel.criticalMangoldtWork A) :
    mertensResidual A ≤ C - 1 - 6 / 91 := by
  have h := residual_upper_of_original_Mangoldt_work_lower C 6 A (by norm_num) hA hwork
  rw [baseline_at_six] at h
  linarith

end
end RH16IndependentBudgetReview
