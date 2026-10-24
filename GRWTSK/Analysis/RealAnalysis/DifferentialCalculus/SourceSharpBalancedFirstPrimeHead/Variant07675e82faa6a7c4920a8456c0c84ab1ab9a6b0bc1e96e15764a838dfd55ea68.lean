-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SharpBalancedHeadCost.Variant2bd0721c190d61dd676b9419e3c34dc380053f41af4873650f87e27f9dcc273d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bd0721c190d61dd676b9419e3c34dc380053f41af4873650f87e27f9dcc273d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SharpBalancedHeadCost.Variant2bd0721c190d61dd676b9419e3c34dc380053f41af4873650f87e27f9dcc273d","mathematical_subject":"Analysis.Calculus","original_sha256":"2bd0721c190d61dd676b9419e3c34dc380053f41af4873650f87e27f9dcc273d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-sharp-balanced-head/attempt06/SourceSharpBalancedFirstPrimeHead.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceBalancedFirstPrimeConsumer

/-! Retain the exact lower-seven correction in the actual balanced first-prime head.
Direction and conceptual origin: grwtsk contributors.
Source-bound derivation: OpenAI Codex graph analyst. Formalization: OpenAI Codex root.
The actual signed tail witness remains supplied. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SharpBalancedHeadCost.Variant2bd0721c190d61dd676b9419e3c34dc380053f41af4873650f87e27f9dcc273d

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
    convert! ((((hasDerivAt_id t).mul (((hasDerivAt_id t).div_const 2).exp)).sub
      (((hasDerivAt_id t).add ((hasDerivAt_id t).pow 2 |>.div_const 4)).const_mul
        (Real.sqrt 7))).const_mul k) using 1
    dsimp [f]
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

