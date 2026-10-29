-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFarPeriodicWork.Variant9a73bd2369091021aec87b61ead6d3b50ee5945814dda8c1bc34f488e360ddf4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a73bd2369091021aec87b61ead6d3b50ee5945814dda8c1bc34f488e360ddf4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualFarPeriodicWork.Variant9a73bd2369091021aec87b61ead6d3b50ee5945814dda8c1bc34f488e360ddf4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9a73bd2369091021aec87b61ead6d3b50ee5945814dda8c1bc34f488e360ddf4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-far-periodic-work-decay/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualFarPeriodicBudget
import SourceStrictComplementaryEarlyBudget

/-!
The actual periodic part is integrated against the original closed Mangoldt
time primitive. Its finite physical/logarithmic column window, signed mean,
both endpoint traces and the original C4 regularity remain explicit.
Only this periodic component is estimated, without a bound on the full work.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFarPeriodicWork.Variant9a73bd2369091021aec87b61ead6d3b50ee5945814dda8c1bc34f488e360ddf4

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFarPeriodicWorkDecay
open MeasureTheory Set Filter
open scoped Interval
open SourceActualFarPeriodicBudget SourceActualPeriodicColumnPrimitive
open SourceActualPhysicalPeriodicPrimitive RootActualPeriodicPhysicalCell
open SourceActualAdjointAbelPrimitives RootActualDoubleAdjointTransfer
open RootActualUpperColumnWindow SourceActualLogColumnTransport
open SourcePairing SourceStrictComplementaryEarlyBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource EstimateSourceMobiusKernel Realization
open RH16IndependentChallengeNext
noncomputable section

/-- The original time primitive pairs with the actual far physical-column periodic part. -/
def actualFarPeriodicWork (A l : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t l
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)

/-- The explicit physical cutoff keeps the source floor cutoff and fractional column trace. -/
def actualFarPeriodicCutoff (A : ℝ) : ℝ :=
  Real.exp (A / 2 + Real.log (vaughanCutoff A : ℝ) + 3 * Real.log A / 2)

private theorem physical_profile_measurable {A : ℝ} (hA : 0 < A) :
    Measurable (fun p : ℝ × ℝ => actualPeriodicPhysicalCellProfile A p.1 p.2) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : ContDiff ℝ 1 (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 1 (hc.of_le (by norm_num))
  have h3 : ContDiff ℝ 1 (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 3 (hc.of_le (by norm_num))
  have hm1 := h1.continuous.measurable
  have hm3 := h3.continuous.measurable
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  fun_prop

private theorem row_stronglyMeasurable {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) :
    StronglyMeasurable (fun t => actualPhysicalPeriodicPrefixRow A t l b) := by
  have hm : Measurable (fun x : ℝ =>
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) := by
    apply Measurable.sub _ measurable_const
    exact (measurable_of_countable (fun M : ℕ =>
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n)).comp
        Nat.measurable_floor
  have hj : Measurable (fun p : ℝ × ℝ =>
      ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor p.2),
        centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
          actualPeriodicPhysicalCellProfile A p.1 p.2) :=
    (hm.comp measurable_snd).mul (physical_profile_measurable hA)
  have hi := hj.stronglyMeasurable.integral_prod_right' (ν := volume.restrict (Ioc l b))
  simpa only [actualPhysicalPeriodicPrefixRow, intervalIntegral.integral_of_le hlb] using hi

/-- The original time-density is genuinely L1 on every finite source time prefix. -/
theorem actualFarPeriodicWork_intervalIntegrable {A l b r : ℝ} (hA : 91 ≤ A)
    (hl : (vaughanCutoff A : ℝ) ≤ l) (hlb : l ≤ b) (hr : actualTimeLower A ≤ r) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t l b) volume (actualTimeLower A) r := by
  have hA1 : 1 ≤ A := by linarith
  have ht0 : 0 ≤ actualTimeLower A :=
    Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA1)
  let C : ℝ := (32 / (3 * A)) *
    ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
      Real.exp (r / 2) * Real.exp (-3 * Real.log l / 2)
  have hi : IntervalIntegrable (fun t => actualPhysicalPeriodicPrefixRow A t l b)
      volume (actualTimeLower A) r := by
    apply intervalIntegrable_iff.mpr
    have hb : ∀ᵐ t ∂volume.restrict (uIoc (actualTimeLower A) r),
        ‖actualPhysicalPeriodicPrefixRow A t l b‖ ≤ C := by
      rw [uIoc_of_le hr]
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [Real.norm_eq_abs]
      calc
        _ ≤ (32 / (3 * A)) *
            ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
              Real.exp (t / 2) * Real.exp (-3 * Real.log l / 2) :=
          actualPhysicalPeriodicPrefixRow_abs_le hA (ht0.trans ht.1.le) hl hlb
        _ ≤ C := by
          dsimp [C]
          have he : Real.exp (t / 2) ≤ Real.exp (r / 2) :=
            Real.exp_le_exp.mpr (by linarith [ht.2])
          nlinarith [mul_nonneg (by positivity : 0 ≤ (32 / (3 * A)) *
            ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16))
              (sub_nonneg.mpr he)]
    exact Measure.integrableOn_of_bounded (by simp)
      (row_stronglyMeasurable (by linarith : 0 < A) hlb).aestronglyMeasurable hb
  exact hi.continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 r hr).continuousOn

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicWorkDecay
