# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCesaroKernelBudget.Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d76d6ad67de95a3248ef9c359d7b5aadb4f04b61` · SHA-256 `e0c464aed87b85a4c475440e0a745684f91db94df9154460d3f926a97e81bec8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivZeroOfZeroOnIci.Variant8b01fa93af8f5c84d77f33d739f7a1a7ee7d201b53ada98d2e22dd7cbcb34603","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b01fa93af8f5c84d77f33d739f7a1a7ee7d201b53ada98d2e22dd7cbcb34603","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivZeroOfZeroOnIci.Variant8b01fa93af8f5c84d77f33d739f7a1a7ee7d201b53ada98d2e22dd7cbcb34603","mathematical_subject":"Analysis.Calculus","original_sha256":"8b01fa93af8f5c84d77f33d739f7a1a7ee7d201b53ada98d2e22dd7cbcb34603","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-cesaro-replay/SourceCesaroKernelBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFourthCorrelationCalibration
import Mathlib.Analysis.Calculus.MeanValue

/-!
The actual C4 source controls the third derivative throughout the physical
interval and the kernel variation needed by a second-primitive Cesaro route.
No arithmetic primitive bound is asserted. Direction: grwtsk contributors.
AI formal construction: OpenAI Codex, reusing the checked C4 source packet.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivZeroOfZeroOnIci.Variant8b01fa93af8f5c84d77f33d739f7a1a7ee7d201b53ada98d2e22dd7cbcb34603

set_option autoImplicit false
noncomputable section

namespace RH16CesaroKernel

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity RH16IndependentChallengeNext

private theorem deriv_zero_of_zero_on_Ici (f : ℝ → ℝ) (t : ℝ)
    (hz : ∀ y ∈ Ici t, f y = 0) : deriv f t = 0 := by
  have hd : HasDerivWithinAt f 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- All three upper derivative traces follow from the unchanged source support. -/
theorem actual_correlation_three_upper_traces (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 ∧
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A) = 0 ∧
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (2 * A) = 0 := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hz0 : ∀ t : ℝ, 2 * A ≤ t → C t = 0 := by
    intro t ht
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (ht.trans (le_abs_self t))
  have hz1 : ∀ t : ℝ, 2 * A ≤ t → deriv C t = 0 := by
    intro t ht
    exact deriv_zero_of_zero_on_Ici C t (fun y hy => hz0 y (ht.trans hy))
  have hz2 : ∀ t : ℝ, 2 * A ≤ t → deriv (deriv C) t = 0 := by
    intro t ht
    exact deriv_zero_of_zero_on_Ici (deriv C) t (fun y hy => hz1 y (ht.trans hy))
  have hz3 : ∀ t : ℝ, 2 * A ≤ t → deriv (deriv (deriv C)) t = 0 := by
    intro t ht
    exact deriv_zero_of_zero_on_Ici (deriv (deriv C)) t
      (fun y hy => hz2 y (ht.trans hy))
  exact ⟨hz1 _ le_rfl, hz2 _ le_rfl, hz3 _ le_rfl⟩

/-- The fourth-derivative budget gives a distance-to-upper-support third-derivative bound. -/
theorem actual_correlation_third_abs_le_upper_distance (A t : ℝ) (hA : 91 ≤ A)
    (ht : t ≤ 2 * A) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      67 / A ^ 4 * (2 * A - t) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hp : 0 < A := by linarith
  have hd : Differentiable ℝ (deriv (deriv (deriv C))) :=
    fun x => (actual_correlation_fourth_derivative A hp x).differentiableAt
  have hb := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := univ) (f := deriv (deriv (deriv C)))
    (fun x _ => hd x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      actual_correlation_fourth_abs_le_sixty_seven A x hA)
    convex_univ (mem_univ (2 * A)) (mem_univ t)
  have hz := (actual_correlation_three_upper_traces A hp).2.2
  simpa only [C, hz, sub_zero, Real.norm_eq_abs,
    abs_of_nonpos (sub_nonpos.mpr ht), neg_sub] using hb

