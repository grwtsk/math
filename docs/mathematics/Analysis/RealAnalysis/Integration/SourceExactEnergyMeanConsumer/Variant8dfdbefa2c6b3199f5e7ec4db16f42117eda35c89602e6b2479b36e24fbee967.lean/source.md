# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceExactEnergyMeanConsumer.Variant8dfdbefa2c6b3199f5e7ec4db16f42117eda35c89602e6b2479b36e24fbee967

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1bf56a8b4acc129ad7c93b6e90f1e921394b2d9` · SHA-256 `42191d4a6580963dd65db4e9b731a0a5493e76ed99cf235f6cea82d4b625bc17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ExactWeightBudget.Variant94d11b03fc26766b8c9bb97ac7e698434668b057fe46e6fbc3b683e7a2f4d260","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94d11b03fc26766b8c9bb97ac7e698434668b057fe46e6fbc3b683e7a2f4d260","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ExactWeightBudget.Variant94d11b03fc26766b8c9bb97ac7e698434668b057fe46e6fbc3b683e7a2f4d260","mathematical_subject":"Analysis.Integration","original_sha256":"94d11b03fc26766b8c9bb97ac7e698434668b057fe46e6fbc3b683e7a2f4d260","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-review/SourceExactEnergyMeanConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactTailEnergy
import SourceActualF7MeanConsumer

/-!
The exact source-energy radius replaces the earlier all-scale derivative budget.
The actual F7 arithmetic mean is still supplied, not assumed as a theorem.
Every consequence invokes the existing source consumer at Rstar itself.
Research direction and conceptual origin: grwtsk contributors.
Source calculation, native construction and consumer composition: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ExactWeightBudget.Variant94d11b03fc26766b8c9bb97ac7e698434668b057fe46e6fbc3b683e7a2f4d260

set_option autoImplicit false
noncomputable section
namespace RH16ExactEnergyMean

open MeasureTheory Set
open RH16ExactTailEnergy RH16ActualF7 RH16ActualF7Mean RH16F7TailCalibration
open RH16CompleteXiTail RH16CompleteXiComplement RH16ActualXiFixedFront
open RH16ActualXiPositiveBlock
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

def exactWeightBudget (Q A : ℝ) : ℝ :=
  tailEnergyCoefficient Q / A ^ 2 + Real.sqrt (tailEnergyCoefficient Q) / (2 * A)

def exactMeanTailBudget (M1 R : ℝ) : ℝ :=
  (Real.sqrt (tailEnergyCoefficient (calibratedRadius R)) +
    2 * tailEnergyCoefficient (calibratedRadius R) / calibratedRadius R) * M1

def exactMeanAtomBudget (M1 R : ℝ) : ℝ := tailAtomBudget (exactMeanTailBudget M1 R)

def exactMeanResidualBudget (M1 R : ℝ) : ℝ :=
  exactMeanAtomBudget M1 R - 3 / 8 + criticalBaselineCorrection (calibratedRadius R)

theorem exactWeightBudget_nonneg (Q A : ℝ) (hA : 0 < A) :
    0 ≤ exactWeightBudget Q A := by
  have he := (tailEnergyCoefficient_pos Q).le
  unfold exactWeightBudget
  positivity

