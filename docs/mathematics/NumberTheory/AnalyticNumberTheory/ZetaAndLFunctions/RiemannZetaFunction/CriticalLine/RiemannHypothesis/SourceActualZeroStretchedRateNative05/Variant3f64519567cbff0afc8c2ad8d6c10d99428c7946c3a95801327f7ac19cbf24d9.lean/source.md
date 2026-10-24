# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualZeroStretchedRateNative05.Variant3f64519567cbff0afc8c2ad8d6c10d99428c7946c3a95801327f7ac19cbf24d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c6da6d9168c3594b8762a83d5c64e9cef0208a7` · SHA-256 `f9d026d2a2fac40857ba3f0181d67428c102b686033a6bac84ae4fe7a4cb4c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpAbsReNormLe.Variant95c2dd769b4c57f7e1b758bb8c1630baef405a2a637dacb89cc7c5895b16282d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95c2dd769b4c57f7e1b758bb8c1630baef405a2a637dacb89cc7c5895b16282d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BumpAbsReNormLe.Variant95c2dd769b4c57f7e1b758bb8c1630baef405a2a637dacb89cc7c5895b16282d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"95c2dd769b4c57f7e1b758bb8c1630baef405a2a637dacb89cc7c5895b16282d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-zero-stretched-rate/SourceActualZeroStretchedRate-native05.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroNormalizedCancellation
import SourceActualZeroFreeHeadGap

/-!
The actual full zero contribution has a quantitative stretched exponential
budget on the normalized source edge scale. The complete finite low prefix
is retained separately from the genuine height dependent zero-free gap.
No unscaled signed constant cap follows from this estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BumpAbsReNormLe.Variant95c2dd769b4c57f7e1b758bb8c1630baef405a2a637dacb89cc7c5895b16282d

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

/-- The genuine middle carrier retains equality at the low boundary
and the original open upper-height convention. -/
def actualMiddleZeroHeightHead (A R : ℝ) : ℂ :=
  ∑ rho ∈ (actualZeroHeightHead_finite R).toFinset.filter
    (fun rho : (zetaZeros zetaSeam).carrier => 4 ≤ |(rho : ℂ).im|),
    ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho

/-- This exact partition loses no low zero or boundary multiplicity. -/
theorem actualZeroHeightHead_eq_low_add_middle (A R : ℝ) (hR : 4 ≤ R) :
    actualZeroHeightHead A R = actualZeroHeightHead A 4 + actualMiddleZeroHeightHead A R := by
  classical
  let F := (actualZeroHeightHead_finite R).toFinset
  have hlo : F.filter (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < 4) =
      (actualZeroHeightHead_finite 4).toFinset := by
    ext rho
    simp only [F, mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
    constructor
    · exact fun h => h.2
    · exact fun h => ⟨h.trans_le hR,h⟩
  have hhi : F.filter (fun rho : (zetaZeros zetaSeam).carrier => ¬ |(rho : ℂ).im| < 4) =
      F.filter (fun rho : (zetaZeros zetaSeam).carrier => 4 ≤ |(rho : ℂ).im|) := by
    ext rho
    simp only [mem_filter, not_lt]
  have he := sum_filter_add_sum_filter_not F
    (fun rho : (zetaZeros zetaSeam).carrier => |(rho : ℂ).im| < 4)
    (fun rho => ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)
  rw [hlo,hhi] at he
  exact he.symm

/-- The entire middle actual-zero sum uses its true reciprocal-six
multiplicity mass; the number of zeros is never substituted for that mass. -/
theorem actualMiddleZeroHeightHead_gap_bound :
    ∃ a : ℝ, a ∈ Set.Ioc 0 (1 / 2) ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualMiddleZeroHeightHead A R‖ ≤
        (actualZeroTailWeightConstant * actualZeroSixTail 4) *
          Real.exp (-2 * (a / (Real.log R) ^ 9) * A) := by
  classical
  obtain ⟨a,ha,hgap⟩ := actualCarrier_below_height_gap
  have hap : 0 < a := ha.1
  obtain ⟨A0,hA0,hcount⟩ := actualZeroSixTail_count_bound
  obtain ⟨hsm,_⟩ := hcount 4 (by norm_num)
  refine ⟨a,ha,?_⟩
  intro A R hA hR
  let F := (actualZeroHeightHead_finite R).toFinset.filter
    (fun rho : (zetaZeros zetaSeam).carrier => 4 ≤ |(rho : ℂ).im|)
  let coeff : ℝ := actualZeroTailWeightConstant *
    Real.exp (-2 * (a / (Real.log R) ^ 9) * A)
  have hc : 0 ≤ coeff := by dsimp [coeff,actualZeroTailWeightConstant]; positivity
  have hpoint (rho : (zetaZeros zetaSeam).carrier) (hrho : rho ∈ F) :
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
        (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)‖ ≤
        coeff * (((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) := by
    have ht := (mem_filter.mp hrho).2
    have hh : |(rho : ℂ).im| < R := by
      simpa only [Set.Finite.mem_toFinset,Set.mem_ofPred_eq] using (mem_filter.mp hrho).1
    have hg := hgap R (by linarith) rho (by linarith) hh
    have hlog : 0 < Real.log R := Real.log_pos (by linarith)
    have hw := actualInitialPrimeMellin_gap_scaled_norm_le A (a / (Real.log R) ^ 9)
      rho hA (by positivity) ⟨hg.1.le,hg.2.le⟩ (by linarith)
    rw [mul_left_comm,norm_mul,Complex.norm_natCast]
    exact (mul_le_mul_of_nonneg_left hw (by positivity)).trans_eq (by dsimp [coeff]; ring)
  have hmass : (∑ rho ∈ F, ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) ≤
      actualZeroSixTail 4 := by
    have he : (∑ rho ∈ F, ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) =
        ∑ rho ∈ F, if 4 ≤ |(rho : ℂ).im| then
          ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6 else 0 := by
      apply sum_congr rfl
      intro rho hrho
      rw [if_pos (mem_filter.mp hrho).2]
    rw [he]
    exact Summable.sum_le_tsum _ (fun rho _ => by split_ifs <;> positivity) hsm
  change ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
    ∑ rho ∈ F, ((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho‖ ≤ _
  rw [mul_sum]
  calc
    _ ≤ ∑ rho ∈ F, ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
        (((zetaZeros zetaSeam).mult rho : ℂ) * actualInitialPrimeMellin A rho)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ rho ∈ F, coeff *
        (((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) := sum_le_sum hpoint
    _ = coeff * (∑ rho ∈ F,
        ((zetaZeros zetaSeam).mult rho : ℝ) / |(rho : ℂ).im| ^ 6) := by rw [mul_sum]
    _ ≤ coeff * actualZeroSixTail 4 := mul_le_mul_of_nonneg_left hmass hc
    _ = _ := by dsimp [coeff]; ring

private theorem scaled_tail_uniform_bound :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ ≤ B / R ^ 4 := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroHeightTail_norm_bound
  let B : ℝ := 4 * actualZeroTailWeightConstant * A0
  refine ⟨B,by dsimp [B,actualZeroTailWeightConstant]; positivity,?_⟩
  intro A R hA hR
  have hAp : 0 < A := by linarith
  have hRp : 0 < R := by linarith
  have hlog : Real.log R + 2 ≤ 2 * R := by
    have hl := Real.log_le_sub_one_of_pos hRp
    linarith
  have hs : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real,Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul,hs]
  calc
    _ ≤ (A ^ 9 * Real.exp (-A)) *
        (2 * actualZeroTailWeightConstant * A0 * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5)) :=
      mul_le_mul_of_nonneg_left (hbound A R hA hR) (by positivity)
    _ = 2 * actualZeroTailWeightConstant * A0 * (Real.log R + 2) / R ^ 5 := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ 2 * actualZeroTailWeightConstant * A0 * (2 * R) / R ^ 5 := by
      dsimp [actualZeroTailWeightConstant]
      gcongr
    _ = B / R ^ 4 := by dsimp [B]; field_simp; ring

/-- This height partitions the genuine all-zero sum; no shifted-contour
identity at this smaller height is asserted. -/
def actualZeroStretchedHeight (A : ℝ) : ℝ := Real.exp (A ^ (1 / 10 : ℝ))

/-- The moving gap has exactly the stretched exponential exponent. -/
theorem actualZeroStretchedExponent_eq (a A : ℝ) (hA : 0 < A) :
    (a / (Real.log (actualZeroStretchedHeight A)) ^ 9) * A =
      a * A ^ (1 / 10 : ℝ) := by
  have hp : (A ^ (1 / 10 : ℝ)) ^ 10 = A := by
    rw [← Real.rpow_mul_natCast hA.le]
    norm_num
  have hx : 0 < A ^ (1 / 10 : ℝ) := Real.rpow_pos_of_pos hA _
  unfold actualZeroStretchedHeight
  rw [Real.log_exp]
  rw [← hp]
  field_simp

/-- The complete actual zero sum, including every low zero and both tail
signs, has a genuine quantitative normalized cancellation estimate. -/
theorem actualFullZeroContribution_stretched_scaled_bound :
    ∃ C c R0 : ℝ, 0 ≤ C ∧ 0 < c ∧ 1 ≤ R0 ∧ ∀ A : ℝ, R0 ≤ A →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualFullZeroContribution A‖ ≤
        C * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨K,d,Rl,hK,hd,hRl,hlo⟩ := actualLowZeroHead_scaled_exponential_bound
  obtain ⟨a,ha,hmi⟩ := actualMiddleZeroHeightHead_gap_bound
  obtain ⟨B,hB,hta⟩ := scaled_tail_uniform_bound
  have hh : Tendsto actualZeroStretchedHeight atTop atTop :=
    Real.tendsto_exp_atTop.comp (tendsto_rpow_atTop (by norm_num : (0 : ℝ) < 1 / 10))
  obtain ⟨Rh,hRh⟩ := tendsto_atTop_atTop.mp hh 4
  let c : ℝ := min d (min (2 * a) 4)
  let Cm : ℝ := actualZeroTailWeightConstant * actualZeroSixTail 4
  have hCm : 0 ≤ Cm := by
    dsimp [Cm,actualZeroTailWeightConstant,actualZeroSixTail]
    exact mul_nonneg (by positivity) (tsum_nonneg (fun rho => by split_ifs <;> positivity))
  have hc : 0 < c := lt_min hd (lt_min (by linarith [ha.1]) (by norm_num))
  have hcd : c ≤ d := min_le_left _ _
  have hca : c ≤ 2 * a := (min_le_right _ _).trans (min_le_left _ _)
  have hc4 : c ≤ 4 := (min_le_right _ _).trans (min_le_right _ _)
  refine ⟨K + Cm + B,c,max Rl Rh,by positivity,hc,hRl.trans (le_max_left _ _),?_⟩
  intro A hA
  have hAl : Rl ≤ A := (le_max_left _ _).trans hA
  have hA1 : 1 ≤ A := hRl.trans hAl
  have hAp : 0 < A := by linarith
  let x : ℝ := A ^ (1 / 10 : ℝ)
  have hx : 0 ≤ x := Real.rpow_nonneg hAp.le _
  have hxA : x ≤ A := Real.rpow_le_self_of_one_le hA1 (by norm_num)
  have hheight : 4 ≤ actualZeroStretchedHeight A := hRh A ((le_max_right _ _).trans hA)
  have helo : Real.exp (-d * A) ≤ Real.exp (-c * x) := by
    apply Real.exp_le_exp.mpr
    have hb : c * x ≤ d * A :=
      (mul_le_mul_of_nonneg_left hxA hc.le).trans
        (mul_le_mul_of_nonneg_right hcd hAp.le)
    linarith
  have hemi : Real.exp (-2 * (a / (Real.log (actualZeroStretchedHeight A)) ^ 9) * A) =
      Real.exp (-(2 * a) * x) := by
    congr 1
    have he := actualZeroStretchedExponent_eq a A hAp
    dsimp [x]
    nlinarith
  have hemib : Real.exp (-(2 * a) * x) ≤ Real.exp (-c * x) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  have heta : B / (actualZeroStretchedHeight A) ^ 4 = B * Real.exp (-4 * x) := by
    unfold actualZeroStretchedHeight
    rw [← Real.exp_nat_mul,div_eq_mul_inv,← Real.exp_neg]
    congr 1
    dsimp [x]
    ring
  have hetab : Real.exp (-4 * x) ≤ Real.exp (-c * x) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  rw [actualFullZeroContribution_eq_head_add_tail A (actualZeroStretchedHeight A) hA1,
    actualZeroHeightHead_eq_low_add_middle A (actualZeroStretchedHeight A) hheight,
    mul_add,mul_add]
  calc
    _ ≤ ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightHead A 4‖ +
        ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
          actualMiddleZeroHeightHead A (actualZeroStretchedHeight A)‖ +
        ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) *
          actualZeroHeightTail A (actualZeroStretchedHeight A)‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ K * Real.exp (-d * A) +
        Cm * Real.exp (-(2 * a) * x) + B * Real.exp (-4 * x) := by
      apply add_le_add
      · apply add_le_add (hlo A hAl)
        simpa only [hemi] using hmi A (actualZeroStretchedHeight A) hA1 hheight
      · simpa only [heta] using hta A (actualZeroStretchedHeight A) hA1 hheight
    _ ≤ K * Real.exp (-c * x) + Cm * Real.exp (-c * x) + B * Real.exp (-c * x) := by
      gcongr
    _ = _ := by ring

/-- The unchanged source quadratic value receives this actual-zero budget,
without a sign assumption on any off-axis ordinary complex square. -/
theorem actualSourceQuadraticValue_stretched_scaled_bound :
    ∃ C c R0 : ℝ, 0 ≤ C ∧ 0 < c ∧ 1 ≤ R0 ∧ ∀ A : ℝ, R0 ≤ A →
      |A ^ 9 * Real.exp (-A) * sourceQuadraticValue explicitSecondDerivative A| ≤
        C * Real.exp (-c * A ^ (1 / 10 : ℝ)) := by
  obtain ⟨C,c,R0,hC,hc,hR0,hb⟩ := actualFullZeroContribution_stretched_scaled_bound
  refine ⟨C,c,R0,hC,hc,hR0,?_⟩
  intro A hA
  have h := hb A hA
  rw [actualFullZeroContribution_eq_original_sourceQuadraticValue A (hR0.trans hA)] at h
  simpa only [← Complex.ofReal_mul,Complex.norm_real,Real.norm_eq_abs] using h

end
end FormalResearch.RiemannHypothesis.SourceActualZeroStretchedRate
```
