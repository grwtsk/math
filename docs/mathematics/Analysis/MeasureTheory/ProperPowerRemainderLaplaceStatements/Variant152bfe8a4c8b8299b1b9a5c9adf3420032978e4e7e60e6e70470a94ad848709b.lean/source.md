# Complete source: GRWTSK.Analysis.MeasureTheory.ProperPowerRemainderLaplaceStatements.Variant152bfe8a4c8b8299b1b9a5c9adf3420032978e4e7e60e6e70470a94ad848709b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10bab8745fb87d89d0498ff99e16164154709871` · SHA-256 `2408a9a7d8d0572cb0b740bf570cacdfdcb217ae3237993c95a43fe0d36a45de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ProperPrimePowerContributionMeasurable.Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ProperPrimePowerContributionMeasurable.Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/proper-prime-powers/ProperPowerRemainderLaplaceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic
import FormalResearch.RiemannHypothesis.SourceComparison.SourceParameterMeasurability
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne

/-!
# Genuine all-positive-rate integrability of the proper-power error

Scale measurability comes from the actual finite source cutoff and the existing
joint correlation measurability. The exact proper-power identity transports
that measurability to its remainder on A at least one. The proved inverse-square
remainder estimate yields an explicit degree-fifteen Laplace majorant.
This result concerns only the proper-power error, not the full source negative part.
-/

namespace GRWTSK.Analysis.MeasureTheory.ProperPrimePowerContributionMeasurable.Variant92b02eae747172a569ef4172d6d3574cf0a265b57d8444fb2be5ce154699bff0

namespace ProperPowerRemainderLaplaceScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers ProperPowerAsymptotic SourceParameterMeasurability
noncomputable section

theorem properPrimePowerContribution_measurable : Measurable properPrimePowerContribution := by
  have hC (n : ℕ) : Measurable (fun A => sourceCorrelation explicitSecondDerivative A (Real.log n)) :=
    sourceCorrelation_measurable.comp (measurable_id.prodMk measurable_const)
  have hs : Measurable (fun p : ℝ × ℕ =>
      ∑ n ∈ Finset.Icc 2 p.2,
        if (n : ℝ) < Real.exp (2 * p.1) then
          if ¬n.Prime then ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative p.1 (Real.log n) else 0
        else 0) := by
    apply measurable_from_prod_countable_left
    intro N
    change Measurable (fun A => ∑ n ∈ Finset.Icc 2 N, _)
    apply Finset.measurable_sum
    intro n _
    apply Measurable.ite
      (measurableSet_lt measurable_const ((measurable_const.mul measurable_id).exp))
    · by_cases hn : n.Prime
      · simp only [hn, not_true_eq_false, if_false]
        exact measurable_const
      · simp only [hn, not_false_eq_true, if_true]
        exact measurable_const.mul (hC n)
    · exact measurable_const
  have hc : Measurable (fun A : ℝ => (A, ⌊Real.exp (2 * A)⌋₊)) :=
    measurable_id.prodMk ((measurable_const.mul measurable_id).exp.nat_floor)
  have he := hs.comp hc
  convert he using 1
  funext A
  simp only [properPrimePowerContribution, Cutoff.primeIndices, Finset.sum_filter,
    Function.comp_apply]

theorem sourcePowerRemainder_eq_finite_source (A : ℝ) (hA : 1 ≤ A) :
    sourcePowerRemainder A = -2 * (properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) := by
  rw [properPrimePowerContribution_eq_main_add_error A hA]
  unfold sourcePowerRemainder
  ring

theorem sourcePowerRemainder_aestronglyMeasurable :
    AEStronglyMeasurable sourcePowerRemainder (volume.restrict (Ioi 1)) := by
  have hz : Measurable sourceNormalization := by unfold sourceNormalization; fun_prop
  have hm : Measurable (fun A => -2 * (properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant))) :=
    measurable_const.mul (properPrimePowerContribution_measurable.sub
      (((measurable_const.mul measurable_id).div (measurable_const.mul hz)).add measurable_const))
  apply hm.aestronglyMeasurable.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
  exact (sourcePowerRemainder_eq_finite_source A hA.le).symm

theorem weighted_sourcePowerRemainder_aestronglyMeasurable (σ : ℝ) :
    AEStronglyMeasurable (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (volume.restrict (Ioi 1)) := by
  have hz : AEStronglyMeasurable sourceNormalization (volume.restrict (Ioi 1)) := by
    unfold sourceNormalization
    fun_prop
  have hweight : AEStronglyMeasurable (fun A : ℝ => Real.exp (-σ * A) * A ^ 17)
      (volume.restrict (Ioi 1)) := by fun_prop
  convert (hweight.mul hz).mul sourcePowerRemainder_aestronglyMeasurable.norm using 1
  funext A
  simp only [Real.norm_eq_abs, Pi.mul_apply]

theorem weighted_sourcePowerRemainder_bound (σ A : ℝ) (hA : 1 ≤ A) :
    Real.exp (-σ * A) * A ^ 17 * sourceNormalization A * |sourcePowerRemainder A| ≤
      (84 * properPowerBudget) * (A ^ 15 * Real.exp (-σ * A)) := by
  have hA0 : 0 < A := by linarith
  calc
    _ = Real.exp (-σ * A) * ((A ^ 17 * sourceNormalization A) * |sourcePowerRemainder A|) := by ring
    _ ≤ Real.exp (-σ * A) * ((42 * A ^ 17) * ((2 * properPowerBudget) / A ^ 2)) :=
      mul_le_mul_of_nonneg_left (mul_le_mul (SourcePNTRateOne.actual_scale_le A hA)
        (sourcePowerRemainder_abs_le A hA) (abs_nonneg _) (by positivity)) (Real.exp_pos _).le
    _ = _ := by
      field_simp
      ring

theorem sourcePowerRemainder_all_positive_rates (σ : ℝ) (hσ : 0 < σ) :
    IntegrableOn (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (Ioi 1) := by
  have hi : IntegrableOn (fun A : ℝ => A ^ 15 * Real.exp (-σ * A)) (Ioi 0) := by
    simpa only [Real.rpow_one] using
      ThetaErrorMoments.polynomial_stretched_integrable 15 σ 1 hσ (by norm_num)
  have hg : IntegrableOn (fun A : ℝ => (84 * properPowerBudget) *
      (A ^ 15 * Real.exp (-σ * A))) (Ioi 1) :=
    (hi.mono_set (Ioi_subset_Ioi (by norm_num : (0 : ℝ) ≤ 1))).const_mul _
  apply hg.mono' (weighted_sourcePowerRemainder_aestronglyMeasurable σ)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
  rw [Real.norm_eq_abs, abs_of_nonneg]
  · exact weighted_sourcePowerRemainder_bound σ A hA.le
  · exact mul_nonneg
      (mul_nonneg (mul_nonneg (Real.exp_pos _).le (pow_nonneg (zero_le_one.trans hA.le) _))
        (source_normalization_pos A hA.le).le) (abs_nonneg _)

end
end ProperPowerRemainderLaplaceScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers ProperPowerAsymptotic ProperPowerRemainderLaplaceScratch

example : Measurable properPrimePowerContribution :=
  ProperPowerRemainderLaplaceScratch.properPrimePowerContribution_measurable

example (A : ℝ) (hA : 1 ≤ A) :
    sourcePowerRemainder A = -2 * (properPrimePowerContribution A -
      ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) :=
  ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_eq_finite_source A hA

example :
    AEStronglyMeasurable sourcePowerRemainder (volume.restrict (Ioi 1)) :=
  ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_aestronglyMeasurable

example (σ : ℝ) :
    AEStronglyMeasurable (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (volume.restrict (Ioi 1)) :=
  ProperPowerRemainderLaplaceScratch.weighted_sourcePowerRemainder_aestronglyMeasurable σ

example (σ A : ℝ) (hA : 1 ≤ A) :
    Real.exp (-σ * A) * A ^ 17 * sourceNormalization A * |sourcePowerRemainder A| ≤
      (84 * properPowerBudget) * (A ^ 15 * Real.exp (-σ * A)) :=
  ProperPowerRemainderLaplaceScratch.weighted_sourcePowerRemainder_bound σ A hA

example (σ : ℝ) (hσ : 0 < σ) :
    IntegrableOn (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (Ioi 1) :=
  ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_all_positive_rates σ hσ

```