private theorem log_add_one_div_le_six {A : ℝ} (hA : 91 ≤ A) :
    (Real.log A + 1) / A ≤ 6 / 91 := by
  have hp : 0 < A := by linarith
  have hl := Real.log_le_sub_one_of_pos (div_pos hp (by norm_num : (0 : ℝ) < 91))
  rw [Real.log_div hp.ne' (by norm_num : (91 : ℝ) ≠ 0)] at hl
  have hl91 : Real.log (91 : ℝ) < 5 := by
    have he := Real.log_pow (2 : ℝ) 7
    norm_num at he
    have hm := Real.log_lt_log (by norm_num : (0 : ℝ) < 91)
      (by norm_num : (91 : ℝ) < 128)
    linarith [Real.log_two_lt_d9]
  apply (div_le_div_iff₀ hp (by norm_num : (0 : ℝ) < 91)).mpr
  have hn : 0 ≤ Real.log (91 : ℝ) := Real.log_nonneg (by norm_num)
  have he : 91 * (A / 91 - 1) = A - 91 := by ring
  have hm := mul_le_mul_of_nonneg_left hl (by norm_num : (0 : ℝ) ≤ 91)
  rw [he] at hm
  nlinarith [mul_nonneg (show 0 ≤ A - 91 by linarith) hn]

private theorem log_ge_four {A : ℝ} (hA : 91 ≤ A) : 4 ≤ Real.log A := by
  have he : Real.exp (4 : ℝ) < 81 := by
    have hp := pow_lt_pow_left₀ (Real.exp_pos (1 : ℝ)).le Real.exp_one_lt_three
      (by norm_num : (4 : ℕ) ≠ 0)
    have hh : Real.exp (4 : ℝ) = Real.exp 1 ^ 4 := by
      rw [← Real.exp_nat_mul]
      norm_num
    rw [hh]
    norm_num at hp ⊢
    exact hp
  exact (Real.le_log_iff_exp_le (by linarith : 0 < A)).mpr (by linarith)

theorem sharpBalancedHeadCost_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt sharpBalancedHeadCost
      (20 * (1 - Real.log A) / A^2 +
        10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
          (Real.log 7)^2 / 2) / A^3) A := by
  have hl := Real.hasDerivAt_log hA.ne'
  unfold sharpBalancedHeadCost
  convert! (((hl.const_mul 20).div (hasDerivAt_id A) hA.ne').sub
    (((((hl.const_mul 2).add (hl.pow 2)).sub_const ((Real.log 7)^2 / 4)).const_mul
      (10 * Real.sqrt 7)).div ((hasDerivAt_id A).pow 2) (pow_ne_zero 2 hA.ne'))) using 1
  field_simp
  ring

theorem sharpBalancedHeadCost_derivative_nonpositive {A : ℝ} (hA : 91 ≤ A) :
    20 * (1 - Real.log A) / A^2 +
      10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
        (Real.log 7)^2 / 2) / A^3 ≤ 0 := by
  have hp : 0 < A := by linarith
  have hl := log_ge_four hA
  have hr := log_add_one_div_le_six hA
  have hs : Real.sqrt (7 : ℝ) < 3 :=
    (Real.sqrt_lt' (by norm_num : (0 : ℝ) < 3)).mpr (by norm_num)
  have hl0 : 0 ≤ Real.log A := by linarith
  have hla : 0 ≤ Real.log A * (Real.log A + 1) := by positivity
  have hratio : (Real.log A + 1) * 91 ≤ 6 * A :=
    (div_le_div_iff₀ hp (by norm_num : (0 : ℝ) < 91)).mp hr
  have hmul := mul_le_mul_of_nonneg_left hratio hl0
  have hsprod := mul_le_mul_of_nonneg_right hs.le hla
  have hloss : Real.sqrt 7 * (Real.log A * (Real.log A + 1)) ≤
      A * (Real.log A - 1) := by
    have hm : 18 * Real.log A ≤ 91 * (Real.log A - 1) := by linarith
    have ha := mul_le_mul_of_nonneg_left hm hp.le
    nlinarith
  have hnum : 20 * A * (1 - Real.log A) +
      10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
        (Real.log 7)^2 / 2) ≤ 0 := by
    nlinarith [Real.sqrt_nonneg (7 : ℝ), sq_nonneg (Real.log 7)]
  have he :
      20 * (1 - Real.log A) / A^2 +
        10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
          (Real.log 7)^2 / 2) / A^3 =
      (20 * A * (1 - Real.log A) +
        10 * Real.sqrt 7 * (2 * (Real.log A)^2 + 2 * Real.log A - 2 -
          (Real.log 7)^2 / 2)) / A^3 := by
    field_simp
    ring
  rw [he]
  exact div_nonpos_of_nonpos_of_nonneg hnum (by positivity)

theorem sharpBalancedHeadCost_antitoneOn : AntitoneOn sharpBalancedHeadCost (Ici 91) := by
  apply antitoneOn_of_deriv_nonpos (convex_Ici 91)
  · intro A hA
    exact (sharpBalancedHeadCost_hasDerivAt (by linarith : 0 < A)).continuousAt.continuousWithinAt
  · intro A hA
    have hp : 91 ≤ A := interior_subset hA
    exact (sharpBalancedHeadCost_hasDerivAt (by linarith : 0 < A)).differentiableAt.differentiableWithinAt
  · intro A hA
    have hp : 91 ≤ A := interior_subset hA
    rw [(sharpBalancedHeadCost_hasDerivAt (by linarith : 0 < A)).deriv]
    exact sharpBalancedHeadCost_derivative_nonpositive hp

/-- Every real source scale uses the sharper head cost at the SAME supplied radius. -/
theorem balancedFirstPrimeHead_abs_le_sharp_at_radius {Q A : ℝ}
    (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |balancedFirstPrimeHead A| ≤ sharpBalancedHeadCost Q :=
  (balancedFirstPrimeHead_abs_le_sharp (hQ.trans hQA)).trans
    (sharpBalancedHeadCost_antitoneOn hQ (hQ.trans hQA) hQA)

end RH16SharpBalancedFirstPrimeHead
