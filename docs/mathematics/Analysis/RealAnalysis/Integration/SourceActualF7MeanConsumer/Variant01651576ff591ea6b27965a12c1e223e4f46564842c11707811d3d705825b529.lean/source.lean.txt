-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PhysicalCurvatureWeight.Variantc358508a1fbc3ebb7a1f790e0c74d85761b0b7f2e67feb39880f31898ffe2778","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c358508a1fbc3ebb7a1f790e0c74d85761b0b7f2e67feb39880f31898ffe2778","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PhysicalCurvatureWeight.Variantc358508a1fbc3ebb7a1f790e0c74d85761b0b7f2e67feb39880f31898ffe2778","mathematical_subject":"Analysis.Integration","original_sha256":"c358508a1fbc3ebb7a1f790e0c74d85761b0b7f2e67feb39880f31898ffe2778","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualF7MeanConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualF7TailAdapter
import SourceF7TailCalibration

/-!
An actual arithmetic mean witness is an explicit hypothesis, not a proof.
The physical derivative bounds and zero-trace IBP are checked source inputs.
The final source return uses the calibrated radius itself and its literal prefix.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: Codex/ChatGPT assistance.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PhysicalCurvatureWeight.Variantc358508a1fbc3ebb7a1f790e0c74d85761b0b7f2e67feb39880f31898ffe2778

set_option autoImplicit false
noncomputable section
namespace RH16ActualF7Mean

open MeasureTheory Set
open RH16ActualF7 RH16F7TailCalibration RH16CompleteXiComplement RH16CompleteXiTail
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceLeadingTailBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization

def physicalCurvatureWeight (A t : ℝ) : ℝ :=
  deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
    deriv (sourceCorrelation explicitSecondDerivative A) t / 2

def physicalWeightBudget (A : ℝ) : ℝ :=
  physicalCurvatureCoefficient / A ^ 2 + 5 / (2 * A)

/-- The mean premise is independent arithmetic data on every real terminal time. -/
def actualF7MeanBound (M1 R : ℝ) : Prop :=
  ∀ T : ℝ, 2 * R ≤ T → (∫ t in Real.log 7..T, |actualF7 t|) ≤ M1 * T

theorem physicalWeightBudget_nonneg (A : ℝ) (hA : 0 < A) :
    0 ≤ physicalWeightBudget A := by
  unfold physicalWeightBudget physicalCurvatureCoefficient
  positivity

