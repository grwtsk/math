-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B.Variantbb868e7cb4c6879dba1c8930009a8a4500db9e8693380d27c6fad6f214c8b169","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb868e7cb4c6879dba1c8930009a8a4500db9e8693380d27c6fad6f214c8b169","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.B.Variantbb868e7cb4c6879dba1c8930009a8a4500db9e8693380d27c6fad6f214c8b169","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bb868e7cb4c6879dba1c8930009a8a4500db9e8693380d27c6fad6f214c8b169","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-joint-counterterm-alignment-v1/JointCountertermAlignmentFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointCountertermAlignment
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange

/-!
# Mean cancellation scope and hostile controls

UNCOMPILED fixtures. Scalar controls test signs and omitted terms, not an actual
arithmetic estimate. Actual centered-prefix and correlation controls are stated
separately. No positivity or uniform signed witness follows from this adapter.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B.Variantbb868e7cb4c6879dba1c8930009a8a4500db9e8693380d27c6fad6f214c8b169

namespace FormalResearch.RiemannHypothesis.JointCountertermAlignmentFixtures

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceJointCountertermAlignment SourceJointMangoldtWork SourceVaughanHankel
open SourceDivisorCounterterms SourceMangoldtAbel SourceCorrelationSignChange
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateVaughanIdentity EstimateBetaCentering EstimateMertensAbel

noncomputable section

private def B (U k : ℕ) : ℝ := ∑ n ∈ Finset.Ioc U k, centeredBeta U n

private theorem inventory_three : Finset.Icc 1 3 = {1, 2, 3} := by decide

private theorem mobius_two : (moebius 2 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime Nat.prime_two

private theorem mobius_three : (moebius 3 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime (by norm_num : Nat.Prime 3)

/-- The global baseline is part of the original independent main term. -/
theorem original_main_term_keeps_global_baseline (A : ℝ) :
    SourceSamplingLedger.independentMainTerm A = globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d :=
  independentMainTerm_eq_baseline_add_divisors A

/-- The same reciprocal mean cancels once against the same divisor counterterm. -/
theorem original_divisor_mean_cancels_once (A : ℝ) (hA : 1 ≤ A) (d : ℕ) :
    divisorInteraction A d - divisorCounterterm A d = divisorRemainder A d :=
  divisorInteraction_sub_counterterm A hA d

/-- The divisor-one remainder is minus its counterterm, rather than an erased zero. -/
theorem divisor_one_remainder_keeps_counterterm (A : ℝ) (hA : 1 ≤ A) :
    divisorRemainder A 1 = -divisorCounterterm A 1 := divisorRemainder_one A hA

/-- The full centered diagonal includes the actual finite mean correction. -/
theorem centered_diagonal_keeps_mean (A : ℝ) :
    centeredDeletedDiagonal A =
      EstimateVaughanTranslationGate.typeTwoDiagonal A +
        alpha (vaughanCutoff A) * deletedDiagonalMean A :=
  centeredDeletedDiagonal_eq_old_diagonal_add_centering A

/-- The physical equal-index term is deleted. -/
theorem physical_equal_index_deleted (z : ℝ) :
    (if (2 : ℕ) = 2 then 0 else z) = 0 := by simp

/-- A distinct arithmetic index remains; no divisor-fiber diagonal is substituted. -/
theorem physical_distinct_index_retained (z : ℝ) :
    (if (3 : ℕ) = 2 then 0 else z) = z := by simp

/-- The original centered prefix is positive at one literal arithmetic point. -/
theorem actual_centered_prefix_positive : B 3 4 = 1 / 6 := by
  unfold B
  rw [centeredBeta_interval_eq_discrepancy 3 3 4 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, inventory_three, mobius_two, mobius_three]

/-- That same arithmetic prefix is negative at its next literal point. -/
theorem actual_centered_prefix_negative : B 3 5 = -2 / 3 := by
  unfold B
  rw [centeredBeta_interval_eq_discrepancy 3 3 5 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, inventory_three, mobius_two, mobius_three]

/-- The actual source correlation also has a negative value in its positive half-support. -/
theorem actual_correlation_is_not_pointwise_positive (A : ℝ) (hA : 0 < A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧ sourceCorrelation explicitSecondDerivative A t < 0 :=
  sourceCorrelation_exists_neg_in_half_support hA

/-- Empty strict inventories give the literal zero test, without deleting compensation. -/
theorem empty_strict_inventory_test_zero (A t : ℝ)
    (hK : sourceKernelCutoff A / (vaughanCutoff A + 1) ≤ vaughanCutoff A + 1) :
    jointMangoldtTestProfile A t = 0 := by
  simp only [jointMangoldtTestProfile]
  rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]

/-- A synthetic lower boundary has the minus sign in the aligned readout. -/
theorem lower_boundary_sign_is_retained :
    (20 - 3 - 2 - 5 - 7 + 11 : ℝ) = 14 ∧
      (20 + 3 - 2 - 5 - 7 + 11 : ℝ) ≠ 14 := by norm_num

/-- A synthetic counterterm is subtracted once; the endpoint is added once. -/
theorem counterterm_and_endpoint_signs_are_retained :
    (20 - 3 - 2 - 5 - 7 + 11 : ℝ) ≠ (20 - 3 - 2 - 5 + 7 + 11 : ℝ) ∧
      (20 - 3 - 2 - 5 - 7 + 11 : ℝ) ≠ (20 - 3 - 2 - 5 - 7 : ℝ) := by norm_num

/-- A one-sided upper estimate alone neither bounds absolute value nor supplies positivity. -/
theorem upper_bound_is_not_absolute_or_positive :
    (-5 : ℝ) ≤ 0 ∧ ¬(0 : ℝ) ≤ -5 ∧ ¬|(-5 : ℝ)| ≤ 0 := by norm_num

/-- A scalar mean cancellation is not a bound on the remaining signed value. -/
theorem mean_cancellation_supplies_no_synthetic_upper_bound (V : ℝ) :
    (7 + V - 7 : ℝ) = V := by ring

end
end FormalResearch.RiemannHypothesis.JointCountertermAlignmentFixtures
