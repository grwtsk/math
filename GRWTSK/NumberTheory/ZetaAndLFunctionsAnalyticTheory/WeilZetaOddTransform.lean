/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import WeilZetaExplicitFormula
import GRWTSK.FunctionsOfAComplexVariable.OddZeroCosineFilter
import GRWTSK.FunctionsOfAComplexVariable.OddZeroOrbitWitness
import Mathlib.Analysis.Calculus.BumpFunction.InnerProduct

/-!
# Compact real odd witnesses for the Zeta23 Fourier transform

The transform has the same `exp (i*z*t)` convention as the exact explicit
formula. Symmetric real translates multiply it by `cos (d*z)`, while the
antisymmetric translate of an even function gives `i*sin (d*z)` times its
transform. These operations preserve compact support and `C²` regularity.
A short translate separates the finitely many cosine values modulo sign.
Real affine interpolation then normalizes the retained ordinate and leaves
all eliminated values zero. At a purely imaginary ordinate the transform
is real, so a real scalar suffices there.

A fixed normalized real even bump suppresses the outer strip through
convolution powers. This multiplies the exact Fourier transforms and
preserves the odd test class. The odd convolution term in the zero sum
is the negative square of the transform, with no absolute value there.
-/

set_option autoImplicit false
noncomputable section
open Complex MeasureTheory Polynomial Set
open scoped ComplexConjugate Convolution Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource

open GRWTSK.ComplexAnalysis.OddCosWindow
open GRWTSK.ComplexAnalysis.OddZeroOrbitWitness

