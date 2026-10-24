# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `163d8bf9bf46cb3e9d41d04ce14a90aa8d3efc97` · SHA-256 `ce0e1f71967f4419fff7ac700d0e7b799625e2086c62c0c6e398f2dd62cfe4f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetData

set_option autoImplicit false
set_option maxRecDepth 8192

/-!
# Whole-region cutoff-eight source enclosure
The finite sample error, spatial power-jet error, polynomial coefficient rounding
and actual sextic integration tail are independent terms. No cutoff-one/two saving
is moved to cutoff eight. No derivative bounds for H or sample-grid argument enter.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffEightJet
open Complex Finset Set
open CenteredMellin
noncomputable section

lemma band_geometry {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    ‖s-center‖ ≤ (5/8 : ℝ) ∧ -(s-center).re ≤ 1 := by
  have hx2 : (s.re-3/4)^2 ≤ (1/16 : ℝ) := by
    nlinarith [mul_nonneg (by linarith : 0 ≤ s.re-1/2) (by linarith : 0 ≤ 1-s.re)]
  have ht2 : (s.im-27/2)^2 ≤ (1/4 : ℝ) := by
    nlinarith [mul_nonneg (by linarith : 0 ≤ s.im-13) (by linarith : 0 ≤ 14-s.im)]
  constructor
  · apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5/8)).mp
    rw [Complex.sq_norm,Complex.normSq_apply]
    simp only [Complex.sub_re,Complex.sub_im,center,Complex.mk_re,Complex.mk_im]
    nlinarith
  · simp only [Complex.sub_re,center,Complex.mk_re]
    linarith

lemma band_shift_norm {s : ℂ} {j : ℝ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) (hj : -1 ≤ j) (hj1 : j ≤ 4) :
    ‖s+(j : ℂ)‖ ≤ (15 : ℝ) := by
  have hb : |s.re+j| ≤ (5 : ℝ) := abs_le.mpr ⟨by linarith,by linarith⟩
  have hb2 := mul_le_mul hb hb (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 5)
  have ht2 : s.im^2 ≤ (196 : ℝ) := by
    have h := mul_le_mul ht1 ht1 (by linarith : 0 ≤ s.im) (by norm_num : (0 : ℝ) ≤ 14)
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 15)).mp
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.add_re,Complex.add_im,Complex.ofReal_re,Complex.ofReal_im,add_zero]
  nlinarith [sq_abs (s.re+j)]

lemma band_last_shift_norm {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) : ‖s+5‖ ≤ (16 : ℝ) := by
  have hr : 0 ≤ s.re+5 := by linarith
  have hr1 : s.re+5 ≤ 6 := by linarith
  have hr2 := mul_le_mul hr1 hr1 hr (by norm_num : (0 : ℝ) ≤ 6)
  have ht2 : s.im^2 ≤ (196 : ℝ) := by
    have h := mul_le_mul ht1 ht1 (by linarith : 0 ≤ s.im) (by norm_num : (0 : ℝ) ≤ 14)
    nlinarith
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 16)).mp
  rw [Complex.sq_norm,Complex.normSq_apply]
  simp only [Complex.add_re,Complex.add_im,Complex.ofNat_re,Complex.ofNat_im,add_zero]
  nlinarith

lemma parameter_products {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    ‖s-1‖ ≤ (15 : ℝ) ∧ ‖s‖ ≤ (15 : ℝ) ∧
    ‖CubicPrimitive.multiplier s‖ ≤ (15 : ℝ)^4 ∧
    ‖QuarticPrimitive.multiplier s*(s+4)‖ ≤ (15 : ℝ)^6 ∧
    ‖SexticPrimitive.multiplier s‖ ≤ (15 : ℝ)^6*16 := by
  have h (j : ℝ) (hj : -1 ≤ j) (hj1 : j ≤ 4) := band_shift_norm hx hx1 ht ht1 hj hj1
  have h0 : ‖s‖ ≤ (15 : ℝ) := by simpa using h 0 (by norm_num) (by norm_num)
  have hm : ‖s-1‖ ≤ (15 : ℝ) := by simpa using h (-1) (by norm_num) (by norm_num)
  have h1 : ‖s+1‖ ≤ (15 : ℝ) := by simpa using h 1 (by norm_num) (by norm_num)
  have h2 : ‖s+2‖ ≤ (15 : ℝ) := by simpa using h 2 (by norm_num) (by norm_num)
  have h3 : ‖s+3‖ ≤ (15 : ℝ) := by simpa using h 3 (by norm_num) (by norm_num)
  have h4 : ‖s+4‖ ≤ (15 : ℝ) := by simpa using h 4 (by norm_num) (by norm_num)
  have h5 := band_last_shift_norm hx hx1 ht ht1
  have ha4 : ‖CubicPrimitive.multiplier s‖ ≤ (15 : ℝ)^4 := by
    simp only [CubicPrimitive.multiplier,norm_mul]
    calc
      _ ≤ 15*15*15*15 := by gcongr
      _ = _ := by ring
  have ha6 : ‖QuarticPrimitive.multiplier s*(s+4)‖ ≤ (15 : ℝ)^6 := by
    simp only [QuarticPrimitive.multiplier,CubicPrimitive.multiplier,norm_mul]
    calc
      _ ≤ 15*15*15*15*15*15 := by gcongr
      _ = _ := by ring
  have ha7 : ‖SexticPrimitive.multiplier s‖ ≤ (15 : ℝ)^6*16 := by
    change ‖(QuarticPrimitive.multiplier s*(s+4))*(s+5)‖ ≤ _
    rw [norm_mul]
    exact mul_le_mul ha6 h5 (norm_nonneg _) (by positivity)
  exact ⟨hm,h0,ha4,ha6,ha7⟩

lemma weight_norm_le {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) : ‖weight s‖ ≤ (20 : ℝ) := by
  have h := parameter_products hx hx1 ht ht1
  have hm := h.1
  have h0 := h.2.1
  have h4 := h.2.2.1
  have h6 := h.2.2.2.1
  have hs := mul_le_mul h.2.1 h.1 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 15)
  have hn : ‖weight s‖ ≤ 8+‖s-1‖/2+‖s‖*‖s-1‖/96+
      ‖CubicPrimitive.multiplier s‖/(720*8^3)+
      ‖QuarticPrimitive.multiplier s*(s+4)‖/(30240*8^5) := by
    unfold weight
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
  have hb : (8 : ℝ)+15/2+15^2/96+15^4/(720*8^3)+15^6/(30240*8^5) ≤ 20 := by norm_num
  have hc : 8+‖s-1‖/2+‖s‖*‖s-1‖/96+
      ‖CubicPrimitive.multiplier s‖/(720*8^3)+
      ‖QuarticPrimitive.multiplier s*(s+4)‖/(30240*8^5) ≤
      8+15/2+15^2/96+15^4/(720*8^3)+15^6/(30240*8^5) := by
    gcongr
  exact hn.trans (hc.trans hb)

lemma eight_power_shift (s : ℂ) (k : ℕ) :
    (8 : ℂ)^(-(s+(k : ℂ))) = (8 : ℂ)^(-s)/(8 : ℂ)^k := by
  rw [show -(s+(k : ℂ))=-s-(k : ℂ) by ring,
    Complex.cpow_sub _ _ (by norm_num : (8 : ℂ) ≠ 0),Complex.cpow_natCast]

