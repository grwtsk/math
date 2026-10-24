# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b69a61ac7b21eda82d7264213ce9b7bc4724a33e` · SHA-256 `b2d1d354c81800d2cd50321903c0cadbe70dccaf9988e0dca1170c468e3b343e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
import GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

/-! # Actual first-Riesz zero tail and finite-head differentiation

The canonical divisor gives an absolutely convergent first-Riesz zero sum,
with a count-derived tail. Every finite head differentiates to the pointwise
zero head. No derivative of the infinite sum is asserted. Identifying the
Riesz zero sum plus all correction terms with the arithmetic Riesz source
is a separate explicit-formula obligation.
-/

set_option autoImplicit false
noncomputable section
open Filter
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Series.ScaledHeightCountingTail
open PointwiseFiniteZeroHead

def firstRieszZeroKernel (x : ℝ) (ρ : ℂ) : ℂ :=
  logPower x (ρ + 1) / (ρ * (ρ + 1))

theorem hasDerivAt_firstRieszZeroKernel (x : ℝ) (hx : 0 < x)
    (ρ : ℂ) (hρ : ρ ≠ 0) (hρ1 : ρ + 1 ≠ 0) :
    HasDerivAt (fun t => firstRieszZeroKernel t ρ) (pointwiseZeroTerm x ρ) x := by
  have hd := (hasDerivAt_logPower hx (ρ + 1)).div_const (ρ * (ρ + 1))
  have heq : ((ρ + 1) * density (ρ + 1) x) / (ρ * (ρ + 1)) = pointwiseZeroTerm x ρ := by
    simp only [density, add_sub_cancel_right, pointwiseZeroTerm]
    field_simp
  simpa only [firstRieszZeroKernel, heq] using hd

def finiteRieszZeroHead (x T : ℝ) : ℂ :=
  -(∑ z ∈ heightHead T, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1)

theorem hasDerivAt_finiteRieszZeroHead (x T : ℝ) (hx : 0 < x) :
    HasDerivAt (fun t => finiteRieszZeroHead t T) (finiteHeightZeroHead x T) x := by
  have hρ1 (z : ZeroPoint) : z.1 + 1 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    have hs := (point_mem_strip z).1
    simp only [Complex.add_re, Complex.one_re, Complex.zero_re] at hr
    linarith
  have hd := (HasDerivAt.sum (u := heightHead T) (fun z _ =>
      (hasDerivAt_firstRieszZeroKernel x hx z.1 z.2.ne_zero (hρ1 z)).const_mul
        (multiplicity z : ℂ))).neg
  convert! hd using 1
  funext t
  simp [finiteRieszZeroHead, Finset.sum_apply]

theorem norm_firstRieszZeroKernel_le (x : ℝ) (hx : 1 < x)
    (z : ZeroPoint) (him : z.1.im ≠ 0) :
    ‖firstRieszZeroKernel x z.1‖ ≤ Real.exp (2 * Real.log x) / (height z) ^ 2 := by
  have hnum : ‖logPower x (z.1 + 1)‖ ≤ Real.exp (2 * Real.log x) := by
    apply norm_logPower_le hx.le
    have hr := (point_mem_strip z).2
    simp only [Complex.add_re, Complex.one_re]
    linarith
  have hnorm : z.1.im ^ 2 ≤ ‖z.1‖ * ‖z.1 + 1‖ := by
    have ha := Complex.abs_im_le_norm z.1
    have hb : |z.1.im| ≤ ‖z.1 + 1‖ := by simpa using Complex.abs_im_le_norm (z.1 + 1)
    simpa only [← sq, sq_abs] using mul_le_mul ha hb (abs_nonneg _) (norm_nonneg _)
  rw [firstRieszZeroKernel, norm_div, norm_mul, height, sq_abs]
  exact (div_le_div_of_nonneg_right hnum (mul_nonneg (norm_nonneg _) (norm_nonneg _))).trans
    (div_le_div_of_nonneg_left (Real.exp_pos _).le (sq_pos_of_ne_zero him) hnorm)

def firstRieszTailBudget (x T : ℝ) : ℝ :=
  (Real.exp (2 * Real.log x) * countingCoefficient) * inverseSquareBudget T

theorem firstRiesz_complement_summable_and_bound (x T : ℝ) (hx : 1 < x) (hT : 2 ≤ T) :
    Summable (fun z : {z : ZeroPoint // z ∉ heightHead T} =>
      ‖(multiplicity z.1 : ℂ) * firstRieszZeroKernel x z.1.1‖) ∧
    Summable (fun z : {z : ZeroPoint // z ∉ heightHead T} =>
      (multiplicity z.1 : ℂ) * firstRieszZeroKernel x z.1.1) ∧
    (∑' z : {z : ZeroPoint // z ∉ heightHead T},
      ‖(multiplicity z.1 : ℂ) * firstRieszZeroKernel x z.1.1‖) ≤ firstRieszTailBudget x T := by
  classical
  let e : {z : ZeroPoint // z ∉ heightHead T} ↪ ZeroPoint := ⟨Subtype.val, Subtype.val_injective⟩
  have hlower (z : {z : ZeroPoint // z ∉ heightHead T}) : T < height z.1 :=
    height_gt_of_not_mem_head T z.1 z.2
  have hcount : ∀ S : Finset {z : ZeroPoint // z ∉ heightHead T}, ∀ t, T ≤ t →
      finiteCountingMass S (fun z => height z.1) (fun z => (multiplicity z.1 : ℝ)) t ≤
        countingCoefficient * (t * Real.log t) := by
    intro S t ht
    have hc := finiteCountingMass_high_le (S.map e) t (hT.trans ht) (by
      intro z hz
      obtain ⟨v, _, rfl⟩ := Finset.mem_map.mp hz
      exact hT.trans_lt (hlower v))
    rw [finiteCountingMass_map] at hc
    exact hc
  have hdom (z : {z : ZeroPoint // z ∉ heightHead T}) :
      ‖(multiplicity z.1 : ℂ) * firstRieszZeroKernel x z.1.1‖ ≤
        Real.exp (2 * Real.log x) * ((multiplicity z.1 : ℝ) / (height z.1) ^ 2) := by
    have him : z.1.1.im ≠ 0 := by
      intro he
      have ht := hlower z
      simp only [height, he, abs_zero] at ht
      linarith
    rw [norm_mul, Complex.norm_natCast]
    calc
      _ ≤ (multiplicity z.1 : ℝ) *
          (Real.exp (2 * Real.log x) / (height z.1) ^ 2) :=
        mul_le_mul_of_nonneg_left (norm_firstRieszZeroKernel_le x hx z.1 him) (Nat.cast_nonneg _)
      _ = _ := by ring
  have hout := dominated_family_scaled (fun z : {z : ZeroPoint // z ∉ heightHead T} => height z.1)
    (fun z => (multiplicity z.1 : ℝ))
    (fun z => (multiplicity z.1 : ℂ) * firstRieszZeroKernel x z.1.1)
    T (Real.exp (2 * Real.log x)) countingCoefficient (by linarith) (Real.exp_pos _).le
    countingCoefficient_pos (fun z => Nat.cast_nonneg _) hlower hcount hdom
  exact ⟨hout.1, hout.2.1, hout.2.2⟩

theorem firstRiesz_absolute_summable (x : ℝ) (hx : 1 < x) :
    Summable (fun z : ZeroPoint => ‖(multiplicity z : ℂ) * firstRieszZeroKernel x z.1‖) ∧
      Summable (fun z : ZeroPoint => (multiplicity z : ℂ) * firstRieszZeroKernel x z.1) := by
  classical
  have ht := firstRiesz_complement_summable_and_bound x 2 hx (by norm_num)
  have hn : Summable (fun z : ZeroPoint =>
      ‖(multiplicity z : ℂ) * firstRieszZeroKernel x z.1‖) :=
    (heightHead 2).summable_compl_iff.mp ht.1
  exact ⟨hn, hn.of_norm⟩

theorem norm_firstRiesz_full_sub_head_le (x T : ℝ) (hx : 1 < x) (hT : 2 ≤ T) :
    ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1) -
      ∑ z ∈ heightHead T, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1‖ ≤
        firstRieszTailBudget x T := by
  classical
  let f : ZeroPoint → ℂ := fun z => (multiplicity z : ℂ) * firstRieszZeroKernel x z.1
  have hs : Summable f := (firstRiesz_absolute_summable x hx).2
  have ht := firstRiesz_complement_summable_and_bound x T hx hT
  have hcomp : (∑' z : Set.Elem ((heightHead T : Set ZeroPoint)ᶜ), f z.1) =
      ∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1 := by
    let e : Set.Elem ((heightHead T : Set ZeroPoint)ᶜ) ≃
        {z : ZeroPoint // z ∉ heightHead T} := Equiv.subtypeEquivRight (by intro z; simp)
    exact e.tsum_eq (fun z : {z : ZeroPoint // z ∉ heightHead T} => f z.1)
  have he : (∑' z, f z) - (∑ z ∈ heightHead T, f z) =
      ∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1 := by
    rw [← hs.sum_add_tsum_compl (s := heightHead T), hcomp]
    ring
  change ‖(∑' z, f z) - (∑ z ∈ heightHead T, f z)‖ ≤ _
  rw [he]
  exact (norm_tsum_le_tsum_norm ht.1).trans ht.2.2

def fullRieszZeroValue (x : ℝ) : ℂ :=
  -(∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1)

theorem norm_fullRieszZeroValue_sub_head (x T : ℝ) (hx : 1 < x) (hT : 2 ≤ T) :
    ‖fullRieszZeroValue x - finiteRieszZeroHead x T‖ ≤ firstRieszTailBudget x T := by
  have heq : fullRieszZeroValue x - finiteRieszZeroHead x T =
      -((∑' z : ZeroPoint, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1) -
        ∑ z ∈ heightHead T, (multiplicity z : ℂ) * firstRieszZeroKernel x z.1) := by
    unfold fullRieszZeroValue finiteRieszZeroHead
    ring
  rw [heq, norm_neg]
  exact norm_firstRiesz_full_sub_head_le x T hx hT

def rieszUnsmoothingTailBudget (x h T : ℝ) : ℝ :=
  (firstRieszTailBudget (x + h) T + firstRieszTailBudget (x - h) T) / (2 * h)

/-- A derived tail for the TWO-POINT Riesz quotient, not yet the infinite
unsmoothed zero series. Radius amplification and both endpoint errors remain. -/
theorem norm_symmetricRiesz_zero_tail (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    ‖(fullRieszZeroValue (x + h) - fullRieszZeroValue (x - h)) / ((2 * h : ℝ) : ℂ) -
      (finiteRieszZeroHead (x + h) T - finiteRieszZeroHead (x - h) T) / ((2 * h : ℝ) : ℂ)‖ ≤
      rieszUnsmoothingTailBudget x h T := by
  have hp := norm_fullRieszZeroValue_sub_head (x + h) T (by linarith) hT
  have hm := norm_fullRieszZeroValue_sub_head (x - h) T ha hT
  have htri := (norm_sub_le
    (fullRieszZeroValue (x + h) - finiteRieszZeroHead (x + h) T)
    (fullRieszZeroValue (x - h) - finiteRieszZeroHead (x - h) T)).trans (add_le_add hp hm)
  rw [← sub_div, norm_div]
  have hnum : ‖(fullRieszZeroValue (x + h) - fullRieszZeroValue (x - h)) -
      (finiteRieszZeroHead (x + h) T - finiteRieszZeroHead (x - h) T)‖ ≤
      firstRieszTailBudget (x + h) T + firstRieszTailBudget (x - h) T := by
    calc
      _ = ‖(fullRieszZeroValue (x + h) - finiteRieszZeroHead (x + h) T) -
          (fullRieszZeroValue (x - h) - finiteRieszZeroHead (x - h) T)‖ := by congr 1; ring
      _ ≤ _ := htri
  simpa [rieszUnsmoothingTailBudget, Complex.norm_real, abs_of_pos hh] using
    div_le_div_of_nonneg_right hnum (show 0 ≤ 2 * h by positivity)

theorem firstRieszTailBudget_tendsto_zero (x : ℝ) :
    Tendsto (firstRieszTailBudget x) atTop (𝓝 0) := by
  have hl : Tendsto (fun T : ℝ => Real.log T / T) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero
  have hi : Tendsto (fun T : ℝ => (1 : ℝ) / T) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop tendsto_id
  have ht := (hl.add hi).const_mul (2 * Real.exp (2 * Real.log x) * countingCoefficient)
  convert ht using 1
  · funext T
    unfold firstRieszTailBudget inverseSquareBudget
    ring
  · simp

/-- Fixed radius only. This does not assert uniformity as h tends to zero. -/
theorem rieszUnsmoothingTailBudget_tendsto_zero (x h : ℝ) :
    Tendsto (rieszUnsmoothingTailBudget x h) atTop (𝓝 0) := by
  change Tendsto (fun T : ℝ =>
    (firstRieszTailBudget (x + h) T + firstRieszTailBudget (x - h) T) / (2 * h)) atTop (𝓝 0)
  simpa only [add_zero, zero_div] using
    ((firstRieszTailBudget_tendsto_zero (x + h)).add
      (firstRieszTailBudget_tendsto_zero (x - h))).div_const (2 * h)

end GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
```
