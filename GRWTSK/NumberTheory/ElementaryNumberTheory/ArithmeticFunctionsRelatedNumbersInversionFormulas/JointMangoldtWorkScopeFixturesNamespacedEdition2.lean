-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NaturalLowerAtomExcluded.Variant8fcb1db11e0122a8d55ad4d2b6de7b78273a9a96b5b2eaf4c5b4789c4908637f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fcb1db11e0122a8d55ad4d2b6de7b78273a9a96b5b2eaf4c5b4789c4908637f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NaturalLowerAtomExcluded.Variant8fcb1db11e0122a8d55ad4d2b6de7b78273a9a96b5b2eaf4c5b4789c4908637f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8fcb1db11e0122a8d55ad4d2b6de7b78273a9a96b5b2eaf4c5b4789c4908637f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-joint-mangoldt-work-v1/audits-ready-v1/JointMangoldtWorkScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtWork

/-!
# Exact joint work scope controls

UNCOMPILED fixtures. Finite-inventory and scalar controls do not assert a fact
about the actual signed arithmetic budget. Actual-source controls retain the
critical normalization, positive scale, full compensations and quotient endpoint.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NaturalLowerAtomExcluded.Variant8fcb1db11e0122a8d55ad4d2b6de7b78273a9a96b5b2eaf4c5b4789c4908637f

namespace FormalResearch.RiemannHypothesis.JointMangoldtWorkScopeFixtures

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceJointMangoldtWork SourceStrictColumnInterior SourceVaughanHankel SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation EstimateVaughanSource EstimateSourceMobiusKernel
open SourcePairing
open EstimatePlainKernel EstimateBetaCentering

noncomputable section

/-- The finite Mangoldt window excludes its lower natural atom. -/
theorem natural_lower_atom_excluded : (3 : ℕ) ∉ Finset.Ioc 3 5 := by
  norm_num

/-- Its upper natural atom is retained. -/
theorem natural_upper_atom_included : (5 : ℕ) ∈ Finset.Ioc 3 5 := by
  norm_num

/-- The strict column readout excludes the quotient endpoint. -/
theorem strict_quotient_endpoint_excluded : (7 : ℕ) ∉ Finset.Ico 4 7 := by
  norm_num

/-- Empty strict inventories produce the independently defined zero test. -/
theorem empty_strict_inventory_gives_zero_test (A t : ℝ)
    (hK : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) :
    jointMangoldtTestProfile A t = 0 := by
  simp only [jointMangoldtTestProfile]
  rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]

/-- The actual Mangoldt error vanishes at the anchored logarithmic zero. -/
theorem actual_error_at_logarithmic_zero : mangoldtLogError 0 = 0 := by
  simp [mangoldtLogError, mangoldtLogPrefix_zero]

/-- The positive unit index retains the actual normalized correlation value. -/
theorem positive_unit_column_test_at_zero (A : ℝ) (hA : 1 ≤ A) :
    Real.exp ((0 : ℝ) / 2) / Real.sqrt (1 : ℝ) *
      sourceCorrelation explicitSecondDerivative A (0 + Real.log (1 : ℝ)) = 1 := by
  simpa using actual_correlation_at_zero A hA

/-- A zero column index has the assigned zero divisor and cannot replace a unit atom. -/
theorem zero_column_index_is_not_unit (A : ℝ) :
    Real.exp ((0 : ℝ) / 2) / Real.sqrt (0 : ℝ) *
      sourceCorrelation explicitSecondDerivative A (0 + Real.log (0 : ℝ)) ≠ 1 := by
  simp

/-- The square-root coefficient differs from the coefficient with a lost critical half. -/
theorem critical_half_factor_control :
    Real.sqrt (4 : ℝ) / 4 = (1 / 2 : ℝ) ∧
      Real.sqrt (4 : ℝ) / 4 ≠ (1 : ℝ) := by
  norm_num

/-- The lower error boundary is subtracted, not added, in a scalar Abel control. -/
theorem lower_boundary_sign_control :
    (10 - 3 - 2 : ℝ) = 5 ∧ (10 + 3 - 2 : ℝ) ≠ 5 := by
  norm_num

/-- A nonzero continuous integral cannot be deleted merely by naming a work term. -/
theorem continuous_integral_retention_control :
    (1 - 0 - 0 : ℝ) ≠ (-0 - 0 : ℝ) := by
  norm_num

/-- Both independent compensation terms are subtracted once. -/
theorem complete_compensation_control :
    (20 - 3 - 2 - 5 - 7 : ℝ) = 3 ∧
      (20 - 3 - 2 - 7 : ℝ) ≠ 3 ∧ (20 - 3 - 2 - 5 : ℝ) ≠ 3 := by
  norm_num

/-- A one-sided upper bound alone supplies neither positivity nor an absolute bound. -/
theorem upper_bound_is_not_absolute_or_positive_control :
    (-5 : ℝ) ≤ 0 ∧ ¬(0 : ℝ) ≤ -5 ∧ ¬|(-5 : ℝ)| ≤ 0 := by
  norm_num

/-- The actual finite Abel adapter retains the full compensation and lower boundary. -/
theorem actual_interior_work_readout (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  exact strictColumnInterior_eq_joint_mangoldt_error_work A hA

/-- Returning to the original target also retains the actual quotient endpoint. -/
theorem actual_full_target_keeps_quotient_endpoint (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A +
        (let U := vaughanCutoff A
         let N := sourceKernelCutoff A
         let K := N / (U + 1)
         let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
         let R : ℕ → ℝ := fun k =>
           ∑ m ∈ longInventory A,
             vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
         B K * R K) := by
  rw [covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA,
    strictColumnInterior_eq_joint_mangoldt_error_work A hA]

end
end FormalResearch.RiemannHypothesis.JointMangoldtWorkScopeFixtures
