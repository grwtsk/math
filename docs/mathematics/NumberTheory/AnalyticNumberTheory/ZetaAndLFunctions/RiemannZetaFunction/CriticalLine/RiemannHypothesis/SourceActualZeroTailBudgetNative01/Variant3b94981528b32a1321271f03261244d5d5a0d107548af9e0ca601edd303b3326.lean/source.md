# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualZeroTailBudgetNative01.Variant3b94981528b32a1321271f03261244d5d5a0d107548af9e0ca601edd303b3326

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c77b85aa5b4b1e9ddf7831e964a84d939db7f07e` · SHA-256 `14507be22ed70a825ab73faea7e932c0256d274c723491c8f05c5c6cd51eff85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpVerticalAbsReNormLe.Variantd763d95a45ee843e33ae00804321e1187c3f863e333d379c9848fe9c8eda4e22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d763d95a45ee843e33ae00804321e1187c3f863e333d379c9848fe9c8eda4e22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BumpVerticalAbsReNormLe.Variantd763d95a45ee843e33ae00804321e1187c3f863e333d379c9848fe9c8eda4e22","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d763d95a45ee843e33ae00804321e1187c3f863e333d379c9848fe9c8eda4e22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualZeroTailBudget-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroTailCount

/-!
Actual all-zero weights at a genuine moving height. Every analytic multiplicity and both
ordinate signs are retained. The original ordinary complex square is estimated by its norm
only for the omitted tail. This supplies no sign or uniform bound for the finite zero head.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpVerticalAbsReNormLe.Variantd763d95a45ee843e33ae00804321e1187c3f863e333d379c9848fe9c8eda4e22

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
  have h2 : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero]
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

end
end FormalResearch.RiemannHypothesis.SourceActualZeroTailBudget
```
