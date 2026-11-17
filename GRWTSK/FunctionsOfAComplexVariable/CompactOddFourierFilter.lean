/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.OddZeroCosineFilter
import GRWTSK.FunctionsOfAComplexVariable.OddZeroOrbitWitness
import GRWTSK.MeasureAndIntegration.FourierDerivativeDecay
import Mathlib.Analysis.Calculus.BumpFunction.InnerProduct
import Mathlib.Analysis.Convolution

/-!
# Smooth real odd Fourier filters on a bounded strip

The translation and finite interpolation arguments are extracted from the
local `WeilZetaOddTransform` source. They use the ordinary positive
angular transform and smooth compact support, independently of a zeta
or Dirichlet zero carrier. Convolution multiplication uses the pinned
Mathlib convolution integral. The real/complex argument is kept at the
actual complex ordinate, including when its real part is zero.
-/

set_option autoImplicit false
noncomputable section

open Complex MeasureTheory Polynomial Set
open scoped ComplexConjugate ContDiff Convolution Topology

namespace GRWTSK.ComplexAnalysis.CompactOddFourierFilter

open GRWTSK.ComplexAnalysis.OddCosWindow
open GRWTSK.ComplexAnalysis.OddZeroOrbitWitness
open GRWTSK.MeasureAndIntegration.FourierDerivativeDecay

def angularFourier (f : ℝ → ℂ) (z : ℂ) : ℂ :=
  ∫ t : ℝ, f t * Complex.exp (I * z * (t : ℂ))

abbrev realTest (f : ℝ → ℝ) (t : ℝ) : ℂ := f t

/-- Translation under the literal positive-sign angular Fourier transform. -/
theorem angularFourier_real_translate (f : ℝ → ℝ) (d : ℝ) (z : ℂ) :
    angularFourier (fun t => (f (t - d) : ℂ)) z =
      Complex.exp (I * z * d) * angularFourier (realTest f) z := by
  unfold angularFourier realTest
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

private theorem angularFourier_real_linear {f g : ℝ → ℝ} (hf : Continuous f) (hg : Continuous g)
    (hfC : HasCompactSupport f) (hgC : HasCompactSupport g) (a b : ℝ) (z : ℂ) :
    angularFourier (realTest (fun t => a * f t + b * g t)) z =
      a * angularFourier (realTest f) z + b * angularFourier (realTest g) z := by
  have hfI := (integrable_realTest_mul_exp hf hfC z).const_mul (a : ℂ)
  have hgI := (integrable_realTest_mul_exp hg hgC z).const_mul (b : ℂ)
  unfold angularFourier
  rw [← integral_const_mul, ← integral_const_mul, ← integral_add hfI hgI]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [realTest, ofReal_add, ofReal_mul]
  ring

private theorem two_translates {f : ℝ → ℝ} (hf : ContDiff ℝ ∞ f) (hfc : HasCompactSupport f)
    (d a b : ℝ) :
    ContDiff ℝ ∞ (fun t => a * f (t - d) + b * f (t + d)) ∧
    HasCompactSupport (fun t => a * f (t - d) + b * f (t + d)) ∧
    ∀ z : ℂ, angularFourier (realTest (fun t => a * f (t - d) + b * f (t + d))) z =
      (a * Complex.exp (I * z * d) + b * Complex.exp (I * z * (-d : ℝ))) *
        angularFourier (realTest f) z := by
  have hfd : ContDiff ℝ ∞ (fun t => f (t - d)) := hf.comp (contDiff_id.sub contDiff_const)
  have hfa : ContDiff ℝ ∞ (fun t => f (t + d)) := hf.comp (contDiff_id.add contDiff_const)
  have hd := compact_translate hfc d
  have ha : HasCompactSupport (fun t => f (t + d)) := by
    simpa only [sub_neg_eq_add] using compact_translate hfc (-d)
  refine ⟨(contDiff_const.mul hfd).add (contDiff_const.mul hfa), ?_, ?_⟩
  · exact (hd.comp_left (g := fun x => a * x) (mul_zero a)).add
      (ha.comp_left (g := fun x => b * x) (mul_zero b))
  · intro z
    rw [angularFourier_real_linear hfd.continuous hfa.continuous hd ha,
      show angularFourier (realTest (fun t => f (t - d))) z = _ from angularFourier_real_translate f d z]
    have hOther := angularFourier_real_translate f (-d) z
    have hOther' : angularFourier (realTest (fun t => f (t + d))) z =
        Complex.exp (I * z * (-d : ℝ)) * angularFourier (realTest f) z := by
      change angularFourier (fun t => (f (t + d) : ℂ)) z = _
      simpa only [sub_neg_eq_add] using hOther
    rw [hOther']
    ring

/-- Symmetric translations preserve parity and multiply the transform by cosine. -/
theorem symmetric_translate_real (f : ℝ → ℝ) (d : ℝ) (hf : ContDiff ℝ ∞ f)
    (hfc : HasCompactSupport f) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ HasCompactSupport g ∧
      (Function.Even f → Function.Even g) ∧ (Function.Odd f → Function.Odd g) ∧
      ∀ z : ℂ, angularFourier (realTest g) z = cos (d * z) * angularFourier (realTest f) z := by
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
theorem antisymmetric_translate_real (f : ℝ → ℝ) (d : ℝ) (hf : ContDiff ℝ ∞ f)
    (hfc : HasCompactSupport f) (he : Function.Even f) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ HasCompactSupport g ∧ Function.Odd g ∧
      ∀ z : ℂ, angularFourier (realTest g) z = I * sin (d * z) * angularFourier (realTest f) z := by
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
theorem cos_polynomial_real (f : ℝ → ℝ) (d : ℝ) (hf : ContDiff ℝ ∞ f)
    (hfc : HasCompactSupport f) (p : Polynomial ℝ) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ HasCompactSupport g ∧
      (Function.Even f → Function.Even g) ∧ (Function.Odd f → Function.Odd g) ∧
      ∀ z : ℂ, angularFourier (realTest g) z =
        p.eval₂ Complex.ofRealHom (cos (d * z)) * angularFourier (realTest f) z := by
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
    · have hAdd := angularFourier_real_linear hgd.continuous hkd.continuous hgc hkc 1 1 z
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
      · have hScale := angularFourier_real_linear hf.continuous hf.continuous hfc hfc a 0 z
        norm_num at hScale
        rw [hScale, Polynomial.eval₂_monomial]
        simp
    | succ n ih =>
      obtain ⟨g, hgd, hgc, hge, hgo, hg⟩ := ih
      obtain ⟨k, hkd, hkc, hke, hko, hk⟩ := symmetric_translate_real g d hgd hgc
      refine ⟨k, hkd, hkc, fun he => hke (hge he), fun ho => hko (hgo ho), fun z => ?_⟩
      rw [hk, hg, Polynomial.eval₂_monomial, Polynomial.eval₂_monomial, pow_succ]
      ring

/-- At any complex ordinate, a sufficiently small real even bump has positive real transform. -/
theorem exists_even_bump_angularFourier_re_pos (a : ℂ) :
    ∃ b : ℝ → ℝ, ContDiff ℝ ∞ b ∧ HasCompactSupport b ∧ Function.Even b ∧
      0 < (angularFourier (fun t => (b t : ℂ)) a).re := by
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

/-- A real even compactly supported `C∞` test with nonzero transform at a prescribed ordinate. -/
theorem exists_even_bump_angularFourier_ne_zero (a : ℂ) :
    ∃ b : ℝ → ℝ, ContDiff ℝ ∞ b ∧ HasCompactSupport b ∧ Function.Even b ∧
      angularFourier (fun t => (b t : ℂ)) a ≠ 0 := by
  obtain ⟨b, hc, hs, he, hp⟩ := exists_even_bump_angularFourier_re_pos a
  refine ⟨b, hc, hs, he, fun h => ?_⟩
  rw [h, Complex.zero_re] at hp
  exact lt_irrefl _ hp

theorem real_angularFourier_conj_neg (f : ℝ → ℝ) (z : ℂ) :
    conj (angularFourier (realTest f) z) = angularFourier (realTest f) (-conj z) := by
  unfold angularFourier realTest
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [map_mul, ← Complex.exp_conj, Complex.conj_ofReal, Complex.conj_I]
  congr 2
  ring

theorem realOdd_angularFourier_neg {f : ℝ → ℝ} (ho : Function.Odd f) (z : ℂ) :
    angularFourier (realTest f) (-z) = -angularFourier (realTest f) z := by
  unfold angularFourier realTest
  rw [← integral_neg_eq_self (fun t : ℝ => (f t : ℂ) * Complex.exp (I * (-z) * t)),
    ← integral_neg]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [ho t, Complex.ofReal_neg, Complex.ofReal_neg, show I * -z * -(t : ℂ) = I * z * t by ring, neg_mul]

/-- A fixed real affine cosine multiplier sets one nonzero complex
observation to one and preserves parity and all zeros of the transform. -/
theorem exists_real_angularFourier_normalization {f : ℝ → ℝ} (hfd : ContDiff ℝ ∞ f)
    (hfc : HasCompactSupport f) (a : ℂ) (haI : a.im ≠ 0)
    (hfne : angularFourier (realTest f) a ≠ 0) :
    ∃ g : ℝ → ℝ, ContDiff ℝ ∞ g ∧ HasCompactSupport g ∧
      (Function.Even f → Function.Even g) ∧ (Function.Odd f → Function.Odd g) ∧
      angularFourier (realTest g) a = 1 ∧
      ∀ z : ℂ, angularFourier (realTest f) z = 0 → angularFourier (realTest g) z = 0 := by
  let A := angularFourier (realTest f) a
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
        rw [real_angularFourier_conj_neg, hConj]
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
theorem exists_even_real_angularFourier_eq_one (a : ℂ) (haI : a.im ≠ 0) :
    ∃ f : ℝ → ℝ, ContDiff ℝ ∞ f ∧ HasCompactSupport f ∧ Function.Even f ∧
      angularFourier (realTest f) a = 1 := by
  obtain ⟨f, hfd, hfc, hfe, hfne⟩ := exists_even_bump_angularFourier_ne_zero a
  obtain ⟨g, hgd, hgc, hge, _, hg, _⟩ := exists_real_angularFourier_normalization hfd hfc a haI hfne
  exact ⟨g, hgd, hgc, hge hfe, hg⟩

/-- An exact real odd compact witness on a finite inner window. Its
transform takes value one at the selected ordinate and vanishes at the
specified non-orbit points. -/
theorem exists_odd_witness_on_finite_window {b : ℝ → ℝ} (hbd : ContDiff ℝ ∞ b)
    (hbc : HasCompactSupport b) (hbe : Function.Even b) {d : ℝ} (hd : d ≠ 0)
    {a : ℂ} (haI : a.im ≠ 0) (hb : angularFourier (realTest b) a = 1)
    (ha : |(d * a).re| < Real.pi) (W : Finset ℂ)
    (hW : ∀ w ∈ W, |(d * w).re| < Real.pi ∧ w ≠ a ∧ w ≠ -a ∧ w ≠ conj a ∧ w ≠ -conj a) :
    ∃ f : ℝ → ℝ, ContDiff ℝ ∞ f ∧ HasCompactSupport f ∧ Function.Odd f ∧
      angularFourier (realTest f) a = 1 ∧ ∀ w ∈ W, angularFourier (realTest f) w = 0 := by
  obtain ⟨p, hp, hpW⟩ := exists_real_cosine_filter hd W ha hW
  obtain ⟨u, hud, huc, hue, _, hu⟩ := cos_polynomial_real b d hbd hbc p
  obtain ⟨g, hgd, hgc, hgo, hg⟩ := antisymmetric_translate_real u d hud huc (hue hbe)
  have hSin : sin (d * a) ≠ 0 := by
    intro h
    obtain ⟨k, hk⟩ := Complex.sin_eq_zero_iff.mp h
    have h := congrArg Complex.im hk
    simp [Complex.mul_im, hd, haI] at h
  have hNonzero : angularFourier (realTest g) a ≠ 0 := by
    rw [hg, hu, hb, mul_one]
    exact mul_ne_zero (mul_ne_zero Complex.I_ne_zero hSin) hp
  obtain ⟨f, hfd, hfc, _, hfo, hf, hZeros⟩ :=
    exists_real_angularFourier_normalization hgd hgc a haI hNonzero
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

private theorem realConvolution_regular {f g : ℝ → ℝ} (hf : ContDiff ℝ ∞ f)
    (hfs : HasCompactSupport f) (hg : Continuous g) (hgs : HasCompactSupport g) :
    ContDiff ℝ ∞ (realConvolution f g) ∧ HasCompactSupport (realConvolution f g) :=
  ⟨hfs.contDiff_convolution_left (L := ContinuousLinearMap.mul ℝ ℝ) (μ := volume)
    hf hg.locallyIntegrable, hfs.convolution _ hgs⟩

private theorem angularFourier_realConvolution {f g : ℝ → ℝ} (hf : Continuous f) (hg : Continuous g)
    (hfs : HasCompactSupport f) (hgs : HasCompactSupport g) (z : ℂ) :
    angularFourier (realTest (realConvolution f g)) z =
      angularFourier (realTest f) z * angularFourier (realTest g) z := by
  let twist := fun (h : ℝ → ℝ) (t : ℝ) => (h t : ℂ) * Complex.exp (I * z * (t : ℂ))
  have integrable_twist {h : ℝ → ℝ} (hc : Continuous h) (hs : HasCompactSupport h) :
      Integrable (twist h) := integrable_realTest_mul_exp hc hs z
  have hconvolve (x : ℝ) :
      (realConvolution f g x : ℂ) * Complex.exp (I * z * (x : ℂ)) =
        convolution (twist f) (twist g) (ContinuousLinearMap.mul ℂ ℂ) volume x := by
    simp only [realConvolution, convolution_def, ContinuousLinearMap.mul_apply']
    rw [← integral_complex_ofReal, ← integral_mul_const]
    apply integral_congr_ae
    filter_upwards [] with t
    dsimp [twist]
    push_cast
    rw [show (x : ℂ) = (t : ℂ) + ((x - t : ℝ) : ℂ) by push_cast; ring, mul_add, Complex.exp_add]
    ring
  unfold angularFourier
  simp only [realTest, hconvolve]
  simpa only [ContinuousLinearMap.mul_apply'] using
    integral_convolution (ContinuousLinearMap.mul ℂ ℂ)
      (integrable_twist hf hfs) (integrable_twist hg hgs)

/-- The positive convolution power. Index `n` represents `n+1` factors. -/
def realConvolutionPower (b : ℝ → ℝ) : ℕ → ℝ → ℝ
  | 0 => b
  | n + 1 => realConvolution (realConvolutionPower b n) b

/-- A positive convolution power of a real even compact `C∞` test is again such a test,
and its actual angular Fourier transform is the corresponding pointwise power. -/
theorem realConvolutionPower_spec {b : ℝ → ℝ} (hb : ContDiff ℝ ∞ b)
    (hbs : HasCompactSupport b) (hbe : Function.Even b) (n : ℕ) :
    ContDiff ℝ ∞ (realConvolutionPower b n) ∧ HasCompactSupport (realConvolutionPower b n) ∧
      Function.Even (realConvolutionPower b n) ∧
      ∀ z : ℂ, angularFourier (fun t => (realConvolutionPower b n t : ℂ)) z =
        (angularFourier (fun t => (b t : ℂ)) z) ^ (n + 1) := by
  induction n with
  | zero => exact ⟨hb, hbs, hbe, fun z => (pow_one (angularFourier (fun t => (b t : ℂ)) z)).symm⟩
  | succ n ih =>
    rcases ih with ⟨hfc, hfs, hfe, hFT⟩
    obtain ⟨hc, hs⟩ := realConvolution_regular hfc hfs hb.continuous hbs
    refine ⟨hc, hs, fun x => ?_, fun z => ?_⟩
    · simpa only [realConvolutionPower, one_mul] using
        realConvolution_parity (c := 1) (fun t => by simpa only [one_mul] using hfe t) hbe x
    · rw [realConvolutionPower, angularFourier_realConvolution hfc.continuous hb.continuous hfs hbs,
        hFT]
      exact (pow_succ _ (n + 1)).symm

/-- Convolution with the positive power of an even test. -/
def realConvolutionWithPower (g b : ℝ → ℝ) (n : ℕ) : ℝ → ℝ :=
  realConvolution g (realConvolutionPower b n)

/-- Convolving a compact real odd test with an even convolution power preserves
its regularity, compact support and oddness and multiplies the literal transforms. -/
theorem realConvolutionWithPower_spec {g b : ℝ → ℝ} (hg : ContDiff ℝ ∞ g)
    (hgs : HasCompactSupport g) (hgo : Function.Odd g) (hb : ContDiff ℝ ∞ b)
    (hbs : HasCompactSupport b) (hbe : Function.Even b) (n : ℕ) :
    ContDiff ℝ ∞ (realConvolutionWithPower g b n) ∧
      HasCompactSupport (realConvolutionWithPower g b n) ∧
      Function.Odd (realConvolutionWithPower g b n) ∧
      ∀ z : ℂ, angularFourier (fun t => (realConvolutionWithPower g b n t : ℂ)) z =
        angularFourier (fun t => (g t : ℂ)) z *
          (angularFourier (fun t => (b t : ℂ)) z) ^ (n + 1) := by
  obtain ⟨hbc, hbcs, hbce, hbft⟩ := realConvolutionPower_spec hb hbs hbe n
  obtain ⟨hc, hs⟩ := realConvolution_regular hg hgs hbc.continuous hbcs
  refine ⟨hc, hs, fun x => ?_, fun z => ?_⟩
  · simpa only [realConvolutionWithPower, neg_one_mul] using
      realConvolution_parity (c := -1) (fun t => by simpa only [neg_one_mul] using hgo t) hbce x
  · rw [realConvolutionWithPower, angularFourier_realConvolution hg.continuous hbc.continuous hgs hbcs,
      hbft]

/-- Inverse-square decay throughout the strip `|Im z| ≤ 1`. -/
theorem exists_angularFourier_decay {f : ℝ → ℝ}
    (hf : ContDiff ℝ ∞ f) (hfc : HasCompactSupport f) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ z : ℂ, |z.im| ≤ 1 →
      ‖angularFourier (realTest f) z‖ ≤ D / (1 + ‖z‖ ^ 2) := by
  let F := realTest f
  have hF : ContDiff ℝ ∞ F := Complex.ofRealCLM.contDiff.comp hf
  have hFc : HasCompactSupport F := hfc.comp_left Complex.ofReal_zero
  obtain ⟨A, hA, hball⟩ := hFc.isCompact.isBounded.subset_closedBall_lt 0 (0 : ℝ)
  have ha : tsupport F ⊆ Icc (-A) A := by
    intro t ht
    have h := hball ht
    rw [Metric.mem_closedBall, Real.dist_eq, sub_zero] at h
    exact abs_le.mp h
  let C := derivativeL1Cost F 2
  have hC : 0 ≤ C := derivativeL1Cost_nonneg _ _
  refine ⟨Real.exp A * C, by positivity, fun z hz => ?_⟩
  have h := norm_fourier_integral_le_decay F A hF hFc ha 2 z
  have hexp : Real.exp (A * |z.im|) ≤ Real.exp A :=
    Real.exp_le_exp.mpr (mul_le_of_le_one_right hA.le hz)
  have hd : 1 + ‖z‖ ^ 2 ≤ (1 + ‖z‖) ^ 2 := by nlinarith [norm_nonneg z]
  calc
    _ ≤ C * decayWeight A 2 z := h
    _ = (Real.exp (A * |z.im|) * C) / (1 + ‖z‖) ^ 2 := by unfold decayWeight; ring
    _ ≤ (Real.exp A * C) / (1 + ‖z‖) ^ 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right hexp hC) (by positivity)
    _ ≤ _ := div_le_div_of_nonneg_left (by positivity) (by positivity) hd

end GRWTSK.ComplexAnalysis.CompactOddFourierFilter