/-- Both derivatives are in physical t coordinates, with their actual energy coefficient. -/
theorem physicalCurvatureWeight_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |physicalCurvatureWeight A t| ≤ physicalWeightBudget A := by
  have hp : 0 < A := by linarith
  have hd := actual_physical_derivative_bounds A t hA
  have hq : |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
      5 / (2 * A) := by
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    calc
      _ ≤ (5 / A) / 2 := div_le_div_of_nonneg_right hd.1 (by norm_num)
      _ = _ := by field_simp [hp.ne']
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub _ _
    _ ≤ 162826 / (7623 * A ^ 2) + 5 / (2 * A) := add_le_add hd.2 hq
    _ = _ := by simp only [physicalWeightBudget, physicalCurvatureCoefficient, div_div]

theorem actualF7_abs_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (fun t => |actualF7 t|) volume (Real.log 7) (2 * A) := by
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  exact (actualF7_absolutelyContinuous (2 * A) hT).continuousOn.intervalIntegrable.abs

/-- All actual terms are integrable before applying the integral inequality. -/
theorem complete_tail_abs_le_weighted_F7_mass (A : ℝ) (hA : 40 ≤ A) :
    |completeXiTail A| ≤ physicalWeightBudget A *
      (∫ t in Real.log 7..2 * A, |actualF7 t|) := by
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hi := actualF7_curvature_intervalIntegrable A hA
  have hg := (actualF7_abs_intervalIntegrable A hA).const_mul (physicalWeightBudget A)
  have hm := intervalIntegral.integral_mono_on hT hi.abs hg
    (fun t _ => by
      rw [abs_mul]
      have hw := physicalCurvatureWeight_abs_le A t (by linarith : (1 : ℝ) ≤ A)
      calc
        _ ≤ |actualF7 t| * physicalWeightBudget A :=
          mul_le_mul_of_nonneg_left hw (abs_nonneg _)
        _ = _ := mul_comm _ _)
  rw [intervalIntegral.integral_const_mul] at hm
  rw [completeXiTail_eq_neg_F7_integral A hA, abs_neg]
  exact (intervalIntegral.abs_integral_le_integral_abs hT).trans hm

/-- A scale-sensitive bound, with the actual linear mean as its sole arithmetic input. -/
theorem complete_tail_abs_le_of_mean (M1 R A : ℝ) (hR : 40 ≤ R) (hA : R ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    |completeXiTail A| ≤ (5 + 2 * physicalCurvatureCoefficient / A) * M1 := by
  have hA40 : (40 : ℝ) ≤ A := hR.trans hA
  have hp : 0 < A := by linarith
  have hm := hmean (2 * A) (by linarith)
  calc
    _ ≤ physicalWeightBudget A * (∫ t in Real.log 7..2 * A, |actualF7 t|) :=
      complete_tail_abs_le_weighted_F7_mass A hA40
    _ ≤ physicalWeightBudget A * (M1 * (2 * A)) :=
      mul_le_mul_of_nonneg_left hm (physicalWeightBudget_nonneg A hp)
    _ = _ := by
      unfold physicalWeightBudget
      field_simp [hp.ne']
      ring

theorem complete_tail_lower_of_mean (M1 R A : ℝ) (hR : 40 ≤ R) (hA : R ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    -((5 + 2 * physicalCurvatureCoefficient / A) * M1) ≤ completeXiTail A :=
  (neg_le_neg (complete_tail_abs_le_of_mean M1 R A hR hA hmean)).trans (neg_abs_le _)

/-- The user-requested fixed Kstar is computed at Rstar, not at the supplied R. -/
theorem complete_tail_lower_of_mean_at_Rstar (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, calibratedRadius R ≤ A → -meanTailBudget M1 R ≤ completeXiTail A :=
  complete_tail_lower_at_calibrated_radius M1 R hM1
    (fun A hA => complete_tail_lower_of_mean M1 R A hR hA hmean)

theorem remaining_lower_of_actual_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    -meanAtomBudget M1 R ≤ remainingAtomWork A :=
  remaining_lower_of_dynamic_mean M1 R A hM1 hA
    (fun X hX => complete_tail_lower_of_mean M1 R X hR hX hmean)

theorem atom_witness_of_actual_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∃ D : ℝ, 0 ≤ D ∧ ∃ Rstar : ℝ, 40 ≤ Rstar ∧
      ∀ A : ℝ, Rstar ≤ A → -D ≤ remainingAtomWork A :=
  atom_witness_of_dynamic_mean M1 R hM1
    (fun A hA => complete_tail_lower_of_mean M1 R A hR hA hmean)

/-- Exact original source theorem, conditional on the actual mean witness. -/
theorem all_real_lower_of_actual_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower (calibratedRadius R))
        (archimedeanMultiplier 0 - 2 * meanResidualBudget M1 R) ≤
          sourceQuadraticValue explicitSecondDerivative A :=
  all_real_lower_of_dynamic_mean M1 R hM1
    (fun A hA => complete_tail_lower_of_mean M1 R A hR hA hmean)

theorem estimate_of_actual_mean (M1 R : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hmean : actualF7MeanBound M1 R) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, all_real_lower_of_actual_mean M1 R hM1 hR hmean⟩

theorem residual_upper_of_actual_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : calibratedRadius R ≤ A) (hmean : actualF7MeanBound M1 R) :
    mertensResidual A ≤ meanResidualBudget M1 R :=
  residual_upper_of_dynamic_mean M1 R A hM1 hA
    (fun X hX => complete_tail_lower_of_mean M1 R X hR hX hmean)

/-- The complete sharp leading constant is used only on its own valid domain. -/
theorem actual_leading_upper_of_actual_mean (M1 R A : ℝ) (hM1 : 0 ≤ M1)
    (hR : 40 ≤ R) (hA : max 25600 (calibratedRadius R) ≤ A)
    (hmean : actualF7MeanBound M1 R) :
    actualLeadingRenormalizedTail A ≤ meanResidualBudget M1 R -
      (riemannZeta (1 / 2)).re + 3103 / 50 :=
  actual_leading_upper_of_dynamic_mean M1 R A hM1 hA
    (fun X hX => complete_tail_lower_of_mean M1 R X hR hX hmean)

end RH16ActualF7Mean
