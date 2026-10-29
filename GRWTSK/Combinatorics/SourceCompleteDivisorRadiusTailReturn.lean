import SourceCompleteDivisorSharpTailReturn

/-!
Keep the actual logarithmic 1/A rate and the smaller plain sampling coefficient.
Direct residual return avoids paying the already canceled diagonal and finite head.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16CompleteDivisorRadiusTailReturn

open RH16CompleteDivisorCancellation RH16CompleteDivisorTailReturn
open RH16CompleteDivisorSharpTailReturn RH16CompleteXiComplement RH16CompleteXiTail
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourceShortSamplingInventory SourceShortSamplingPointwise
open SourceSamplingPointwise SourcePairing SourceFirstPrimeAbel SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateVaughanSource EstimateVaughanTranslationGate
open EstimateMertensAbel Realization

def actualBeta : ℝ := 162826 / 7623

/-- Both errors use their own actual coefficients, at the radius before quantifying A. -/
def radiusSamplingBudget (R : ℝ) : ℝ :=
  2 * samplingInventoryError / R + 64 * (Real.log 4 + 4) * actualBeta

def radiusCompleteBlockTailBudget (DX R G H : ℝ) : ℝ :=
  DX + radiusSamplingBudget R + 2 + G + H

theorem actual_shortPlain_tight_uniform_error (A : ℝ) (hA : 1 ≤ A) :
    |shortPlainSamplingError A| ≤ 64 * (Real.log 4 + 4) * actualBeta := by
  have hE : 0 ≤ 16 * actualBeta := by norm_num [actualBeta]
  have he := shortPlain_error_uniform_le_of_sampling_error hA hE
    (sourcePlainSamplingMainTerm A) (fun d hd m hm => by
      have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
      have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
      have hp1 : (1 : ℝ) ≤ (d * m : ℕ) := by
        exact_mod_cast Nat.mul_le_mul hd1 hm1
      exact sourcePlainKernel_sub_mainTerm_abs_le hA hp1)
  calc
    _ ≤ 4 * (Real.log 4 + 4) * (16 * actualBeta) := he
    _ = _ := by ring

theorem signed_sampling_correction_abs_le_at_radius (A R : ℝ) (hR : 1 ≤ R)
    (hA : R ≤ A) : |signedShortSamplingCorrection A| ≤ radiusSamplingBudget R := by
  have hA1 : 1 ≤ A := hR.trans hA
  have hl := actual_shortLog_error A hA1
  have hp := actual_shortPlain_tight_uniform_error A hA1
  have hd := div_le_div_of_nonneg_left
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) samplingInventoryError_nonneg)
    (by linarith : 0 < R) hA
  unfold signedShortSamplingCorrection shortLogSamplingError radiusSamplingBudget
  exact (abs_sub _ _).trans (add_le_add (hl.trans hd) hp)

theorem residual_upper_of_complete_block_at_radius (A DX R : ℝ) (hR : 1 ≤ R)
    (hA : R ≤ A) (hb : completeSignedSamplingBlock A ≤ DX) :
    mertensResidual A ≤ DX + radiusSamplingBudget R := by
  rw [residual_eq_complete_block_add_signed_sampling A (hR.trans hA)]
  have he := (abs_le.mp (signed_sampling_correction_abs_le_at_radius A R hR hA)).2
  linarith only [hb, he]

theorem complete_tail_lower_of_complete_block_at_radius (A DX R H G : ℝ)
    (hR : 40 ≤ R) (hA : R ≤ A) (hb : completeSignedSamplingBlock A ≤ DX)
    (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -radiusCompleteBlockTailBudget DX R G H ≤ completeXiTail A :=
  residual_upper_implies_complete_tail_lower A (DX + radiusSamplingBudget R) H G
    (hR.trans hA) (residual_upper_of_complete_block_at_radius A DX R (by linarith) hA hb)
    hH hG

/-- Direct #16 source return needs only the COMPLETE signed block arithmetic premise. -/
theorem all_real_direct_lower_of_complete_block (DX R : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 * (DX + radiusSamplingBudget (calibratedRadius R))) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  apply all_real_source_lower_of_residual_tail
    (DX + radiusSamplingBudget (calibratedRadius R)) (calibratedRadius R) (by linarith)
  intro A hA
  exact residual_upper_of_complete_block_at_radius A DX (calibratedRadius R)
    (by linarith) hA (hb A ((le_max_right _ _).trans hA))

theorem estimate_of_complete_signed_block (DX R : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_direct_lower_of_complete_block DX R hb⟩

end RH16CompleteDivisorRadiusTailReturn