/-- Translation under the literal positive-sign angular Fourier transform. -/
theorem paperFT_real_translate (f : ℝ → ℝ) (d : ℝ) (z : ℂ) :
    Zeta23.paperFT (fun t => (f (t - d) : ℂ)) z =
      Complex.exp (I * z * d) * Zeta23.paperFT (realTest f) z := by
  unfold Zeta23.paperFT realTest
  rw [← integral_add_right_eq_self (fun t : ℝ => (f (t - d) : ℂ) * Complex.exp (I * z * t)) d,
    ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [add_sub_cancel_right]
  push_cast
  rw [mul_add, Complex.exp_add]
  ring

private theorem integrable_realTest_mul_exp {f : ℝ → ℝ} (hf : Continuous f)
    (hfc : HasCompactSupport f) (z : ℂ) :
    Integrable (fun t : ℝ => realTest f t * Complex.exp (I * z * t)) := by
  have hfC : Continuous (realTest f) := Complex.continuous_ofReal.comp hf
  have hfCC : HasCompactSupport (realTest f) :=
    hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  exact (hfC.mul (by fun_prop)).integrable_of_hasCompactSupport hfCC.mul_right

private theorem compact_translate {f : ℝ → ℝ} (hf : HasCompactSupport f) (d : ℝ) :
    HasCompactSupport (fun t => f (t - d)) := by
  simpa [Function.comp_def, sub_eq_add_neg] using hf.comp_homeomorph (Homeomorph.addRight (-d))

private theorem paperFT_real_linear {f g : ℝ → ℝ} (hf : Continuous f) (hg : Continuous g)
    (hfC : HasCompactSupport f) (hgC : HasCompactSupport g) (a b : ℝ) (z : ℂ) :
    Zeta23.paperFT (realTest (fun t => a * f t + b * g t)) z =
      a * Zeta23.paperFT (realTest f) z + b * Zeta23.paperFT (realTest g) z := by
  have hfI := (integrable_realTest_mul_exp hf hfC z).const_mul (a : ℂ)
  have hgI := (integrable_realTest_mul_exp hg hgC z).const_mul (b : ℂ)
  unfold Zeta23.paperFT
  rw [← integral_const_mul, ← integral_const_mul, ← integral_add hfI hgI]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [realTest, ofReal_add, ofReal_mul]
  ring

private theorem two_translates {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f)
    (d a b : ℝ) :
    ContDiff ℝ 2 (fun t => a * f (t - d) + b * f (t + d)) ∧
    HasCompactSupport (fun t => a * f (t - d) + b * f (t + d)) ∧
    ∀ z : ℂ, Zeta23.paperFT (realTest (fun t => a * f (t - d) + b * f (t + d))) z =
      (a * Complex.exp (I * z * d) + b * Complex.exp (I * z * (-d : ℝ))) *
        Zeta23.paperFT (realTest f) z := by
  have hfd : ContDiff ℝ 2 (fun t => f (t - d)) := hf.comp (contDiff_id.sub contDiff_const)
  have hfa : ContDiff ℝ 2 (fun t => f (t + d)) := hf.comp (contDiff_id.add contDiff_const)
  have hd := compact_translate hfc d
  have ha : HasCompactSupport (fun t => f (t + d)) := by
    simpa only [sub_neg_eq_add] using compact_translate hfc (-d)
  refine ⟨(contDiff_const.mul hfd).add (contDiff_const.mul hfa), ?_, ?_⟩
  · exact (hd.comp_left (g := fun x => a * x) (mul_zero a)).add
      (ha.comp_left (g := fun x => b * x) (mul_zero b))
  · intro z
    rw [paperFT_real_linear hfd.continuous hfa.continuous hd ha,
      show Zeta23.paperFT (realTest (fun t => f (t - d))) z = _ from paperFT_real_translate f d z]
    have hOther := paperFT_real_translate f (-d) z
    have hOther' : Zeta23.paperFT (realTest (fun t => f (t + d))) z =
        Complex.exp (I * z * (-d : ℝ)) * Zeta23.paperFT (realTest f) z := by
      change Zeta23.paperFT (fun t => (f (t + d) : ℂ)) z = _
      simpa only [sub_neg_eq_add] using hOther
    rw [hOther']
    ring

/-- Symmetric translations preserve parity and multiply the transform by cosine. -/
theorem symmetric_translate_real (f : ℝ → ℝ) (d : ℝ) (hf : ContDiff ℝ 2 f)
    (hfc : HasCompactSupport f) :
    ∃ g : ℝ → ℝ, ContDiff ℝ 2 g ∧ HasCompactSupport g ∧
      (Function.Even f → Function.Even g) ∧ (Function.Odd f → Function.Odd g) ∧
      ∀ z : ℂ, Zeta23.paperFT (realTest g) z = cos (d * z) * Zeta23.paperFT (realTest f) z := by
  let g : ℝ → ℝ := fun t => (1 / 2) * f (t - d) + (1 / 2) * f (t + d)
  obtain ⟨hg, hgC, hFT⟩ := two_translates hf hfc d (1 / 2) (1 / 2)
  refine ⟨g, hg, hgC, ?_, ?_, ?_⟩
  · intro he t
    dsimp only [g]
    rw [show -t - d = -(t + d) by ring, show -t + d = -(t - d) by ring,
      he, he, add_comm]
  · intro ho t
    dsimp only [g]
    rw [show -t - d = -(t + d) by ring, show -t + d = -(t - d) by ring, ho, ho]
    ring
  · intro z
    rw [hFT, Complex.cos]
    push_cast
    rw [show (d * z) * I = I * z * d by ring, show -(d * z) * I = I * z * -d by ring]
    ring

/-- Antisymmetric translations take even real tests to odd real tests and
multiply the positive-sign angular transform by `i sin(d z)`. -/
theorem antisymmetric_translate_real (f : ℝ → ℝ) (d : ℝ) (hf : ContDiff ℝ 2 f)
    (hfc : HasCompactSupport f) (he : Function.Even f) :
    ∃ g : ℝ → ℝ, ContDiff ℝ 2 g ∧ HasCompactSupport g ∧ Function.Odd g ∧
      ∀ z : ℂ, Zeta23.paperFT (realTest g) z = I * sin (d * z) * Zeta23.paperFT (realTest f) z := by
  let g : ℝ → ℝ := fun t => (1 / 2) * f (t - d) + (-1 / 2) * f (t + d)
  obtain ⟨hg, hgC, hFT⟩ := two_translates hf hfc d (1 / 2) (-1 / 2)
  refine ⟨g, hg, hgC, ?_, ?_⟩
  · intro t
    dsimp only [g]
    rw [show -t - d = -(t + d) by ring, show -t + d = -(t - d) by ring, he, he]
    ring
  · intro z
    rw [hFT, Complex.sin]
    push_cast
    rw [show (d * z) * I = I * z * d by ring, show -(d * z) * I = I * z * -d by ring]
    ring_nf
    rw [Complex.I_sq]
    ring

/-- A real polynomial in the cosine multiplier preserves parity,
smoothness and compact support. -/
theorem cos_polynomial_real (f : ℝ → ℝ) (d : ℝ) (hf : ContDiff ℝ 2 f)
    (hfc : HasCompactSupport f) (p : Polynomial ℝ) :
    ∃ g : ℝ → ℝ, ContDiff ℝ 2 g ∧ HasCompactSupport g ∧
      (Function.Even f → Function.Even g) ∧ (Function.Odd f → Function.Odd g) ∧
      ∀ z : ℂ, Zeta23.paperFT (realTest g) z =
        p.eval₂ Complex.ofRealHom (cos (d * z)) * Zeta23.paperFT (realTest f) z := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq =>
    obtain ⟨g, hgd, hgc, hge, hgo, hg⟩ := hp
    obtain ⟨k, hkd, hkc, hke, hko, hk⟩ := hq
    refine ⟨fun t => g t + k t, hgd.add hkd, hgc.add hkc, ?_, ?_, fun z => ?_⟩
    · intro he t
      simp only [hge he t, hke he t]
    · intro ho t
      simp only [hgo ho t, hko ho t]
      ring
    · have hAdd := paperFT_real_linear hgd.continuous hkd.continuous hgc hkc 1 1 z
      norm_num at hAdd
      rw [hAdd, hg, hk, Polynomial.eval₂_add]
      ring
  | monomial n a =>
    induction n with
    | zero =>
      refine ⟨fun t => a * f t, contDiff_const.mul hf,
        hfc.comp_left (g := fun x => a * x) (mul_zero a), ?_, ?_, fun z => ?_⟩
      · intro he t
        simp only [he t]
      · intro ho t
        simp only [ho t]
        ring
      · have hScale := paperFT_real_linear hf.continuous hf.continuous hfc hfc a 0 z
        norm_num at hScale
        rw [hScale, Polynomial.eval₂_monomial]
        simp
    | succ n ih =>
      obtain ⟨g, hgd, hgc, hge, hgo, hg⟩ := ih
      obtain ⟨k, hkd, hkc, hke, hko, hk⟩ := symmetric_translate_real g d hgd hgc
      refine ⟨k, hkd, hkc, fun he => hke (hge he), fun ho => hko (hgo ho), fun z => ?_⟩
      rw [hk, hg, Polynomial.eval₂_monomial, Polynomial.eval₂_monomial, pow_succ]
      ring

/-- In the literal complex zero pairing, odd real data give a negative
square at complex frequencies. On real frequencies this is a squared norm. -/
theorem paperFT_testKernel_of_real_odd {f : ℝ → ℝ} (hf : Continuous f)
    (hfc : HasCompactSupport f) (ho : Function.Odd f) (z : ℂ) :
    Zeta23.paperFT (testKernel f) z = -(Zeta23.paperFT (realTest f) z) ^ 2 := by
  have hfC : Continuous (realTest f) := Complex.continuous_ofReal.comp hf
  have hfCC : HasCompactSupport (realTest f) :=
    hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have htilde : Zeta23.EF.tilde (realTest f) = -realTest f := by
    ext t
    simp [Zeta23.EF.tilde, realTest, ho t]
  rw [testKernel, Zeta23.EF.paperFT_weilTest hfC hfC hfCC hfCC,
    ← Zeta23.EF.paperFT_tilde, htilde]
  have hneg : Zeta23.paperFT (-realTest f) z = -Zeta23.paperFT (realTest f) z := by
    simp only [Zeta23.paperFT, Pi.neg_apply, neg_mul, integral_neg]
  rw [hneg]
  ring

/-- At any complex ordinate, a sufficiently small real even bump has positive real transform. -/
theorem exists_even_bump_paperFT_re_pos (a : ℂ) :
    ∃ b : ℝ → ℝ, ContDiff ℝ 2 b ∧ HasCompactSupport b ∧ Function.Even b ∧
      0 < (Zeta23.paperFT (fun t => (b t : ℂ)) a).re := by
  have hCos : Continuous (fun t : ℝ => Real.cos (a.re * t)) := by fun_prop
  have hOpen : IsOpen {t : ℝ | 0 < Real.cos (a.re * t)} := isOpen_lt continuous_const hCos
  have hMem : (0 : ℝ) ∈ {t : ℝ | 0 < Real.cos (a.re * t)} := by simp
  obtain ⟨ε, hε, hBall⟩ := Metric.mem_nhds_iff.mp (hOpen.mem_nhds hMem)
  let b : ContDiffBump (0 : ℝ) := ⟨ε / 2, ε, by positivity, by linarith⟩
  let k := fun t : ℝ => (b t : ℂ) * Complex.exp (I * a * (t : ℂ))
  have hbc : Continuous (fun t : ℝ => (b t : ℂ)) := Complex.continuous_ofReal.comp b.continuous
  have hbs : HasCompactSupport (fun t : ℝ => (b t : ℂ)) :=
    b.hasCompactSupport.comp_left (g := fun x : ℝ => (x : ℂ)) Complex.ofReal_zero
  have hkc : Continuous k := hbc.mul (by fun_prop)
  have hki : Integrable k := hkc.integrable_of_hasCompactSupport hbs.mul_right
  have hRe (t : ℝ) : (k t).re = b t * (Real.exp (-(a.im * t)) * Real.cos (a.re * t)) := by
    simp [k, Complex.mul_re, Complex.mul_im, Complex.exp_re]
  have hReNonneg : 0 ≤ fun t : ℝ => (k t).re := by
    intro t
    change 0 ≤ (k t).re
    rw [hRe]
    by_cases ht : t ∈ Metric.ball (0 : ℝ) ε
    · have htcos : 0 < Real.cos (a.re * t) := hBall ht
      exact mul_nonneg (b.nonneg' t) (mul_nonneg (Real.exp_nonneg _) htcos.le)
    · have hbzero : b t = 0 := b.zero_of_le_dist (by simpa [Metric.mem_ball, b] using ht)
      simp [hbzero]
  have hb0 : b 0 = 1 := b.one_of_mem_closedBall (Metric.mem_closedBall_self b.rIn_pos.le)
  have hk0 : (k 0).re ≠ 0 := by rw [hRe, hb0]; simp
  have hpos : 0 < ∫ t : ℝ, (k t).re :=
    integral_pos_of_integrable_nonneg_nonzero (Complex.continuous_re.comp hkc) hki.re hReNonneg hk0
  refine ⟨b, b.contDiff, b.hasCompactSupport, b.neg, ?_⟩
  change 0 < (∫ t : ℝ, k t).re
  rw [← show (∫ t : ℝ, (k t).re) = (∫ t : ℝ, k t).re from integral_re hki]
  exact hpos

/-- A real even compactly supported `C²` test with nonzero transform at a prescribed ordinate. -/
theorem exists_even_bump_paperFT_ne_zero (a : ℂ) :
    ∃ b : ℝ → ℝ, ContDiff ℝ 2 b ∧ HasCompactSupport b ∧ Function.Even b ∧
      Zeta23.paperFT (fun t => (b t : ℂ)) a ≠ 0 := by
  obtain ⟨b, hc, hs, he, hp⟩ := exists_even_bump_paperFT_re_pos a
  refine ⟨b, hc, hs, he, fun h => ?_⟩
  rw [h, Complex.zero_re] at hp
  exact lt_irrefl _ hp

theorem real_paperFT_conj_neg (f : ℝ → ℝ) (z : ℂ) :
    conj (Zeta23.paperFT (realTest f) z) = Zeta23.paperFT (realTest f) (-conj z) := by
  unfold Zeta23.paperFT realTest
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [map_mul, ← Complex.exp_conj, Complex.conj_ofReal, Complex.conj_I]
  congr 2
  ring

theorem realOdd_paperFT_neg {f : ℝ → ℝ} (ho : Function.Odd f) (z : ℂ) :
    Zeta23.paperFT (realTest f) (-z) = -Zeta23.paperFT (realTest f) z := by
  unfold Zeta23.paperFT realTest
  rw [← integral_neg_eq_self (fun t : ℝ => (f t : ℂ) * Complex.exp (I * (-z) * t)),
    ← integral_neg]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [ho t, Complex.ofReal_neg, Complex.ofReal_neg, show I * -z * -(t : ℂ) = I * z * t by ring, neg_mul]

/-- A fixed real affine cosine multiplier sets one nonzero complex
observation to one and preserves parity and all zeros of the transform. -/
theorem exists_real_paperFT_normalization {f : ℝ → ℝ} (hfd : ContDiff ℝ 2 f)
    (hfc : HasCompactSupport f) (a : ℂ) (haI : a.im ≠ 0)
    (hfne : Zeta23.paperFT (realTest f) a ≠ 0) :
    ∃ g : ℝ → ℝ, ContDiff ℝ 2 g ∧ HasCompactSupport g ∧
      (Function.Even f → Function.Even g) ∧ (Function.Odd f → Function.Odd g) ∧
      Zeta23.paperFT (realTest g) a = 1 ∧
      ∀ z : ℂ, Zeta23.paperFT (realTest f) z = 0 → Zeta23.paperFT (realTest g) z = 0 := by
  let A := Zeta23.paperFT (realTest f) a
  have hA : A ≠ 0 := hfne
  let d : ℝ := Real.pi / (2 * (1 + |a.re|))
  have hd : 0 < d := by unfold d; positivity
  have hStrip : |(d * a).re| < Real.pi := by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
      abs_mul, abs_of_pos hd]
    unfold d
    rw [div_mul_eq_mul_div]
    apply (div_lt_iff₀ (by positivity)).mpr
    nlinarith [Real.pi_pos, abs_nonneg a.re]
  have hScale : ∃ p : Polynomial ℝ, p.eval₂ ofRealHom (cos (d * a)) = A⁻¹ := by
    by_cases haR : a.re = 0
    · have hConj : -conj a = a := by
        apply Complex.ext <;> simp [haR]
      have hAconj : conj A = A := by
        unfold A
        rw [real_paperFT_conj_neg, hConj]
      have hInvConj : conj A⁻¹ = A⁻¹ := by rw [map_inv₀, hAconj]
      refine ⟨C (A⁻¹).re, ?_⟩
      rw [eval₂_C]
      change (((A⁻¹).re : ℝ) : ℂ) = A⁻¹
      apply Complex.ext
      · simp
      · simp [Complex.conj_eq_iff_im.mp hInvConj]
    · have hCos : (cos (d * a)).im ≠ 0 := cos_im_ne_zero_of_off_axes hStrip
        (by simpa [Complex.mul_re, hd.ne'] using haR)
        (by simpa [Complex.mul_im, hd.ne'] using haI)
      let w := cos (d * a)
      refine ⟨C (affineIntercept w A⁻¹) + C (affineSlope w A⁻¹) * X, ?_⟩
      rw [eval₂_add, eval₂_mul, eval₂_C, eval₂_C, eval₂_X]
      exact real_affine_interpolation w A⁻¹ hCos
  obtain ⟨p, hp⟩ := hScale
  obtain ⟨g, hgd, hgc, hge, hgo, hg⟩ := cos_polynomial_real f d hfd hfc p
  refine ⟨g, hgd, hgc, hge, hgo, ?_, fun z hz => ?_⟩
  · rw [hg, hp]
    exact inv_mul_cancel₀ hA
  · rw [hg, hz, mul_zero]

/-- Fix a compact even bump with its actual transform equal to one at
an ordinate off the real axis. -/
theorem exists_even_real_paperFT_eq_one (a : ℂ) (haI : a.im ≠ 0) :
    ∃ f : ℝ → ℝ, ContDiff ℝ 2 f ∧ HasCompactSupport f ∧ Function.Even f ∧
      Zeta23.paperFT (realTest f) a = 1 := by
  obtain ⟨f, hfd, hfc, hfe, hfne⟩ := exists_even_bump_paperFT_ne_zero a
  obtain ⟨g, hgd, hgc, hge, _, hg, _⟩ := exists_real_paperFT_normalization hfd hfc a haI hfne
  exact ⟨g, hgd, hgc, hge hfe, hg⟩

/-- An exact real odd compact witness on a finite inner window. Its
transform takes value one at the selected ordinate and vanishes at the
specified non-orbit points. -/
theorem exists_odd_witness_on_finite_window {b : ℝ → ℝ} (hbd : ContDiff ℝ 2 b)
    (hbc : HasCompactSupport b) (hbe : Function.Even b) {d : ℝ} (hd : d ≠ 0)
    {a : ℂ} (haI : a.im ≠ 0) (hb : Zeta23.paperFT (realTest b) a = 1)
    (ha : |(d * a).re| < Real.pi) (W : Finset ℂ)
    (hW : ∀ w ∈ W, |(d * w).re| < Real.pi ∧ w ≠ a ∧ w ≠ -a ∧ w ≠ conj a ∧ w ≠ -conj a) :
    ∃ f : ℝ → ℝ, ContDiff ℝ 2 f ∧ HasCompactSupport f ∧ Function.Odd f ∧
      Zeta23.paperFT (realTest f) a = 1 ∧ ∀ w ∈ W, Zeta23.paperFT (realTest f) w = 0 := by
  obtain ⟨p, hp, hpW⟩ := exists_real_cosine_filter hd W ha hW
  obtain ⟨u, hud, huc, hue, _, hu⟩ := cos_polynomial_real b d hbd hbc p
  obtain ⟨g, hgd, hgc, hgo, hg⟩ := antisymmetric_translate_real u d hud huc (hue hbe)
  have hSin : sin (d * a) ≠ 0 := by
    intro h
    obtain ⟨k, hk⟩ := Complex.sin_eq_zero_iff.mp h
    have h := congrArg Complex.im hk
    simp [Complex.mul_im, hd, haI] at h
  have hNonzero : Zeta23.paperFT (realTest g) a ≠ 0 := by
    rw [hg, hu, hb, mul_one]
    exact mul_ne_zero (mul_ne_zero Complex.I_ne_zero hSin) hp
  obtain ⟨f, hfd, hfc, _, hfo, hf, hZeros⟩ :=
    exists_real_paperFT_normalization hgd hgc a haI hNonzero
  refine ⟨f, hfd, hfc, hfo hgo, hf, fun w hw => hZeros w ?_⟩
  rw [hg, hu, hpW w hw, zero_mul, mul_zero]

private def realConvolution (f g : ℝ → ℝ) : ℝ → ℝ :=
  f ⋆[ContinuousLinearMap.mul ℝ ℝ] g

private theorem realConvolution_parity {f g : ℝ → ℝ} {c : ℝ}
    (hf : ∀ t, f (-t) = c * f t) (hg : Function.Even g) (x : ℝ) :
    realConvolution f g (-x) = c * realConvolution f g x := by
  simp only [realConvolution, convolution_def, ContinuousLinearMap.mul_apply']
  rw [← integral_neg_eq_self (fun t : ℝ => f t * g (-x - t)), ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  change f (-t) * g (-x - -t) = c * (f t * g (x - t))
  rw [hf t, show -x - -t = -(x - t) by ring, hg (x - t), mul_assoc]

private theorem realConvolution_regular {f g : ℝ → ℝ} (hf : ContDiff ℝ 2 f)
    (hfs : HasCompactSupport f) (hg : Continuous g) (hgs : HasCompactSupport g) :
    ContDiff ℝ 2 (realConvolution f g) ∧ HasCompactSupport (realConvolution f g) :=
  ⟨hfs.contDiff_convolution_left (L := ContinuousLinearMap.mul ℝ ℝ) (μ := volume)
    hf hg.locallyIntegrable, hfs.convolution _ hgs⟩

private theorem paperFT_realConvolution {f g : ℝ → ℝ} (hf : Continuous f) (hg : Continuous g)
    (hfs : HasCompactSupport f) (hgs : HasCompactSupport g) (hge : Function.Even g) (z : ℂ) :
    Zeta23.paperFT (fun t => (realConvolution f g t : ℂ)) z =
      Zeta23.paperFT (fun t => (f t : ℂ)) z * Zeta23.paperFT (fun t => (g t : ℂ)) z := by
  have htilde : Zeta23.EF.tilde (fun t => (g t : ℂ)) = fun t => (g t : ℂ) := by
    funext t
    simp [Zeta23.EF.tilde, hge t]
  have hcast : (fun t => (realConvolution f g t : ℂ)) =
      Zeta23.EF.weilTest (fun t => (f t : ℂ)) (fun t => (g t : ℂ)) := by
    funext t
    simp only [realConvolution, Zeta23.EF.weilTest, htilde, convolution_def,
      ContinuousLinearMap.mul_apply', ← Complex.ofReal_mul, integral_complex_ofReal]
  have hfc : Continuous (fun t => (f t : ℂ)) := Complex.continuous_ofReal.comp hf
  have hgc : Continuous (fun t => (g t : ℂ)) := Complex.continuous_ofReal.comp hg
  have hfsc : HasCompactSupport (fun t => (f t : ℂ)) := hfs.comp_left Complex.ofReal_zero
  have hgsc : HasCompactSupport (fun t => (g t : ℂ)) := hgs.comp_left Complex.ofReal_zero
  rw [hcast, Zeta23.EF.paperFT_weilTest hfc hgc hfsc hgsc z, ← Zeta23.EF.paperFT_tilde, htilde]

/-- The positive convolution power. Index `n` represents `n+1` factors. -/
def realConvolutionPower (b : ℝ → ℝ) : ℕ → ℝ → ℝ
  | 0 => b
  | n + 1 => realConvolution (realConvolutionPower b n) b

/-- A positive convolution power of a real even compact `C²` test is again such a test,
and its actual angular Fourier transform is the corresponding pointwise power. -/
theorem realConvolutionPower_spec {b : ℝ → ℝ} (hb : ContDiff ℝ 2 b)
    (hbs : HasCompactSupport b) (hbe : Function.Even b) (n : ℕ) :
    ContDiff ℝ 2 (realConvolutionPower b n) ∧ HasCompactSupport (realConvolutionPower b n) ∧
      Function.Even (realConvolutionPower b n) ∧
      ∀ z : ℂ, Zeta23.paperFT (fun t => (realConvolutionPower b n t : ℂ)) z =
        (Zeta23.paperFT (fun t => (b t : ℂ)) z) ^ (n + 1) := by
  induction n with
  | zero => exact ⟨hb, hbs, hbe, fun z => (pow_one (Zeta23.paperFT (fun t => (b t : ℂ)) z)).symm⟩
  | succ n ih =>
    rcases ih with ⟨hfc, hfs, hfe, hFT⟩
    obtain ⟨hc, hs⟩ := realConvolution_regular hfc hfs hb.continuous hbs
    refine ⟨hc, hs, fun x => ?_, fun z => ?_⟩
    · simpa only [realConvolutionPower, one_mul] using
        realConvolution_parity (c := 1) (fun t => by simpa only [one_mul] using hfe t) hbe x
    · rw [realConvolutionPower, paperFT_realConvolution hfc.continuous hb.continuous hfs hbs hbe,
        hFT]
      exact (pow_succ _ (n + 1)).symm

/-- Convolution with the positive power of an even test. -/
def realConvolutionWithPower (g b : ℝ → ℝ) (n : ℕ) : ℝ → ℝ :=
  realConvolution g (realConvolutionPower b n)

/-- Convolving a compact real odd test with an even convolution power preserves
its regularity, compact support and oddness and multiplies the literal transforms. -/
theorem realConvolutionWithPower_spec {g b : ℝ → ℝ} (hg : ContDiff ℝ 2 g)
    (hgs : HasCompactSupport g) (hgo : Function.Odd g) (hb : ContDiff ℝ 2 b)
    (hbs : HasCompactSupport b) (hbe : Function.Even b) (n : ℕ) :
    ContDiff ℝ 2 (realConvolutionWithPower g b n) ∧
      HasCompactSupport (realConvolutionWithPower g b n) ∧
      Function.Odd (realConvolutionWithPower g b n) ∧
      ∀ z : ℂ, Zeta23.paperFT (fun t => (realConvolutionWithPower g b n t : ℂ)) z =
        Zeta23.paperFT (fun t => (g t : ℂ)) z *
          (Zeta23.paperFT (fun t => (b t : ℂ)) z) ^ (n + 1) := by
  obtain ⟨hbc, hbcs, hbce, hbft⟩ := realConvolutionPower_spec hb hbs hbe n
  obtain ⟨hc, hs⟩ := realConvolution_regular hg hgs hbc.continuous hbcs
  refine ⟨hc, hs, fun x => ?_, fun z => ?_⟩
  · simpa only [realConvolutionWithPower, neg_one_mul] using
      realConvolution_parity (c := -1) (fun t => by simpa only [neg_one_mul] using hgo t) hbce x
  · rw [realConvolutionWithPower, paperFT_realConvolution hg.continuous hbc.continuous hgs hbcs hbce,
      hbft]

/-- A single inverse-square envelope for the actual transform on a bounded strip. -/
theorem exists_paperFT_decay {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (hfc : HasCompactSupport f) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ z : ℂ, |z.im| ≤ 1 →
      ‖Zeta23.paperFT (realTest f) z‖ ≤ D / (1 + ‖z‖ ^ 2) := by
  have hfC : ContDiff ℝ 2 (realTest f) := Complex.ofRealCLM.contDiff.comp hf
  have hfCC : HasCompactSupport (realTest f) :=
    hfc.comp_left (g := Complex.ofReal) Complex.ofReal_zero
  have hfI : Integrable (realTest f) volume := hfC.continuous.integrable_of_hasCompactSupport hfCC
  obtain ⟨T, hT₀, hT⟩ := hfCC.isCompact.isBounded.subset_closedBall_lt 0 (0 : ℝ)
  have hSupport (t : ℝ) (ht : realTest f t ≠ 0) : |t| ≤ T := by
    have h := hT (subset_tsupport (realTest f) ht)
    simpa only [Metric.mem_closedBall, Real.dist_eq, sub_zero] using h
  let D := 2 * Real.exp T * ((∫ t : ℝ, ‖realTest f t‖) + ∫ t, ‖deriv (deriv (realTest f)) t‖)
  have hD : 0 ≤ D := by
    unfold D
    exact mul_nonneg (by positivity) (add_nonneg
      (integral_nonneg (fun _ => norm_nonneg _)) (integral_nonneg (fun _ => norm_nonneg _)))
  refine ⟨2 * D, by positivity, fun z hz => ?_⟩
  have hNorm := Zeta23.WeilEF.norm_paperFT_le_uniform hfC hfI hT₀.le hSupport hz
  apply hNorm.trans
  have hIm := pow_le_pow_left₀ (abs_nonneg z.im) hz 2
  rw [sq_abs, one_pow] at hIm
  have hZ : ‖z‖ ^ 2 = z.re ^ 2 + z.im ^ 2 := by
    rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply]
    ring
  rw [show 2 * D / (1 + ‖z‖ ^ 2) = D / ((1 + ‖z‖ ^ 2) / 2) by
    field_simp (disch := positivity)]
  exact div_le_div_of_nonneg_left hD (by positivity) (by rw [hZ]; nlinarith [sq_nonneg z.re])

end GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource
