# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualZeroStretchedRateNative02.Variant989116e4cf319a54c2cfdabdc2d442151f5bb6cd0d33b9be28b8ef21a21ce529

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d16a3ba234ae999553dc2f3c78e03cced98becf` · SHA-256 `97b4a53a0e560f250ef17268f2336586cb24b0af065885a736d2dab6792041dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpAbsReNormLe.Variantdf248e43d022cb978ed2e430d9929de4e9bd13895303b5fabb0d4ba6367eb95e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df248e43d022cb978ed2e430d9929de4e9bd13895303b5fabb0d4ba6367eb95e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BumpAbsReNormLe.Variantdf248e43d022cb978ed2e430d9929de4e9bd13895303b5fabb0d4ba6367eb95e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"df248e43d022cb978ed2e430d9929de4e9bd13895303b5fabb0d4ba6367eb95e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-zero-stretched-rate/SourceActualZeroStretchedRate-native02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroNormalizedCancellation
import SourceActualZeroFreeHeadGap

/-!
The actual full zero contribution has a quantitative stretched exponential
budget on the normalized source edge scale. The complete finite low prefix
is retained separately from the genuine height dependent zero-free gap.
No unscaled signed constant cap follows from this estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpAbsReNormLe.Variantdf248e43d022cb978ed2e430d9929de4e9bd13895303b5fabb0d4ba6367eb95e

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroStretchedRate
open Zeta23 MeasureTheory Set Finset Filter
open scoped Topology
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceActualZeroTailBudget
open SourceActualBumpMovingHeight
open SourceActualFullZeroContour SourceActualZeroTailCount
open SourceActualZeroNormalizedCancellation SourceActualZeroFreeHeadGap
open ActualCriticalOrdinateBudget SourceActualZeroArithmeticDictionary
open SourceActualArchimedeanUpper
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

private theorem bump_abs_re_norm_le (z : ℂ) (hz : 1 ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤ 204288 * Real.exp |z.re| / ‖z‖ ^ 5 := by
  by_cases hr : 0 ≤ z.re
  · simpa only [abs_of_nonneg hr] using actual_bump_vertical_norm_le z hr hz
  · have hn : 0 ≤ (-z).re := by simp only [Complex.neg_re]; linarith
    have hb := actual_bump_vertical_norm_le (-z) hn (by simpa only [norm_neg] using hz)
    simpa only [bump_laplace_even, norm_neg, Complex.neg_re,
      abs_of_neg (lt_of_not_ge hr)] using hb

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

/-- The actual ordinary complex weight retains the exponential improvement
from a genuine two-sided gap in the true zero strip. -/
theorem actualInitialPrimeMellin_gap_scaled_norm_le (A d : ℝ) (s : ℂ)
    (hA : 1 ≤ A) (hd : 0 ≤ d) (hs : d ≤ s.re ∧ s.re ≤ 1 - d)
    (ht : 1 ≤ |s.im|) :
    ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualInitialPrimeMellin A s‖ ≤
      actualZeroTailWeightConstant * Real.exp (-2 * d * A) / |s.im| ^ 6 := by
  have hAp : 0 < A := by linarith
  have hstrip : 0 ≤ s.re ∧ s.re ≤ 1 := ⟨by linarith [hs.1],by linarith [hs.2]⟩
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = A * (s.re - 1 / 2) := by simp [z, Complex.mul_re]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_pos hAp] using Complex.abs_im_le_norm z
  have hz : 1 ≤ ‖z‖ := by nlinarith
  have hsr : |s.re - 1 / 2| ≤ 1 / 2 - d := abs_le.mpr ⟨by linarith,by linarith⟩
  have hr : |z.re| ≤ A * (1 / 2 - d) := by
    rw [hzr, abs_mul, abs_of_pos hAp]
    exact mul_le_mul_of_nonneg_left hsr hAp.le
  have hp : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  have hb : ‖bumpLaplace z‖ ≤
      204288 * Real.exp (A * (1 / 2 - d)) / (A ^ 5 * |s.im| ^ 5) := by
    refine (bump_abs_re_norm_le z hz).trans ?_
    apply div_le_div₀ (by positivity)
      (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hr) (by norm_num))
      (by positivity) hp
  have hZ := source_normalization_pos A hA
  have hZl := actualBumpNormalization_lower A hA
  have hweight : ‖actualInitialPrimeMellin A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace z‖ ^ 2 := by
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    dsimp [z]
    ring
  have hu : ‖actualInitialPrimeMellin A s‖ ≤
      (A / (4096 / 109395 : ℝ)) * (4 * |s.im| ^ 4) *
        (204288 * Real.exp (A * (1 / 2 - d)) / (A ^ 5 * |s.im| ^ 5)) ^ 2 := by
    rw [hweight]
    have hh := pole_norm_on_strip_le s hstrip ht
    gcongr
  have he : Real.exp (A * (1 / 2 - d)) ^ 2 =
      Real.exp (2 * (A * (1 / 2 - d))) := by
    rw [← Real.exp_nat_mul]
    congr 1
  have hscl : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real, Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul, hscl]
  apply (mul_le_mul_of_nonneg_left hu (by positivity)).trans_eq
  rw [div_pow, mul_pow, he]
  have heq : -2 * d * A = -A + 2 * (A * (1 / 2 - d)) := by ring
  rw [heq, Real.exp_add]
  dsimp [actualZeroTailWeightConstant]
  field_simp

