# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9ee4e40b06ae8952b19c8082061dabbf4ac3664` · SHA-256 `afa9c9138ff4fce7e5da926071db44fb76480d0a6774156931c44c91010fccfa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenBandJet

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# Whole-region cutoff-eight source enclosure
The finite sample error, spatial power-jet error, polynomial coefficient rounding
and actual sextic integration tail are independent terms. No cutoff-one/two saving
is moved to cutoff eight. No derivative bounds for H or sample-grid argument enter.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
open Complex Finset Set
open CenteredMellin
noncomputable section

lemma band_geometry {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖s-center‖ ≤ (5/8 : ℝ) ∧ -(s-center).re ≤ 1 := by
  have hx2 : (s.re-3/4)^2 ≤ (1/16 : ℝ) := by
    nlinarith [mul_nonneg (by linarith : 0 ≤ s.re-1/2) (by linarith : 0 ≤ 1-s.re)]
  have ht2 : (s.im-31/2)^2 ≤ (1/4 : ℝ) := by
    nlinarith [mul_nonneg (by linarith : 0 ≤ s.im-15) (by linarith : 0 ≤ 16-s.im)]
  constructor
  · apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5/8)).mp
    rw [Complex.sq_norm,Complex.normSq_apply]
    simp only [Complex.sub_re,Complex.sub_im,center,Complex.mk_re,Complex.mk_im]
    nlinarith
  · simp only [Complex.sub_re,center,Complex.mk_re]
    linarith

lemma band_shift_norm {s : ℂ} {j : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) (hj : -1 ≤ j) (hj1 : j ≤ 4) :
    ‖s+(j : ℂ)‖ ≤ (17 : ℝ) := by
  have hb : |s.re+j| ≤ (5 : ℝ) := abs_le.mpr ⟨by linarith,by linarith⟩
  have hb2 := mul_le_mul hb hb (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 5)
  have ht2 : s.im^2 ≤ (256 : ℝ) := by
    have h := mul_le_mul ht1 ht1 (by linarith : 0 ≤ s.im) (by norm_num : (0 : ℝ) ≤ 16)
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 17)).mp
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.add_re,Complex.add_im,Complex.ofReal_re,Complex.ofReal_im,add_zero]
  nlinarith [sq_abs (s.re+j)]

lemma band_last_shift_norm {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) : ‖s+5‖ ≤ (18 : ℝ) := by
  have hr : 0 ≤ s.re+5 := by linarith
  have hr1 : s.re+5 ≤ 6 := by linarith
  have hr2 := mul_le_mul hr1 hr1 hr (by norm_num : (0 : ℝ) ≤ 6)
  have ht2 : s.im^2 ≤ (256 : ℝ) := by
    have h := mul_le_mul ht1 ht1 (by linarith : 0 ≤ s.im) (by norm_num : (0 : ℝ) ≤ 16)
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 18)).mp
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.add_re,Complex.add_im,Complex.ofNat_re,Complex.ofNat_im,add_zero]
  nlinarith

lemma parameter_products {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖s-1‖ ≤ (17 : ℝ) ∧ ‖s‖ ≤ (17 : ℝ) ∧
    ‖CubicPrimitive.multiplier s‖ ≤ (17 : ℝ)^4 ∧
    ‖QuarticPrimitive.multiplier s*(s+4)‖ ≤ (17 : ℝ)^6 ∧
    ‖SexticPrimitive.multiplier s‖ ≤ (17 : ℝ)^6*18 := by
  have h (j : ℝ) (hj : -1 ≤ j) (hj1 : j ≤ 4) := band_shift_norm hx hx1 ht ht1 hj hj1
  have h0 : ‖s‖ ≤ (17 : ℝ) := by simpa using h 0 (by norm_num) (by norm_num)
  have hm : ‖s-1‖ ≤ (17 : ℝ) := by simpa using h (-1) (by norm_num) (by norm_num)
  have h1 : ‖s+1‖ ≤ (17 : ℝ) := by simpa using h 1 (by norm_num) (by norm_num)
  have h2 : ‖s+2‖ ≤ (17 : ℝ) := by simpa using h 2 (by norm_num) (by norm_num)
  have h3 : ‖s+3‖ ≤ (17 : ℝ) := by simpa using h 3 (by norm_num) (by norm_num)
  have h4 : ‖s+4‖ ≤ (17 : ℝ) := by simpa using h 4 (by norm_num) (by norm_num)
  have h5 := band_last_shift_norm hx hx1 ht ht1
  have ha4 : ‖CubicPrimitive.multiplier s‖ ≤ (17 : ℝ)^4 := by
    simp only [CubicPrimitive.multiplier,norm_mul]
    calc
      _ ≤ 17*17*17*17 := by gcongr
      _ = _ := by ring
  have ha6 : ‖QuarticPrimitive.multiplier s*(s+4)‖ ≤ (17 : ℝ)^6 := by
    simp only [QuarticPrimitive.multiplier,CubicPrimitive.multiplier,norm_mul]
    calc
      _ ≤ 17*17*17*17*17*17 := by gcongr
      _ = _ := by ring
  have ha7 : ‖SexticPrimitive.multiplier s‖ ≤ (17 : ℝ)^6*18 := by
    change ‖(QuarticPrimitive.multiplier s*(s+4))*(s+5)‖ ≤ _
    rw [norm_mul]
    exact mul_le_mul ha6 h5 (norm_nonneg _) (by positivity)
  exact ⟨hm,h0,ha4,ha6,ha7⟩

lemma weight_norm_le {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) : ‖weight s‖ ≤ (22 : ℝ) := by
  have h := parameter_products hx hx1 ht ht1
  have hm := h.1
  have h0 := h.2.1
  have h4 := h.2.2.1
  have h6 := h.2.2.2.1
  have hs := mul_le_mul h.2.1 h.1 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 17)
  have hn : ‖weight s‖ ≤ 8+‖s-1‖/2+‖s‖*‖s-1‖/96+
      ‖CubicPrimitive.multiplier s‖/(720*8^3)+
      ‖QuarticPrimitive.multiplier s*(s+4)‖/(30240*8^5) := by
    unfold weight CutoffEightJet.weight
    calc
      _ ≤ ‖(8 : ℂ)-(s-1)/2+s*(s-1)/96-CubicPrimitive.multiplier s/(720*8^3)‖+
          ‖QuarticPrimitive.multiplier s*(s+4)/(30240*8^5)‖ := norm_add_le _ _
      _ ≤ ((‖(8 : ℂ)‖+‖(s-1)/2‖)+‖s*(s-1)/96‖)+
          ‖CubicPrimitive.multiplier s/(720*8^3)‖+
          ‖QuarticPrimitive.multiplier s*(s+4)/(30240*8^5)‖ := by
        gcongr
        exact (norm_sub_le _ _).trans (add_le_add_right
          ((norm_add_le _ _).trans (add_le_add_right (norm_sub_le _ _) _)) _)
      _ = _ := by norm_num [norm_div,norm_mul]
  have hb : (8 : ℝ)+17/2+17^2/96+17^4/(720*8^3)+17^6/(30240*8^5) ≤ 22 := by norm_num
  have hc : 8+‖s-1‖/2+‖s‖*‖s-1‖/96+
      ‖CubicPrimitive.multiplier s‖/(720*8^3)+
      ‖QuarticPrimitive.multiplier s*(s+4)‖/(30240*8^5) ≤
      8+17/2+17^2/96+17^4/(720*8^3)+17^6/(30240*8^5) := by
    gcongr
  exact hn.trans (hc.trans hb)

lemma finiteModel_jet_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖SexticPrimitive.finiteModel 8 s-sourcePolynomial s‖ ≤
      17*(∑ i : Fin 8, powerError i)+22*powerError 7 := by
  have hg := band_geometry hx hx1 ht ht1
  have hp := parameter_products hx hx1 ht ht1
  have hw := weight_norm_le hx hx1 ht ht1
  have hs : ‖(∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s))-
      ∑ i : Fin 8, powerJet i s‖ ≤ ∑ i : Fin 8, powerError i := by
    rw [←Finset.sum_sub_distrib]
    exact (norm_sum_le _ _).trans (Finset.sum_le_sum (fun i _ => powerJet_enclosed i hg.1 hg.2))
  have h8 : ‖(8 : ℂ)^(-s)-powerJet 7 s‖ ≤ powerError 7 := powerJet_enclosed 7 hg.1 hg.2
  have heq : SexticPrimitive.finiteModel 8 s-sourcePolynomial s =
      (s-1)*((∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s))-
        ∑ i : Fin 8, powerJet i s)+weight s*((8 : ℂ)^(-s)-powerJet 7 s) := by
    rw [CutoffEightJet.finiteModel_eight]
    unfold sourcePolynomial
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul,norm_mul]
  exact add_le_add (mul_le_mul hp.1 hs (norm_nonneg _) (by norm_num))
    (mul_le_mul hw h8 (norm_nonneg _) (by norm_num))

lemma actual_tail_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s‖ ≤
      (17^6*18 : ℝ)/(30240*(11/2)*65536) := by
  have hp := (parameter_products hx hx1 ht ht1).2.2.2.2
  have he := SexticPrimitive.finiteModel_error (N := 8) (σ := (1/2 : ℝ))
    (by decide) (by norm_num) hx
  norm_num only [Nat.cast_ofNat] at he
  apply he.trans
  have hm := mul_le_mul hp (div_le_div_of_nonneg_right CutoffEightJet.cutoff_weight_bound (by norm_num))
    (by positivity : 0 ≤ (8 : ℝ)^(-(1/2+5 : ℝ))/(30240*(1/2+5))) (by positivity)
  convert hm using 1 <;> ring

/-- The complete uniform source enclosure; every error has its own supplier. -/
theorem source_enclosed {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (15 : ℝ) ≤ s.im) (ht1 : s.im ≤ 16) :
    ‖poleNormalizedZeta s-polynomial s‖ ≤ (1/8 : ℝ) := by
  have htail := actual_tail_error hx hx1 ht ht1
  have hmodel := finiteModel_jet_error hx hx1 ht ht1
  have hround := polynomial_rounding (band_geometry hx hx1 ht ht1).1
  calc
    _ = ‖(poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s)+
        (SexticPrimitive.finiteModel 8 s-sourcePolynomial s)+(sourcePolynomial s-polynomial s)‖ := by
      congr 1
      ring
    _ ≤ ‖poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s‖+
        ‖SexticPrimitive.finiteModel 8 s-sourcePolynomial s‖+‖sourcePolynomial s-polynomial s‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ (17^6*18 : ℝ)/(30240*(11/2)*65536)+
        (17*(∑ i : Fin 8, powerError i)+22*powerError 7)+1/1048576 :=
      add_le_add (add_le_add htail hmodel) hround
    _ ≤ 1/8 := by linarith [finite_error_budget]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.SixteenBandJet
```
