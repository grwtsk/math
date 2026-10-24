# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLowTimeRadius.Variante485a24377e0eef0bbed0583e1ab940ea9442c4eedd88eb0fa3a2fc448899ee9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `646f62d27745f298ff40a5a1b1324d58abcafefd` · SHA-256 `5f3219ef38f1bc161466d33323ca0d815b77ed76639fd087551616e9125f3d9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TimeRow.Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TimeRow.Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/radius-attempt01/SourceLowTimeRadius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRestrictedLowTimeWork


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TimeRow.Variantbbd5c2a1ccd119d2d8950cfab8e2492246c9edec76306a1cfc91dc89c331bcdc

namespace FormalResearch.RiemannHypothesis.SourceLowTimeRadius

open MeasureTheory Set
open scoped BigOperators Interval
open SourceActualMixedWorkFubini SourceRestrictedMixedPairing SourceLowTimeScalarBudget
open SourceRestrictedLowTimeWork SourcePairing SourceMangoldtAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering SourceVaughanHankel

noncomputable section

private abbrev timeRow := SourceActualMixedWorkFubini.profileX
private abbrev cellRow := SourceActualMixedWorkFubini.profileYCell
private abbrev errorBudget : ℝ := Real.log 4 + 4 + Real.log 2

def lowTimeStripBudget (R : ℝ) : ℝ :=
  2 * (Real.log 4 + 4 + Real.log 2) * (162826 / (7623 * R ^ 2) + 1 / 4)

theorem actual_low_sector_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 1 ≤ U := by have := vaughanCutoff_pos A hA; dsimp only [U]; omega
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  have he : (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) =
      (fun v => ∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
            cellRow r (k : ℝ) v)) := by
    funext v
    change timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
      (∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) * cellRow r (k : ℝ) v) = _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he]
  apply integrable_finsetSum
  intro k hk
  have hk0 : 0 < (k : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
  exact (SourceActualMixedWorkFubini.profile_cell_product_integrable r hc hla hk0 hs).const_mul _

theorem actual_low_mixed_restricted_abs_le_scaled {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowMixedWorkDensity A v| ≤ lowTimeStripBudget A := by
  have hp : 0 < A := by linarith
  have h1 : IntegrableOn (fun v =>
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S :=
    (actual_low_sector_integrable _
      ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
      (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp)).integrableOn
  have h0 : IntegrableOn (fun v =>
      actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
        actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v) S :=
    (actual_low_sector_integrable _ (normalizedTest_contDiff A hp).continuous hA
      (SourceActualMixedWorkFubini.source_tsupport_subset hp)).integrableOn
  unfold actualLowMixedWorkDensity
  rw [integral_add h1 (h0.const_mul (1 / 4 : ℝ)), integral_const_mul]
  calc
    _ ≤ |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| +
        (1 / 4 : ℝ) * |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| := by
      have ht := abs_add_le
        (∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A))
          A v * actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v)
        ((1 / 4 : ℝ) * ∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)
      simpa only [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 4)] using ht
    _ ≤ 2 * errorBudget * (162826 / (7623 * A ^ 2)) + (1 / 4 : ℝ) * (2 * errorBudget) :=
      add_le_add (actual_derivative_low_sector_abs_le hA S)
        (mul_le_mul_of_nonneg_left (actual_source_low_sector_abs_le hA S) (by norm_num))
    _ = errorBudget * (2 * (162826 / (7623 * A ^ 2) + 1 / 4)) := by ring
    _ = _ := by unfold lowTimeStripBudget; ring

theorem actual_retained_spatial_strip_abs_le_scaled {A : ℝ} (hA : 1 ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤ lowTimeStripBudget A := by
  have hm : MeasurableSet (actualWorkLeftStrip A) := measurableSet_Icc.diff measurableSet_Icc
  have he := setIntegral_congr_fun (μ := (volume : Measure ℝ)) hm
    (fun v hv => actual_density_eq_low_density_on_left_strip hA hv)
  rw [he]
  exact actual_low_mixed_restricted_abs_le_scaled hA (actualWorkLeftStrip A)

theorem lowTimeStripBudget_le_at_radius {R A : ℝ} (hR : 1 ≤ R) (hA : R ≤ A) :
    lowTimeStripBudget A ≤ lowTimeStripBudget R := by
  have hR0 : 0 < R := by linarith
  have hA0 : 0 < A := by linarith
  have hsq : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hdiv : 162826 / (7623 * A ^ 2) ≤ 162826 / (7623 * R ^ 2) :=
    div_le_div_of_nonneg_left (by norm_num) (by positivity) (by gcongr)
  unfold lowTimeStripBudget
  exact mul_le_mul_of_nonneg_left (add_le_add_right hdiv _) (by
    exact mul_nonneg (by norm_num) mangoldt_error_budget_pos.le)

theorem actual_retained_spatial_strip_abs_le_radius {R A : ℝ}
    (hR : 1 ≤ R) (hA : R ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤ lowTimeStripBudget R :=
  (actual_retained_spatial_strip_abs_le_scaled (hR.trans hA)).trans
    (lowTimeStripBudget_le_at_radius hR hA)

theorem actual_surplus_le_remainingOverlap_add_radius {R A : ℝ}
    (hR : 1 ≤ R) (hA : R ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A ≤
        remainingOverlapBalance A + lowTimeStripBudget R := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip (hR.trans hA)]
  have h := actual_retained_spatial_strip_abs_le_radius hR hA
  have hn := neg_le_abs (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

theorem remainingOverlap_le_actual_surplus_add_radius {R A : ℝ}
    (hR : 1 ≤ R) (hA : R ≤ A) :
    remainingOverlapBalance A ≤ VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A + lowTimeStripBudget R := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip (hR.trans hA)]
  have h := actual_retained_spatial_strip_abs_le_radius hR hA
  have hn := le_abs_self (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLowTimeRadius
```