/-- Exact equality for the inherited finiteModel, retaining every finite and endpoint term. -/
lemma finiteModel_eight (s : ℂ) : SexticPrimitive.finiteModel 8 s =
    (s-1)*(∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s))+weight s*(8 : ℂ)^(-s) := by
  have hsum : finiteDirichletPowerSum 8 s =
      ∑ i : Fin 8, (((i.val+1 : ℕ) : ℂ))^(-s) := by
    rw [finiteDirichletPowerSum,
      show Finset.Icc (1 : ℕ) 8={1,2,3,4,5,6,7,8} from by decide]
    norm_num [Fin.sum_univ_succ]
    ring
  have hend : (8 : ℂ)^(1-s)=8*(8 : ℂ)^(-s) := by
    rw [show 1-s=(1 : ℂ)+-s by ring,Complex.cpow_add _ _ (by norm_num),Complex.cpow_one]
  unfold SexticPrimitive.finiteModel QuarticPrimitive.finiteModel CubicPrimitive.finiteModel
    CenteredMellin.finiteModel finitePowerPoleModel
  norm_num only [Nat.cast_ofNat]
  rw [hsum,hend,eight_power_shift s 1,eight_power_shift s 3,eight_power_shift s 5]
  unfold weight
  ring

lemma finiteModel_jet_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    ‖SexticPrimitive.finiteModel 8 s-sourcePolynomial s‖ ≤
      15*(∑ i : Fin 8, powerError i)+20*powerError 7 := by
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
    rw [finiteModel_eight]
    unfold sourcePolynomial
    ring
  rw [heq]
  apply (norm_add_le _ _).trans
  rw [norm_mul,norm_mul]
  exact add_le_add (mul_le_mul hp.1 hs (norm_nonneg _) (by norm_num))
    (mul_le_mul hw h8 (norm_nonneg _) (by norm_num))

lemma cutoff_weight_bound : (8 : ℝ)^(-(1/2+5 : ℝ)) ≤ 1/65536 := by
  have hpos : 0 ≤ (8 : ℝ)^(-(1/2 : ℝ)) := Real.rpow_nonneg (by norm_num) _
  have hsquare : ((8 : ℝ)^(-(1/2 : ℝ)))^2=(1/8 : ℝ) := by
    rw [pow_two,←Real.rpow_add (by norm_num : (0 : ℝ) < 8)]
    norm_num
  have hhalf : (8 : ℝ)^(-(1/2 : ℝ)) ≤ (1/2 : ℝ) := by nlinarith
  rw [show -(1/2+5 : ℝ)=-(5 : ℝ)+-(1/2 : ℝ) by ring,
    Real.rpow_add (by norm_num : (0 : ℝ) < 8)]
  have hnat : (8 : ℝ)^(-(5 : ℝ))=1/32768 := by norm_num [Real.rpow_neg]
  rw [hnat]
  nlinarith

lemma actual_tail_error {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    ‖poleNormalizedZeta s-SexticPrimitive.finiteModel 8 s‖ ≤
      (15^6*16 : ℝ)/(30240*(11/2)*65536) := by
  have hp := (parameter_products hx hx1 ht ht1).2.2.2.2
  have he := SexticPrimitive.finiteModel_error (N := 8) (σ := (1/2 : ℝ))
    (by decide) (by norm_num) hx
  norm_num only [Nat.cast_ofNat] at he
  apply he.trans
  have hm := mul_le_mul hp (div_le_div_of_nonneg_right cutoff_weight_bound (by norm_num))
    (by positivity : 0 ≤ (8 : ℝ)^(-(1/2+5 : ℝ))/(30240*(1/2+5))) (by positivity)
  convert hm using 1 <;> ring

/-- The complete uniform source enclosure; every error has its own supplier. -/
theorem source_enclosed {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (13 : ℝ) ≤ s.im) (ht1 : s.im ≤ 14) :
    ‖poleNormalizedZeta s-polynomial s‖ ≤ (1/20 : ℝ) := by
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
    _ ≤ (15^6*16 : ℝ)/(30240*(11/2)*65536)+
        (15*(∑ i : Fin 8, powerError i)+20*powerError 7)+1/1048576 :=
      add_le_add (add_le_add htail hmodel) hround
    _ ≤ 1/20 := by linarith [finite_error_budget]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CutoffEightJet
```
