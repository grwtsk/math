-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpVerticalAbsReNormLe.Variant05e8bcc3ee76ba1b63aec1f25bb4b7914078dfc734c8b9a685d238fc0ac00552","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05e8bcc3ee76ba1b63aec1f25bb4b7914078dfc734c8b9a685d238fc0ac00552","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BumpVerticalAbsReNormLe.Variant05e8bcc3ee76ba1b63aec1f25bb4b7914078dfc734c8b9a685d238fc0ac00552","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"05e8bcc3ee76ba1b63aec1f25bb4b7914078dfc734c8b9a685d238fc0ac00552","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualZeroTailBudget-native03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroTailCount

/-!
Actual all-zero weights at a genuine moving height. Every analytic multiplicity and both
ordinate signs are retained. The original ordinary complex square is estimated by its norm
only for the omitted tail. This supplies no sign or uniform bound for the finite zero head.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpVerticalAbsReNormLe.Variant05e8bcc3ee76ba1b63aec1f25bb4b7914078dfc734c8b9a685d238fc0ac00552

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroTailBudget
open Zeta23 MeasureTheory Set Finset
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualBumpMellinLineBudget SourceActualBumpMovingHeight
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualFullZeroContour SourceActualZeroTailCount
noncomputable section

private theorem bump_vertical_abs_re_norm_le (z : ℂ) (hz : 1 ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤ 204288 * Real.exp |z.re| / ‖z‖ ^ 5 := by
  by_cases hr : 0 ≤ z.re
  · simpa only [abs_of_nonneg hr] using actual_bump_vertical_norm_le z hr hz
  · have hn : 0 ≤ (-z).re := by simp only [Complex.neg_re]; linarith
    have hb := actual_bump_vertical_norm_le (-z) hn (by simpa only [norm_neg] using hz)
    simpa only [bump_laplace_even, norm_neg, Complex.neg_re,
      abs_of_neg (lt_of_not_ge hr)] using hb

private theorem bump_on_strip_norm_le (A : ℝ) (s : ℂ) (hA : 1 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 1 ≤ |s.im|) :
    ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      204288 * Real.exp (A / 2) / (A ^ 5 * |s.im| ^ 5) := by
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = A * (s.re - 1 / 2) := by simp [z, Complex.mul_re]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hz : 1 ≤ ‖z‖ := by nlinarith
  have hr : |z.re| ≤ A / 2 := by
    rw [hzr]
    apply abs_le.mpr
    constructor <;> nlinarith [hs.1, hs.2]
  have hp : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  calc
    _ ≤ 204288 * Real.exp |z.re| / ‖z‖ ^ 5 := bump_vertical_abs_re_norm_le z hz
    _ ≤ 204288 * Real.exp (A / 2) / (A ^ 5 * |s.im| ^ 5) := by
      apply div_le_div₀ (by positivity)
        (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hr) (by norm_num))
        (by positivity) hp

private theorem pole_norm_on_strip_le (s : ℂ) (hs : 0 ≤ s.re ∧ s.re ≤ 1)
    (ht : 1 ≤ |s.im|) : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ 4 * |s.im| ^ 4 := by
  have h1 : ‖s‖ ^ 2 = s.re ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    ring
  have h2 : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero]
    ring
  have ht2 : 1 ≤ s.im ^ 2 := by nlinarith [sq_abs s.im]
  have hs2 : s.re ^ 2 ≤ 1 := by nlinarith [hs.1, hs.2]
  have hs21 : (s.re - 1) ^ 2 ≤ 1 := by nlinarith [hs.1, hs.2]
  rw [h1, h2]
  calc
    _ ≤ (2 * s.im ^ 2) * (2 * s.im ^ 2) :=
      mul_le_mul (by linarith) (by linarith) (by positivity) (by positivity)
    _ = _ := by
      have he : |s.im| ^ 4 = s.im ^ 4 := by nlinarith [sq_abs s.im]
      rw [he]
      ring

/-- The literal actual source weight on the whole zero strip, with its original normalization. -/
theorem actualInitialPrimeMellin_strip_norm_le (A : ℝ) (s : ℂ) (hA : 1 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 1 ≤ |s.im|) :
    ‖actualInitialPrimeMellin A s‖ ≤
      4 * (204288 : ℝ) ^ 2 * Real.exp A /
        (sourceNormalization A * A ^ 9 * |s.im| ^ 6) := by
  have hZ := source_normalization_pos A hA
  have hb := bump_on_strip_norm_le A s hA hs ht
  have hp := pole_norm_on_strip_le s hs ht
  have he : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
  have hn : ‖bumpMellinWeight A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  rw [hn]
  calc
    _ ≤ (A / sourceNormalization A) * (4 * |s.im| ^ 4) *
        (204288 * Real.exp (A / 2) / (A ^ 5 * |s.im| ^ 5)) ^ 2 := by gcongr
    _ = _ := by
      rw [div_pow, mul_pow, he]
      have hA0 : A ≠ 0 := by linarith
      have ht0 : |s.im| ≠ 0 := by linarith
      field_simp

/-- A fixed actual source tail constant using the independently proved normalization lower bound. -/
def actualZeroTailWeightConstant : ℝ :=
  4 * (204288 : ℝ) ^ 2 * 109395 / 4096

/-- The omitted actual all-zero series, including equality at either ordinate boundary. -/
def actualZeroHeightTail (A R : ℝ) : ℂ :=
  ∑' ρ : (zetaZeros zetaSeam).carrier,
    if R ≤ |(ρ : ℂ).im| then
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0

