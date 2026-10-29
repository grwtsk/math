import SourceCompleteDivisorTailReturn

/-!
The old diagonal cancels a second time against the independent finite ledger.
Only the COMPLETE signed short sampling correction is bounded afterward.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/

set_option autoImplicit false
noncomputable section
namespace RH16CompleteDivisorSharpTailReturn

open RH16CompleteDivisorCancellation RH16CompleteDivisorTailReturn
open RH16CompleteXiComplement RH16CompleteXiTail RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourceShortSamplingInventory SourceSamplingPointwise SourcePairing
open SourceFirstPrimeAbel SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateBetaSourceRecombination EstimateVaughanSource Realization
open EstimateVaughanTranslationGate EstimateMertensAbel

def shortLogSamplingError (A : ℝ) : ℝ :=
  shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)

def shortPlainSamplingError (A : ℝ) : ℝ :=
  shortPlainSource A - shortPlainMainTerm A (sourcePlainSamplingMainTerm A)

/-- The signs of the two actual finite errors are kept together. -/
def signedShortSamplingCorrection (A : ℝ) : ℝ :=
  shortLogSamplingError A - shortPlainSamplingError A

def shortSamplingBudget : ℝ :=
  2 * samplingInventoryError + 4 * (Real.log 4 + 4) * samplingInventoryError

def sharpCompleteBlockTailBudget (DX G H : ℝ) : ℝ :=
  DX + shortSamplingBudget + 2 + G + H

/-- The independent ledger contains exactly the same old diagonal, with opposite later sign. -/
theorem finite_ledger_eq_diagonal_add_signed_sampling (A : ℝ) :
    finiteLedgerCorrection A = oldDiagonalError A + signedShortSamplingCorrection A := by
  have hl := actual_shortLog_coefficient_aggregation A
  have hp := actual_shortPlain_coefficient_aggregation A
  unfold finiteLedgerCorrection independentMainTerm coefficientMainTerm oldDiagonalError
    signedShortSamplingCorrection shortLogSamplingError shortPlainSamplingError betaMainLedger
  linarith only [hl, hp]

/-- The full physical diagonal cancels jointly; no CD or CF budget is needed. -/
theorem residual_eq_complete_block_add_signed_sampling (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = completeSignedSamplingBlock A + signedShortSamplingCorrection A := by
  rw [residual_eq_complete_block_corrections A hA,
    finite_ledger_eq_diagonal_add_signed_sampling]
  ring

theorem shortSamplingBudget_nonneg : 0 ≤ shortSamplingBudget := by
  have hE := samplingInventoryError_nonneg
  have hlog : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  unfold shortSamplingBudget
  positivity

/-- The actual signed correction is bounded only after the exact diagonal cancellation. -/
theorem signed_short_sampling_correction_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |signedShortSamplingCorrection A| ≤ shortSamplingBudget := by
  have hl := actual_shortLog_uniform_error A hA
  have hp := actual_shortPlain_uniform_error A hA
  unfold signedShortSamplingCorrection shortLogSamplingError shortPlainSamplingError
    shortSamplingBudget
  exact (abs_sub _ _).trans (add_le_add hl hp)

theorem residual_upper_of_complete_block (A DX : ℝ) (hA : 1 ≤ A)
    (hb : completeSignedSamplingBlock A ≤ DX) :
    mertensResidual A ≤ DX + shortSamplingBudget := by
  rw [residual_eq_complete_block_add_signed_sampling A hA]
  have hs := (abs_le.mp (signed_short_sampling_correction_abs_le A hA)).2
  linarith only [hb, hs]

/-- The complete signed block has a physical-tail return without diagonal or strip loss. -/
theorem complete_tail_lower_of_complete_block (A DX H G : ℝ) (hA : 40 ≤ A)
    (hb : completeSignedSamplingBlock A ≤ DX) (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -sharpCompleteBlockTailBudget DX G H ≤ completeXiTail A :=
  residual_upper_implies_complete_tail_lower A (DX + shortSamplingBudget) H G hA
    (residual_upper_of_complete_block A DX (by linarith) hb) hH hG

/-- A fixed tail witness is supplied conditionally at the actual calibrated radius. -/
theorem complete_tail_lower_at_Rstar (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∀ A : ℝ, calibratedRadius R ≤ A →
      -sharpCompleteBlockTailBudget DX G H ≤ completeXiTail A := by
  intro A hA
  have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
  exact complete_tail_lower_of_complete_block A DX H G (by linarith)
    (hb A ((le_max_right _ _).trans hA)) (hH A hA) (hG A hA)

/-- The exact original all-real source lower bound preserves its prefix through Rstar. -/
theorem all_real_lower_of_complete_block (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (sharpCompleteBlockTailBudget DX G H) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hid : calibratedRadius (calibratedRadius R) = calibratedRadius R := by
    exact max_eq_right (le_max_left _ _)
  simpa only [hid] using all_real_lower_of_complete_tail
    (sharpCompleteBlockTailBudget DX G H) (calibratedRadius R)
      (complete_tail_lower_at_Rstar DX R H G hb hH hG)

/-- Exact #16 proof term under the explicitly open COMPLETE signed block premise. -/
theorem estimate_of_complete_block (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_complete_block DX R H G hb hH hG⟩

end RH16CompleteDivisorSharpTailReturn
