-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SharpBalancedHeadCost.Variantd25de511d1704b9054b598aa99fc1b183e53f7c5ac9e270b50689bcca4c2d65c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d25de511d1704b9054b598aa99fc1b183e53f7c5ac9e270b50689bcca4c2d65c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SharpBalancedHeadCost.Variantd25de511d1704b9054b598aa99fc1b183e53f7c5ac9e270b50689bcca4c2d65c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d25de511d1704b9054b598aa99fc1b183e53f7c5ac9e270b50689bcca4c2d65c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-sharp-balanced-head/attempt02/SourceSharpBalancedFirstPrimeHead.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBalancedFirstPrimeConsumer

/-! Retain the exact lower-seven correction in the actual balanced first-prime head.
Direction and conceptual origin: grwtsk contributors.
Source-bound derivation: OpenAI Codex graph analyst. Formalization: OpenAI Codex root.
The actual signed tail witness remains supplied. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SharpBalancedHeadCost.Variantd25de511d1704b9054b598aa99fc1b183e53f7c5ac9e270b50689bcca4c2d65c

set_option autoImplicit false
noncomputable section
namespace RH16SharpBalancedFirstPrimeHead
open MeasureTheory Set Filter
open RH16BalancedFirstPrimePrimitive RH16BalancedFirstPrimeReturn
open RH16BalancedFirstPrimeConsumer RH16GrowingXiHead RH16ActualF7
open FormalResearch.RiemannHypothesis

def sharpBalancedHeadCost (A : ℝ) : ℝ :=
  20 * Real.log A / A -
    10 * Real.sqrt 7 * (2 * Real.log A + (Real.log A)^2 - (Real.log 7)^2 / 4) / A^2

private theorem floor_head_orders {A : ℝ} (hA : 91 ≤ A) :
    Real.log 7 ≤ Real.log (⌊A^2⌋₊ : ℝ) ∧
    Real.log (⌊A^2⌋₊ : ℝ) ≤ 2 * Real.log A := by
  have hp : 0 < A := by linarith
  have hU : 7 ≤ ⌊A^2⌋₊ := Nat.le_floor (by nlinarith : (7 : ℝ) ≤ A^2)
  have hUr : (7 : ℝ) ≤ (⌊A^2⌋₊ : ℝ) := by exact_mod_cast hU
  have hlog := Real.log_le_log (by linarith : 0 < (⌊A^2⌋₊ : ℝ))
    (Nat.floor_le (sq_nonneg A))
  rw [Real.log_pow] at hlog
  exact ⟨Real.log_le_log (by norm_num) hUr, by simpa using hlog⟩

/-- The original actual floor head retains its full lower-seven subtraction. -/
theorem balancedFirstPrimeHead_abs_le_sharp {A : ℝ} (hA : 91 ≤ A) :
    |balancedFirstPrimeHead A| ≤ sharpBalancedHeadCost A := by
  have hApos : 0 < A := by linarith
  obtain ⟨hL, hH⟩ := floor_head_orders hA
  let k : ℝ := 10 / A^2
  let f : ℝ → ℝ := fun t =>
    k * (1 + t / 2) * (Real.exp (t / 2) - Real.sqrt 7)
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  have hf : ∀ t : ℝ, Real.log 7 ≤ t → 0 ≤ f t := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
    have he : Real.sqrt 7 ≤ Real.exp (t / 2) := by
      rw [← he7]
      exact Real.exp_le_exp.mpr (by linarith)
    dsimp [f, k]
    positivity
  have hi (b : ℝ) : IntervalIntegrable f volume (Real.log 7) b :=
    (by dsimp [f]; fun_prop : Continuous f).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) (Real.log (⌊A^2⌋₊ : ℝ)),
      ‖balancedFirstPrimePrimitive t * actualXiCurvature A t‖ ≤ f t := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht.1.le
    have hF := balancedFirstPrimePrimitive_abs_le ht.1.le
    have hK := actualXiCurvature_abs_le hA ht0
    have he : 0 ≤ Real.exp (t / 2) - Real.sqrt 7 := by
      have hh := Real.exp_le_exp.mpr (show Real.log 7 / 2 ≤ t / 2 by linarith [ht.1])
      rw [he7] at hh
      linarith
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * (Real.exp (t / 2) - Real.sqrt 7)) *
          (5 / A^2 * (1 + t / 2)) :=
        mul_le_mul hF hK (abs_nonneg _) (by positivity)
      _ = f t := by dsimp [f, k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hL (ae_of_all _ hp)
    (hi (Real.log (⌊A^2⌋₊ : ℝ)))
  have hm := intervalIntegral.integral_mono_interval (le_refl (Real.log 7)) hL hH
    (by filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
        exact hf t ht.1.le) (hi (2 * Real.log A))
  have hd (t : ℝ) : HasDerivAt
      (fun t => k * (t * Real.exp (t / 2) - Real.sqrt 7 * (t + t^2 / 4)))
      (f t) t := by
    convert ((((hasDerivAt_id t).mul (((hasDerivAt_id t).div_const 2).exp)).sub
      (((hasDerivAt_id t).add ((hasDerivAt_id t).pow 2 |>.div_const 4)).const_mul
        (Real.sqrt 7))).const_mul k) using 1
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hd t) (hi (2 * Real.log A))
  have hea : Real.exp (2 * Real.log A / 2) = A := by
    rw [show 2 * Real.log A / 2 = Real.log A by ring, Real.exp_log hApos]
  rw [he, he7, hea] at hm
  rw [Real.norm_eq_abs] at hn
  have heq :
      k * (2 * Real.log A * A - Real.sqrt 7 *
        (2 * Real.log A + (2 * Real.log A)^2 / 4)) -
      k * (Real.log 7 * Real.sqrt 7 - Real.sqrt 7 *
        (Real.log 7 + (Real.log 7)^2 / 4)) = sharpBalancedHeadCost A := by
    dsimp [k, sharpBalancedHeadCost]
    field_simp
    ring
  rw [heq] at hm
  change |∫ t in Real.log 7..Real.log (⌊A^2⌋₊ : ℝ),
    balancedFirstPrimePrimitive t * actualXiCurvature A t| ≤ _ at hn
  simpa only [balancedFirstPrimeHead, abs_neg] using hn.trans hm

end RH16SharpBalancedFirstPrimeHead
