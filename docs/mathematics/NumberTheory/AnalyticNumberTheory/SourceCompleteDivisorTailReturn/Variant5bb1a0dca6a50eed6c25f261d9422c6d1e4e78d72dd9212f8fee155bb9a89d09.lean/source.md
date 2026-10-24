# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceCompleteDivisorTailReturn.Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57092382e3bbaf0f1e534a6daaa1298e350da57d` · SHA-256 `c408f3ecde3bc3a76aaff9151b0144d4276dcd0d8858d8fcf2dd548662aed001`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.CompleteXiHead.Variant9a92a03014cf78d67734b6033647cff166f78945c374d8dc81b8620d3c84a532","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a92a03014cf78d67734b6033647cff166f78945c374d8dc81b8620d3c84a532","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.CompleteXiHead.Variant9a92a03014cf78d67734b6033647cff166f78945c374d8dc81b8620d3c84a532","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"9a92a03014cf78d67734b6033647cff166f78945c374d8dc81b8620d3c84a532","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/late-owner-delta/source-captures/SourceCompleteDivisorTailReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCompleteXiTailConsumer
import SourceCompleteDivisorCancellation

/-!
Return a complete signed divisor-block bound through the original physical Xi tail.
The original F7 closure, closed finite head, PLUS gamma boundary, independent
main and original prefix are retained. No restricted-work or spatial-strip import
is needed. No uniform arithmetic block witness is supplied.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.CompleteXiHead.Variant9a92a03014cf78d67734b6033647cff166f78945c374d8dc81b8620d3c84a532

set_option autoImplicit false
noncomputable section
namespace RH16CompleteDivisorTailReturn

open MeasureTheory Set
open RH16CompleteXiComplement RH16CompleteXiTail
open RH16ActualXiPositiveBlock RH16ShiftedXiAdapter
open RH16CompleteDivisorCancellation
open FormalResearch.RiemannHypothesis
open SourceMangoldtAbel SourceFirstPrimeAbel SourceFirstAtomSignedWork
open SourceDivisorCounterterms SourceSamplingLedger SourcePairing
open SourceShortSamplingInventory SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateBetaSourceRecombination Realization
open EstimateVaughanSource EstimateVaughanTranslationGate EstimateMertensAbel
open RH16ResumeApplication RH16ResumeBudget

/-- The complete finite physical head, including every prime power through seven. -/
def completeXiHead (A : ℝ) : ℝ := ∫ y in 2..7, actualTransformedXiBlockDensity A y

theorem remaining_work_eq_gamma_head_tail (A : ℝ) (hA : 40 ≤ A) :
    remainingAtomWork A =
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        completeXiHead A + completeXiTail A := by
  have hX : (7 : ℝ) ≤ Real.exp (2 * A) := by
    have hL : Real.log (7 : ℝ) ≤ 2 * A := by
      linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr hL
  have hw := actual_transformed_whole_intervalIntegrable A hA
  have h2X : (2 : ℝ) ≤ Real.exp (2 * A) := by linarith
  have h27 : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 2 7 := by
    apply hw.mono_set
    rw [uIcc_of_le (by norm_num : (2 : ℝ) ≤ 7), uIcc_of_le h2X]
    exact Icc_subset_Icc le_rfl hX
  have h7X : IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7
      (Real.exp (2 * A)) := by
    apply hw.mono_set
    rw [uIcc_of_le hX, uIcc_of_le h2X]
    exact Icc_subset_Icc (by norm_num) le_rfl
  have he := remainingAtomWork_eq_explicit_shiftedXi A (by linarith : 1 ≤ A)
  change remainingAtomWork A =
    Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
      (∫ y in 2..Real.exp (2 * A), actualTransformedXiBlockDensity A y) at he
  rw [← intervalIntegral.integral_add_adjacent_intervals h27 h7X] at he
  unfold completeXiHead completeXiTail
  linarith only [he]

/-- Exact residual-to-tail identity in the original source closure. -/
theorem complete_tail_eq_residual_corrections (A : ℝ) (hA : 40 ≤ A) :
    completeXiTail A = criticalContinuousMoment A - mertensResidual A -
      firstAtomHeadWork A -
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) - completeXiHead A := by
  have hA1 : 1 ≤ A := by linarith
  have hm := mertensResidual_eq_continuous_sub_Mangoldt_work A hA1
  have hh := criticalMangoldtWork_eq_head_add_remaining A hA1
  have hx := remaining_work_eq_gamma_head_tail A hA
  linarith only [hm, hh, hx]

/-- Only the whole-head upper cost and PLUS gamma cost are charged in the reverse direction. -/
theorem residual_upper_implies_complete_tail_lower (A B H G : ℝ) (hA : 40 ≤ A)
    (hr : mertensResidual A ≤ B) (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -(B + 2 + G + H) ≤ completeXiTail A := by
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A (by linarith : 1 ≤ A))).1
  have hh := firstAtomHeadWork_nonpositive A hA
  rw [complete_tail_eq_residual_corrections A hA]
  linarith only [hc, hh, hr, hH, hG]

/-- The finite correction remains independently defined in the original source. -/
def finiteLedgerCorrection (A : ℝ) : ℝ := betaMainLedger A + independentMainTerm A

/-- A fixed combined budget is chosen before the physical scale. -/
def completeBlockTailBudget (DX CD CF G H : ℝ) : ℝ := DX + CD + CF + 2 + G + H

/-- Exact divisor cancellation followed by the original residual/ledger identity. -/
theorem residual_eq_complete_block_corrections (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = completeSignedSamplingBlock A - oldDiagonalError A +
      finiteLedgerCorrection A := by
  have hr := actual_residual_decomposition A hA
  rw [← jointSignedRemainder_eq_covariance A hA,
    joint_remainder_eq_complete_signed_block A hA] at hr
  exact hr

theorem complete_block_upper_implies_residual_upper (A DX CD CF : ℝ) (hA : 1 ≤ A)
    (hb : completeSignedSamplingBlock A ≤ DX) (hd : |oldDiagonalError A| ≤ CD)
    (hf : finiteLedgerCorrection A ≤ CF) :
    mertensResidual A ≤ DX + CD + CF := by
  rw [residual_eq_complete_block_corrections A hA]
  have hl := (abs_le.mp hd).1
  linarith only [hb, hl, hf]

/-- No spatial-strip charge is introduced by the complete divisor cancellation. -/
theorem complete_block_upper_implies_tail_lower (A DX CD CF H G : ℝ) (hA : 40 ≤ A)
    (hb : completeSignedSamplingBlock A ≤ DX) (hd : |oldDiagonalError A| ≤ CD)
    (hf : finiteLedgerCorrection A ≤ CF) (hH : completeXiHead A ≤ H)
    (hG : Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    -completeBlockTailBudget DX CD CF G H ≤ completeXiTail A := by
  exact residual_upper_implies_complete_tail_lower A (DX + CD + CF) H G hA
    (complete_block_upper_implies_residual_upper A DX CD CF (by linarith) hb hd hf) hH hG

/-- Choose both actual finite correction constants once, before quantifying A. -/
theorem fixed_corrections_and_tail_of_complete_block (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∃ CD : ℝ, 0 ≤ CD ∧ ∃ CF : ℝ, 0 ≤ CF ∧
      ∀ A : ℝ, calibratedRadius R ≤ A →
        -completeBlockTailBudget DX CD CF G H ≤ completeXiTail A := by
  obtain ⟨CD, hCD, hd⟩ := oldDiagonalError_uniform_abs_bound
  obtain ⟨CF, hCF, hf⟩ := actual_ledger_uniform_error
  refine ⟨CD, hCD, CF, hCF, ?_⟩
  intro A hA
  have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
  apply complete_block_upper_implies_tail_lower A DX CD CF H G (by linarith)
  · exact hb A ((le_max_right _ _).trans hA)
  · exact hd A (by linarith)
  · exact (abs_le.mp (hf A (by linarith))).2
  · exact hH A hA
  · exact hG A hA

/-- The original finite prefix is evaluated at exactly max(91,R). -/
theorem all_real_lower_of_complete_block_inputs (DX CD CF R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hd : ∀ A : ℝ, calibratedRadius R ≤ A → |oldDiagonalError A| ≤ CD)
    (hf : ∀ A : ℝ, calibratedRadius R ≤ A → finiteLedgerCorrection A ≤ CF)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 *
          (tailAtomBudget (completeBlockTailBudget DX CD CF G H) - 3 / 8 +
            criticalBaselineCorrection (calibratedRadius R))) ≤
              sourceQuadraticValue explicitSecondDerivative A := by
  have hid : calibratedRadius (calibratedRadius R) = calibratedRadius R := by
    exact max_eq_right (le_max_left _ _)
  have ht : ∀ A : ℝ, calibratedRadius R ≤ A →
      -completeBlockTailBudget DX CD CF G H ≤ completeXiTail A := by
    intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact complete_block_upper_implies_tail_lower A DX CD CF H G (by linarith)
      (hb A ((le_max_right _ _).trans hA)) (hd A hA) (hf A hA) (hH A hA) (hG A hA)
  simpa only [hid] using all_real_lower_of_complete_tail
    (completeBlockTailBudget DX CD CF G H) (calibratedRadius R) ht

/-- Exact #16 conditional consumer; the complete signed DX premise stays explicit. -/
theorem estimate_of_complete_block (DX R H G : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX)
    (hH : ∀ A : ℝ, calibratedRadius R ≤ A → completeXiHead A ≤ H)
    (hG : ∀ A : ℝ, calibratedRadius R ≤ A →
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ G) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨CD, _, hd⟩ := oldDiagonalError_uniform_abs_bound
  obtain ⟨CF, _, hf⟩ := actual_ledger_uniform_error
  refine ⟨_, all_real_lower_of_complete_block_inputs DX CD CF R H G hb ?_ ?_ hH hG⟩
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact hd A (by linarith)
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact (abs_le.mp (hf A (by linarith))).2

end RH16CompleteDivisorTailReturn
```