theorem exactMeanTailBudget_nonneg (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    0 ≤ exactMeanTailBudget M1 R := by
  have he := (tailEnergyCoefficient_pos (calibratedRadius R)).le
  unfold exactMeanTailBudget
  have hR := calibratedRadius_pos R
  positivity

/-- Bounds apply on A>=Q, retaining the actual physical derivative coordinates. -/
theorem physicalCurvatureWeight_abs_le_exact (Q A t : ℝ) (hQ : 1 ≤ Q)
    (hQA : Q ≤ A) :
    |physicalCurvatureWeight A t| ≤ exactWeightBudget Q A := by
  have hp : 0 < A := by linarith
  have hd := actual_correlation_derivative_bounds hQ hQA t
  have hh : |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
      Real.sqrt (tailEnergyCoefficient Q) / (2 * A) := by
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    calc
      _ ≤ (Real.sqrt (tailEnergyCoefficient Q) / A) / 2 :=
        div_le_div_of_nonneg_right hd.1 (by norm_num)
      _ = _ := by field_simp [hp.ne']
  exact (abs_sub _ _).trans (add_le_add hd.2 hh)

/-- Actual zero-trace IBP with the sharper source energy, not a changed observable. -/
theorem complete_tail_abs_le_exact_weighted_mass (Q A : ℝ) (hQ : 1 ≤ Q)
    (hQA : Q ≤ A) (hA : 40 ≤ A) :
    |completeXiTail A| ≤ exactWeightBudget Q A *
      (∫ t in Real.log 7..2 * A, |actualF7 t|) := by
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hi := actualF7_curvature_intervalIntegrable A hA
  have hg := (actualF7_abs_intervalIntegrable A hA).const_mul (exactWeightBudget Q A)
  have hm := intervalIntegral.integral_mono_on hT hi.abs hg (fun t _ => by
    rw [abs_mul]
    have hw := physicalCurvatureWeight_abs_le_exact Q A t hQ hQA
    calc
      _ ≤ |actualF7 t| * exactWeightBudget Q A :=
        mul_le_mul_of_nonneg_left hw (abs_nonneg _)
      _ = _ := mul_comm _ _)
  rw [intervalIntegral.integral_const_mul] at hm
  rw [completeXiTail_eq_neg_F7_integral A hA, abs_neg]
  exact (intervalIntegral.abs_integral_le_integral_abs hT).trans hm

/-- The supplied mean begins at R; the sharper estimate begins at max(91,R). -/
theorem complete_tail_abs_le_exact_mean (M1 R A : ℝ) (hR : 40 ≤ R)
    (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    |completeXiTail A| ≤
      (Real.sqrt (tailEnergyCoefficient (calibratedRadius R)) +
        2 * tailEnergyCoefficient (calibratedRadius R) / A) * M1 := by
  have hAR : R ≤ A := (le_max_right _ _).trans hA
  have hA40 := hR.trans hAR
  have hp : 0 < A := by linarith
  have hQ : (1 : ℝ) ≤ calibratedRadius R := by
    have h : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
    linarith
  have hm := hmean (2 * A) (by linarith)
  calc
    _ ≤ exactWeightBudget (calibratedRadius R) A *
        (∫ t in Real.log 7..2 * A, |actualF7 t|) :=
      complete_tail_abs_le_exact_weighted_mass _ _ hQ hA hA40
    _ ≤ exactWeightBudget (calibratedRadius R) A * (M1 * (2 * A)) :=
      mul_le_mul_of_nonneg_left hm (exactWeightBudget_nonneg _ _ hp)
    _ = _ := by
      unfold exactWeightBudget
      field_simp [hp.ne']
      ring

theorem complete_tail_lower_of_exact_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, calibratedRadius R ≤ A → -exactMeanTailBudget M1 R ≤ completeXiTail A := by
  intro A hA
  have hm := complete_tail_abs_le_exact_mean M1 R A hR hA hmean
  have hd := div_le_div_of_nonneg_left
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2)
      (tailEnergyCoefficient_pos (calibratedRadius R)).le) (calibratedRadius_pos R) hA
  have hb : |completeXiTail A| ≤ exactMeanTailBudget M1 R := by
    exact hm.trans (mul_le_mul_of_nonneg_right (by linarith only [hd]) hM1)
  exact (neg_le_neg hb).trans (neg_abs_le _)

theorem exactMeanAtomBudget_eq (M1 R : ℝ) :
    exactMeanAtomBudget M1 R =
      max 0 (exactMeanTailBudget M1 R + fixedFrontBudget - blockMargin) := by
  unfold exactMeanAtomBudget tailAtomBudget complementAtomBudget
  congr 1
  ring

theorem atom_witness_of_exact_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ Q : ℝ, 40 ≤ Q ∧
      ∀ A : ℝ, Q ≤ A → -D ≤ remainingAtomWork A :=
  atom_witness_of_complete_tail _ _ (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean)

/-- Invoke the existing all-real theorem at the calibrated radius, including its prefix. -/
theorem all_real_lower_of_exact_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 * exactMeanResidualBudget M1 R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  have h := all_real_lower_of_complete_tail (exactMeanTailBudget M1 R) (calibratedRadius R)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean)
  simpa only [calibratedRadius_idempotent, exactMeanResidualBudget, exactMeanAtomBudget] using h

theorem estimate_of_exact_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_exact_mean M1 R hM1 hR hmean⟩

theorem residual_upper_of_exact_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    mertensResidual A ≤ exactMeanResidualBudget M1 R := by
  have h := residual_upper_of_complete_tail (exactMeanTailBudget M1 R) (calibratedRadius R) A
    (by simpa only [calibratedRadius_idempotent] using hA)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A hA)
  simpa only [calibratedRadius_idempotent, exactMeanResidualBudget, exactMeanAtomBudget] using h

theorem actual_leading_upper_of_exact_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : max 25600 (calibratedRadius R) ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    actualLeadingRenormalizedTail A ≤ exactMeanResidualBudget M1 R -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  have h := actual_leading_upper_of_complete_tail (exactMeanTailBudget M1 R)
    (calibratedRadius R) A (by simpa only [calibratedRadius_idempotent] using hA)
    (complete_tail_lower_of_exact_mean M1 R hM1 hR hmean A ((le_max_right _ _).trans hA))
  simpa only [calibratedRadius_idempotent, exactMeanResidualBudget, exactMeanAtomBudget] using h

theorem exactMeanTailBudget_forty (M1 : ℝ) :
    exactMeanTailBudget M1 40 =
      (Real.sqrt (2362115626 / 482284503 : ℝ) +
        (4724231252 / 43887889773 : ℝ)) * M1 := by
  norm_num only [exactMeanTailBudget, calibratedRadius_forty,
    tailEnergyCoefficient_ninety_one]

end RH16ExactEnergyMean
```