private theorem finite_actual_head_exp_bound
    (s : Finset (zetaZeros zetaSeam).carrier) :
    ∃ K d R : ℝ, 0 ≤ K ∧ 0 < d ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
        ∑ rho ∈ s, ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho‖ ≤
        K * Real.exp (-d * A) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    refine ⟨0,1,1,by norm_num,by norm_num,le_rfl,?_⟩
    intro A _hA
    simp only [Finset.sum_empty, mul_zero, norm_zero, zero_mul, le_refl]
  | @insert rho s hnot ih =>
    obtain ⟨K,d,R,hK,hd,hR,hbound⟩ := ih
    have hn : (rho : ℂ) ≠ 1 / 2 := by
      intro h
      exact actual_zeta_half_ne_zero (h ▸ rho.2.1)
    obtain ⟨Kr,Rr,hKr,hRr,hbr⟩ := actualInitialPrimeMellin_scaled_norm_bound rho hn
    let dr : ℝ := 1 - 2 * |(rho : ℂ).re - 1 / 2|
    have hdr : 0 < dr := by
      have hh : |(rho : ℂ).re - 1 / 2| < 1 / 2 :=
        abs_lt.mpr ⟨by linarith [rho.2.2.1],by linarith [rho.2.2.2]⟩
      dsimp [dr]
      linarith
    let mr : ℝ := ((zetaZeros zetaSeam).mult rho : ℝ)
    refine ⟨mr * Kr + K,min dr d,max Rr R,by dsimp [mr]; positivity,
      lt_min hdr hd,hRr.trans (le_max_left _ _),?_⟩
    intro A hA
    have hA1 : 1 ≤ A := hR.trans ((le_max_right _ _).trans hA)
    have he1 : Real.exp (-dr * A) ≤ Real.exp (-(min dr d) * A) := by
      apply Real.exp_le_exp.mpr
      nlinarith [min_le_left dr d]
    have he2 : Real.exp (-d * A) ≤ Real.exp (-(min dr d) * A) := by
      apply Real.exp_le_exp.mpr
      nlinarith [min_le_right dr d]
    rw [sum_insert hnot, mul_add]
    calc
      _ ≤ ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
          (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)‖ +
          ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
            ∑ r ∈ s, ((zetaZeros zetaSeam).mult r : ℂ) * actualInitialPrimeMellin A r‖ :=
        norm_add_le _ _
      _ ≤ mr * (Kr * Real.exp (-dr * A)) + K * Real.exp (-d * A) := by
        gcongr
        · rw [mul_left_comm, norm_mul, Complex.norm_natCast]
          exact mul_le_mul_of_nonneg_left (hbr A ((le_max_left _ _).trans hA))
            (by positivity)
        · exact hbound A ((le_max_right _ _).trans hA)
      _ ≤ mr * (Kr * Real.exp (-(min dr d) * A)) +
          K * Real.exp (-(min dr d) * A) := by gcongr
      _ = _ := by ring

/-- The entire low actual-zero prefix, including possible zero ordinates,
has a genuine finite common exponential rate. -/
theorem actualLowZeroHead_scaled_exponential_bound :
    ∃ K d R : ℝ, 0 ≤ K ∧ 0 < d ∧ 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A 4‖ ≤
        K * Real.exp (-d * A) := by
  simpa only [actualZeroHeightHead] using
    finite_actual_head_exp_bound (actualZeroHeightHead_finite 4).toFinset

end
end FormalResearch.RiemannHypothesis.SourceActualZeroStretchedRate
```