/-- The actual open-height head is a genuine finite set. -/
theorem actualZeroHeightHead_finite (R : ℝ) :
    {ρ : (zetaZeros zetaSeam).carrier | |(ρ : ℂ).im| < R}.Finite := by
  have hf := Set.Finite.preimage (f := fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ))
    (show Set.InjOn (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ))
      ((fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ)) ⁻¹'
        (zetaZeros zetaSeam).window (-R) R) from Subtype.val_injective.injOn)
    ((zetaZeros zetaSeam).finite_window (-R) R)
  apply hf.subset
  intro ρ hρ
  exact ⟨ρ.2, (abs_lt.mp hρ).1, (abs_lt.mp hρ).2.le⟩

/-- The literal finite actual zero head, with every source multiplicity and ordinary weight. -/
def actualZeroHeightHead (A R : ℝ) : ℂ :=
  ∑ ρ ∈ (actualZeroHeightHead_finite R).toFinset,
    ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ

/-- The omitted tail is genuinely summable before any norm estimate. -/
theorem actualZeroHeightTail_summable (A R : ℝ) (hA : 1 ≤ A) :
    Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
      if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0) := by
  apply (actualFullZeroContribution_summable A hA).norm.of_norm_bounded
  intro ρ
  split_ifs <;> simp

/-- Full actual zero contribution equals its finite open-height head plus both closed tails. -/
theorem actualFullZeroContribution_eq_head_add_tail (A R : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A = actualZeroHeightHead A R + actualZeroHeightTail A R := by
  classical
  let head : (zetaZeros zetaSeam).carrier → ℂ := fun ρ =>
    if |(ρ : ℂ).im| < R then
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0
  have hhead : Summable head := summable_of_ne_finset_zero
    (s := (actualZeroHeightHead_finite R).toFinset) (by
      intro ρ hρ
      have hn : ¬ |(ρ : ℂ).im| < R := by simpa only [Set.Finite.mem_toFinset] using hρ
      simp only [head, hn, if_false])
  have hs : (∑' ρ, head ρ) = actualZeroHeightHead A R := by
    rw [tsum_eq_sum (s := (actualZeroHeightHead_finite R).toFinset) (by
      intro ρ hρ
      have hn : ¬ |(ρ : ℂ).im| < R := by simpa only [Set.Finite.mem_toFinset] using hρ
      simp only [head, hn, if_false])]
    unfold actualZeroHeightHead
    apply sum_congr rfl
    intro ρ hρ
    simp only [head, Set.Finite.mem_toFinset.mp hρ, if_true]
  rw [← hs, ← hhead.tsum_add (actualZeroHeightTail_summable A R hA)]
  unfold actualFullZeroContribution
  apply tsum_congr
  intro ρ
  by_cases hρ : |(ρ : ℂ).im| < R
  · simp only [head, hρ, not_le.mpr hρ, if_true, if_false, add_zero]
  · simp only [head, hρ, le_of_not_gt hρ, if_true, if_false, zero_add]

/-- All omitted zero multiplicities have an explicit uniform-in-A tail budget. -/
theorem actualZeroHeightTail_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        2 * actualZeroTailWeightConstant * A0 * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5) := by
  obtain ⟨A0, hA0, hcount⟩ := actualZeroSixTail_count_bound
  refine ⟨A0, hA0, fun A R hA hR => ?_⟩
  obtain ⟨hsm, hb⟩ := hcount R hR
  have hZ := source_normalization_pos A hA
  have hZl := actualBumpNormalization_lower A hA
  let coeff : ℝ := actualZeroTailWeightConstant * Real.exp A / A ^ 9
  have hc : 0 ≤ coeff := by dsimp [coeff, actualZeroTailWeightConstant]; positivity
  have hpoint (ρ : (zetaZeros zetaSeam).carrier) :
      ‖if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0‖ ≤
      coeff * (if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) := by
    by_cases hρ : R ≤ |(ρ : ℂ).im|
    · simp only [hρ, if_true, norm_mul, Complex.norm_natCast]
      have hw := actualInitialPrimeMellin_strip_norm_le A ρ hA
        ((zetaZeros zetaSeam).strip _ ρ.2) (show 1 ≤ |(ρ : ℂ).im| by linarith)
      have hn : ‖actualInitialPrimeMellin A ρ‖ ≤ coeff / |(ρ : ℂ).im| ^ 6 := by
        refine hw.trans ?_
        dsimp [coeff, actualZeroTailWeightConstant]
        have hh : (sourceNormalization A)⁻¹ ≤ (4096 / 109395 : ℝ)⁻¹ :=
          inv_anti₀ (by norm_num) hZl
        have hm := mul_le_mul_of_nonneg_right hh
          (show 0 ≤ 4 * (204288 : ℝ) ^ 2 * Real.exp A / (A ^ 9 * |(ρ : ℂ).im| ^ 6)
            by positivity)
        convert hm using 1 <;> ring
      have hh := mul_le_mul_of_nonneg_left hn
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) by positivity)
      convert hh using 1 <;> ring
    · simp only [hρ, if_false, norm_zero, mul_zero, le_refl]
  have ht := tsum_of_norm_bounded (hsm.mul_left coeff).hasSum hpoint
  unfold actualZeroHeightTail
  calc
    _ ≤ coeff * actualZeroSixTail R := by
      simpa only [tsum_mul_left, actualZeroSixTail] using ht
    _ ≤ coeff * (2 * A0 * (Real.log R + 2) / R ^ 5) :=
      mul_le_mul_of_nonneg_left hb hc
    _ = _ := by dsimp [coeff]; ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroTailBudget
