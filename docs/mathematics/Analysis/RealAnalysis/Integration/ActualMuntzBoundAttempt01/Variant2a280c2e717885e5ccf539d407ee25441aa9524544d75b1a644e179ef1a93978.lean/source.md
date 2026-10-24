# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzBoundAttempt01.Variant2a280c2e717885e5ccf539d407ee25441aa9524544d75b1a644e179ef1a93978

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c6cc9ee9e64d80fc2f7fee1b288f24022b9d5b2` · SHA-256 `4661c62c34593e867f30821ac819f1510ac1d772c36ed687506cf2cc9097f334`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualSourceIntervalIntegralZero.Variant22c889ff552c06c46728d0864b80106ab6a80ff68ff7c9f2cc1ee5540a3baa56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22c889ff552c06c46728d0864b80106ab6a80ff68ff7c9f2cc1ee5540a3baa56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualSourceIntervalIntegralZero.Variant22c889ff552c06c46728d0864b80106ab6a80ff68ff7c9f2cc1ee5540a3baa56","mathematical_subject":"Analysis.Integration","original_sha256":"22c889ff552c06c46728d0864b80106ab6a80ff68ff7c9f2cc1ee5540a3baa56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/muntz_operator/ActualMuntzBound-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMuntzInventory
import Mathlib.NumberTheory.AbelSummation

/-! Actual finite Abel identity and boundedness for the independently defined Müntz operator.
Direction grwtsk contributors; focused scratch proof OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualSourceIntervalIntegralZero.Variant22c889ff552c06c46728d0864b80106ab6a80ff68ff7c9f2cc1ee5540a3baa56

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzBound
open MeasureTheory Filter
open ContinuousResearch.LogarithmicSource ContinuousResearch.ActualGoodKernel
open ContinuousResearch.ActualMuntzInventory

theorem actual_source_interval_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..Real.exp A, actualLogSource A u) = 0 := by
  have hp : 0 < A := by linarith
  have he : (Set.Ioc 0 (Real.exp A)).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : u ∈ Set.Ioc 0 (Real.exp A)
    · simp [hu]
    · have hz : actualLogSource A u = 0 := by
        apply actualLogSource_zero_outside hp
        simp only [Set.mem_Ioc,not_and_or,not_lt,not_le] at hu
        rcases hu with hu | hu
        · exact Or.inl (hu.trans (Real.exp_pos (-A)).le)
        · exact Or.inr hu.le
      simp [hu,hz]
  have hepos : (Set.Ioi 0).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : 0 < u
    · simp [hu]
    · simp [hu,actualLogSource_zero_nonpos A (le_of_not_gt hu)]
  rw [intervalIntegral.integral_of_le (Real.exp_pos A).le,
    ←integral_indicator Set.measurableSet_Ioc,he,
    ←hepos,integral_indicator Set.measurableSet_Ioi]
  exact actualLogSource_integral_zero hA

theorem scaled_source_interval_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), actualLogSource A (x*t)) = 0 := by
  rw [intervalIntegral.integral_comp_mul_left _ hx.ne']
  simp only [mul_zero,mul_div_cancel₀ _ hx.ne',actual_source_interval_integral_zero hA,smul_zero]

theorem actual_scaled_Abel {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x = -(∫ t in Set.Ioc 0 (Real.exp A/x),
      deriv (fun u : ℝ => actualLogSource A (x*u)) t *((⌊t⌋₊ : ℝ)+1)) := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hid : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hs := sum_mul_eq_sub_integral_mul (fun _ : ℕ => (1 : ℝ))
    (div_nonneg (Real.exp_pos A).le hx.le)
    (fun t _ => (hg.differentiable (by norm_num) t)) hid
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  have hleft : (∑ n ∈ Finset.Icc 0 ⌊Real.exp A/x⌋₊, g n * (1 : ℝ)) = actualMuntz A x := by
    simp only [mul_one]
    rw [actualMuntz_eq_positiveSamples hA,positiveSamples_eq_allSamples (by linarith) hx,
      allSamples_eq_closed_inventory (by linarith) hx]
    unfold g upperInventory
    apply Finset.sum_congr rfl
    intro n _
    rw [mul_comm]
  rw [hleft,hz,zero_mul,zero_sub] at hs
  simpa only [Finset.sum_const,Finset.card_Icc,Nat.sub_zero,nsmul_eq_mul,
    mul_one,Nat.cast_add,Nat.cast_one] using hs

theorem actual_scaled_linear_derivative_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), t*deriv (fun u : ℝ => actualLogSource A (x*u)) t) = 0 := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hs := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u:=fun t : ℝ => t) (v:=g) (u':=fun _ => (1 : ℝ)) (v':=deriv g)
    continuous_id.continuousOn hg.continuous.continuousOn
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (Real.exp A/x))
    (hg.continuous_deriv_one.intervalIntegrable 0 (Real.exp A/x))
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  rw [hz,mul_zero,zero_mul,sub_zero] at hs
  simpa only [one_mul,scaled_source_interval_integral_zero hA hx,sub_self] using hs

end ContinuousResearch.ActualMuntzBound
```