/-- The complete physical interval has an explicit A^-3 bound. -/
theorem actual_correlation_third_abs_le_physical (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ 2 * A) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      134 / A ^ 3 := by
  have hp : 0 < A := by linarith
  have h := actual_correlation_third_abs_le_upper_distance A t hA ht
  have hb : 67 / A ^ 4 * (2 * A - t) ≤ 67 / A ^ 4 * (2 * A) := by
    exact mul_le_mul_of_nonneg_left (by linarith) (by positivity)
  have he : 67 / A ^ 4 * (2 * A) = 134 / A ^ 3 := by
    field_simp
    ring
  exact h.trans (hb.trans he.le)

/-- The actual source factor after transferring the exponential to the arithmetic primitive. -/
def cesaroWeight (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t +
    sourceCorrelation explicitSecondDerivative A t / 2

theorem cesaroWeight_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (cesaroWeight A)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2) t := by
  exact ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt.add
    (((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt.div_const 2)

/-- Its ordinary second derivative retains the actual plus correlation kernel. -/
theorem cesaroWeight_second_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (cesaroWeight A)) t =
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 := by
  have he : deriv (cesaroWeight A) = fun u =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
        deriv (sourceCorrelation explicitSecondDerivative A) u / 2 :=
    funext fun u => (cesaroWeight_hasDerivAt A u hA).deriv
  rw [he]
  exact ((actual_correlation_third_derivative A hA t).differentiableAt.hasDerivAt.add
    (((sourceCorrelation_deriv_contDiff hA).differentiable
      (by norm_num) t).hasDerivAt.div_const 2)).deriv

theorem cesaroWeight_second_deriv_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (deriv (deriv (cesaroWeight A))) := by
  have he : deriv (deriv (cesaroWeight A)) = fun t =>
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 :=
    funext fun t => cesaroWeight_second_deriv A t hA
  rw [he]
  have hc3 : Continuous (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) :=
    (show Differentiable ℝ (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
      from fun t => (actual_correlation_fourth_derivative A hA t).differentiableAt).continuous
  have hc2 : Continuous (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
    (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one
  exact hc3.add (hc2.div_const 2)

/-- Pointwise control of the actual second-primitive kernel, with explicit scale powers. -/
theorem cesaroWeight_second_abs_le_physical (A t : ℝ) (hA : 91 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ 2 * A) :
    |deriv (deriv (cesaroWeight A)) t| ≤ 134 / A ^ 3 + 65 / (6 * A ^ 2) := by
  have hp : 0 < A := by linarith
  have h3 := actual_correlation_third_abs_le_physical A t hA ht0 ht
  have h2 := sourceCorrelation_second_deriv_abs_le_coefficient (by linarith : 1 ≤ A) t
  have he : 162826 / (7623 * A ^ 2) / 2 ≤ 65 / (6 * A ^ 2) := by
    have hb : 162826 / (7623 * A ^ 2) ≤ 65 / (3 * A ^ 2) := by
      apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
      nlinarith [sq_pos_of_pos hp]
    have hd := div_le_div_of_nonneg_right hb (by norm_num : (0 : ℝ) ≤ 2)
    have heq : 65 / (3 * A ^ 2) / 2 = 65 / (6 * A ^ 2) := by
      rw [div_div]
      congr 1
      ring
    exact hd.trans_eq heq
  rw [cesaroWeight_second_deriv A t hp]
  calc
    _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
        |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2| := abs_add_le _ _
    _ ≤ 134 / A ^ 3 + 162826 / (7623 * A ^ 2) / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add h3 (div_le_div_of_nonneg_right h2 (by norm_num))
    _ ≤ _ := add_le_add le_rfl he

private theorem integral_linear (a b c : ℝ) :
    (∫ t in a..b, t * c) = c / 2 * (b ^ 2 - a ^ 2) := by
  have hd (t : ℝ) : HasDerivAt (fun u : ℝ => c / 2 * u ^ 2) (t * c) t := by
    exact (((hasDerivAt_id t).pow 2).const_mul (c / 2)).congr_deriv
      (by dsimp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => t * c)).intervalIntegrable a b)
  linarith

/-- Weighted kernel variation stays bounded uniformly on every actual physical interval. -/
theorem cesaroWeight_weighted_second_budget (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
        65 / 3 + 268 / A := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let B := 134 / A ^ 3 + 65 / (6 * A ^ 2)
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, t * B := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc.abs).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun t : ℝ => t * B)).intervalIntegrable _ _)
    intro t ht
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤ t * B
    have ht0 : 0 ≤ t := hl0.trans ht.1
    have hkernel := cesaroWeight_second_abs_le_physical A t hA ht0 ht.2
    exact (mul_le_mul_of_nonneg_left hkernel (by linarith [ht.1])).trans
      (mul_le_mul_of_nonneg_right (by linarith) hB)
  have hsub : (∫ t in Real.log 2..2 * A, t * B) ≤ ∫ t in 0..2 * A, t * B := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      ((by fun_prop : Continuous (fun t : ℝ => t * B)).intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le hB
  have he : (∫ t in 0..2 * A, t * B) = 65 / 3 + 268 / A := by
    rw [integral_linear]
    dsimp [B]
    field_simp
    ring
  exact hmono.trans (hsub.trans he.le)

/-- A fixed cap is available at the same radius ninety-one as the checked fourth derivative. -/
theorem cesaroWeight_weighted_second_budget_uniform (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤ (1699 / 60 : ℝ) := by
  have hp : 0 < A := by linarith
  have h := cesaroWeight_weighted_second_budget A hA
  have he : 268 / A ≤ (133 / 20 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  linarith

/-- Retaining distance to the upper support improves the kernel budget by a factor of three. -/
theorem cesaroWeight_weighted_second_budget_sharp (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
        65 / 3 + 268 / (3 * A) := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let H := fun t : ℝ => 67 / A ^ 4 * (2 * A - t) + 65 / (6 * A ^ 2)
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hbound (t : ℝ) (ht : t ≤ 2 * A) :
      |deriv (deriv (cesaroWeight A)) t| ≤ H t := by
    have h3 := actual_correlation_third_abs_le_upper_distance A t hA ht
    have h2 := sourceCorrelation_second_deriv_abs_le_coefficient (by linarith : 1 ≤ A) t
    have hb : 162826 / (7623 * A ^ 2) ≤ 65 / (3 * A ^ 2) := by
      apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
      nlinarith [sq_pos_of_pos hp]
    have heq : 65 / (3 * A ^ 2) / 2 = 65 / (6 * A ^ 2) := by
      rw [div_div]
      congr 1
      ring
    have hd := (div_le_div_of_nonneg_right (h2.trans hb)
      (by norm_num : (0 : ℝ) ≤ 2)).trans_eq heq
    rw [cesaroWeight_second_deriv A t hp]
    exact (abs_add_le _ _).trans (by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add h3 hd)
  have hH (t : ℝ) (ht : t ≤ 2 * A) : 0 ≤ H t := by
    dsimp [H]
    exact add_nonneg (mul_nonneg (by positivity) (by linarith)) (by positivity)
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc.abs).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    intro t ht
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤ t * H t
    exact (mul_le_mul_of_nonneg_left (hbound t ht.2) (by linarith [ht.1])).trans
      (mul_le_mul_of_nonneg_right (by linarith) (hH t ht.2))
  have hsub : (∫ t in Real.log 2..2 * A, t * H t) ≤ ∫ t in 0..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le (hH t ht.2)
  let P := fun t : ℝ => 67 / A ^ 4 * (A * t ^ 2 - t ^ 3 / 3) +
    65 / (12 * A ^ 2) * t ^ 2
  have hP (t : ℝ) : HasDerivAt P (t * H t) t := by
    have hd := (((((hasDerivAt_id t).pow 2).const_mul A).sub
      (((hasDerivAt_id t).pow 3).div_const 3)).const_mul (67 / A ^ 4)).add
      (((hasDerivAt_id t).pow 2).const_mul (65 / (12 * A ^ 2)))
    exact hd.congr_deriv (by dsimp only [id_eq, H]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hP t)
    ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable 0 (2 * A))
  have he : P (2 * A) - P 0 = 65 / 3 + 268 / (3 * A) := by
    dsimp [P]
    field_simp
    ring
  exact hmono.trans (hsub.trans (hi.trans he).le)

/-- The sharper radius-ninety-one cap applies to every real source scale in that tail. -/
theorem cesaroWeight_weighted_second_budget_sharp_uniform (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤ (2061 / 91 : ℝ) := by
  have hp : 0 < A := by linarith
  have h := cesaroWeight_weighted_second_budget_sharp A hA
  have he : 268 / (3 * A) ≤ (268 / 273 : ℝ) :=
    (div_le_iff₀ (by positivity : 0 < 3 * A)).mpr (by linarith)
  linarith

end RH16CesaroKernel
```
