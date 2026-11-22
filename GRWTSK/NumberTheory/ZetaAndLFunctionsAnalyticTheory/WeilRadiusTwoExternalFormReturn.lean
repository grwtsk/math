/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierL1L2ForwardNamespaced
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaFourierReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowPoleReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal

/-!
# Real odd radius-two form normalization

Section 2, equation (2.1), of bramble_trace, *Full-source Schur certificates for
Weil positivity at support radius two*, v1 (2026-10-26):
https://rstation.ai/api/v1/papers/riemann_hypothesis_60/versions/1/download

The real lift and its translate admit the genuine forward integrals in L².
The phase and the angular change of variable give cosine inversion on the
whole original L² class. This supplies the finite-energy gamma return.
On the radius-two support, the existing prime inventory gives the complete
prime-power term. The two imaginary evaluations are the opposite real
exponential moments, whose product gives the signed odd pole.

The last implication takes nonnegativity on the original finite-energy domain
as a hypothesis. A use of Theorem 1.1 also needs the Friedrichs-form domain
identification and qualification of the external certificate.
Source proof candidate. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set FourierTransform
open scoped ComplexConjugate InnerProductSpace

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoExternalFormReturn

open OddRootProjection OddWrapEnergy OddHighComplement OddSineForm
open OddWindowPoleReturn GammaFourierReturn
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.IntegralFourierMulEq.Variant647d94f114880368d729657b6852aabf47309a10abe7751c8e7fc2b1251a7b1e.FourierL1L2ForwardScratch

/-- Squared modulus in the convention `F(w) = ∫ f(x) exp(-i*w*x) dx`. -/
def angularSpectrum (f : ℝ → ℝ) (w : ℝ) : ℝ :=
  ‖(𝓕 (fun x => (f x : ℂ))) (w / (2 * Real.pi))‖ ^ 2

private theorem fourier_translate (g : ℝ → ℂ) (r u : ℝ) :
    𝓕 (fun x => g (x + r)) u =
      Complex.exp (((2 * Real.pi * r * u : ℝ) : ℂ) * Complex.I) * (𝓕 g) u := by
  have h := congrFun (VectorFourier.fourierIntegral_comp_add_right
    Real.fourierChar volume (innerₗ ℝ) g r) u
  change VectorFourier.fourierIntegral Real.fourierChar volume (innerₗ ℝ)
      (fun x => g (x + r)) u =
    Complex.exp (((2 * Real.pi * r * u : ℝ) : ℂ) * Complex.I) *
      VectorFourier.fourierIntegral Real.fourierChar volume (innerₗ ℝ) g u
  simpa only [Function.comp_def, innerₗ_apply_apply, Real.inner_apply,
    Circle.smul_def, Real.fourierChar_apply, smul_eq_mul, mul_assoc] using h

/-- Cosine inversion of the real autocorrelation on the actual L¹ and L²
domain, without a continuity or pointwise boundary condition on the input. -/
theorem angularSpectrum_cosine_inversion {f : ℝ → ℝ}
    (hf1 : Integrable f volume) (hf2 : MemLp f 2 volume) :
    Measurable (angularSpectrum f) ∧ Integrable (angularSpectrum f) ∧
      ∀ r : ℝ,
        (∫ x : ℝ, f x * f (x + r)) =
          (∫ w : ℝ, Real.cos (w * r) * angularSpectrum f w) / (2 * Real.pi) := by
  let g : ℝ → ℂ := fun x => (f x : ℂ)
  let c := 2 * Real.pi
  have hc : 0 < c := by dsimp [c]; positivity
  have hg1 : Integrable g := Complex.ofRealCLM.integrable_comp hf1
  have hg2 : MemLp g 2 := hf2.ofReal
  have hcanc (u : ℝ) : c * u / (2 * Real.pi) = u := by
    dsimp [c]
    field_simp [Real.pi_ne_zero]
  have hSpec (u : ℝ) : angularSpectrum f (c * u) = ‖𝓕 g u‖ ^ 2 := by
    simp only [angularSpectrum, hcanc, g]
  refine ⟨?_, ?_, ?_⟩
  · have hContinuous : Continuous (fun w : ℝ => 𝓕 g (w / (2 * Real.pi))) :=
      (continuous_fourier g hg1).comp (by fun_prop)
    exact (hContinuous.norm.pow 2).measurable
  · apply (integrable_comp_mul_left_iff (angularSpectrum f) hc.ne').mp
    simpa only [hSpec] using (fourier_memLp g hg1 hg2).integrable_norm_pow
      (show (2 : ℕ) ≠ 0 by norm_num)
  · intro r
    let gr : ℝ → ℂ := fun x => g (x + r)
    let k : ℝ → ℝ := fun w => Real.cos (w * r) * angularSpectrum f w
    have hmp := measurePreserving_add_right (volume : Measure ℝ) r
    have hgr1 : Integrable gr := hmp.integrable_comp_of_integrable hg1
    have hgr2 : MemLp gr 2 := hg2.comp_measurePreserving hmp
    have hPair :
        (∫ x : ℝ, conj (g x) * gr x) =
          ∫ u : ℝ, conj ((𝓕 g) u) * (𝓕 gr) u := by
      calc
        _ = ⟪hg2.toLp g, hgr2.toLp gr⟫_ℂ := by
          rw [L2.inner_def]
          apply integral_congr_ae
          filter_upwards [hg2.coeFn_toLp, hgr2.coeFn_toLp] with x hx hy
          rw [hx, hy, RCLike.inner_apply']
        _ = ⟪(𝓕 (hg2.toLp g) : Lp ℂ 2 (volume : Measure ℝ)),
              𝓕 (hgr2.toLp gr)⟫_ℂ :=
          ((Lp.fourierTransformₗᵢ ℝ ℂ).inner_map_map _ _).symm
        _ = _ := by
          rw [L2.inner_def]
          apply integral_congr_ae
          filter_upwards [fourier_toLp_ae g hg1 hg2, fourier_toLp_ae gr hgr1 hgr2] with u hu hv
          rw [hu, hv, RCLike.inner_apply']
    have hProd : Integrable (fun u => conj ((𝓕 g) u) * (𝓕 gr) u) := by
      have h := L2.integrable_inner (𝕜 := ℂ) (𝓕 (hg2.toLp g)) (𝓕 (hgr2.toLp gr))
      apply h.congr
      filter_upwards [fourier_toLp_ae g hg1 hg2, fourier_toLp_ae gr hgr1 hgr2] with u hu hv
      rw [hu, hv, RCLike.inner_apply']
    have hKernel (u : ℝ) :
        (conj ((𝓕 g) u) * (𝓕 gr) u).re = k (c * u) := by
      have hphase :
          (Complex.exp (((2 * Real.pi * r * u : ℝ) : ℂ) * Complex.I)).re =
            Real.cos ((c * u) * r) := by
        rw [Complex.exp_mul_I, Complex.add_re, ← Complex.ofReal_cos, Complex.ofReal_re,
          ← Complex.ofReal_sin, Complex.mul_re, Complex.ofReal_im, Complex.I_re,
          zero_mul, mul_zero, sub_zero, add_zero]
        congr 1
        dsimp [c]
        ring
      rw [show 𝓕 gr u = _ from fourier_translate g r u, ← mul_left_comm,
        Complex.conj_mul', ← Complex.ofReal_pow, Complex.mul_re, Complex.ofReal_re,
        Complex.ofReal_im, mul_zero, sub_zero, hphase]
      dsimp [k]
      rw [hSpec]
    have hInput (x : ℝ) : conj (g x) * gr x = ((f x * f (x + r) : ℝ) : ℂ) := by
      simp only [g, gr, Complex.conj_ofReal, Complex.ofReal_mul]
    simp_rw [hInput, integral_complex_ofReal] at hPair
    have hReal := congrArg Complex.re hPair
    change (∫ x : ℝ, f x * f (x + r)) =
      RCLike.re (∫ u : ℝ, conj ((𝓕 g) u) * (𝓕 gr) u) at hReal
    rw [← integral_re hProd] at hReal
    change (∫ x : ℝ, f x * f (x + r)) =
      ∫ u : ℝ, (conj ((𝓕 g) u) * (𝓕 gr) u).re at hReal
    simp_rw [hKernel] at hReal
    change (∫ x : ℝ, f x * f (x + r)) = (∫ w : ℝ, k w) / c
    rw [hReal, Measure.integral_comp_mul_left, abs_of_pos (inv_pos.mpr hc), smul_eq_mul]
    exact (div_eq_inv_mul _ _).symm

/-- Equation (2.1) on the real radius-two support. The prime cutoff loses
only zero correlations and the two pole evaluations are real moments. -/
def paperForm (f : ℝ → ℝ) : ℝ :=
  (∫ w : ℝ, ((Complex.digamma (1 / 4 + Complex.I * (w : ℂ) / 2)).re - Real.log Real.pi) *
    angularSpectrum f w) / (2 * Real.pi) +
    2 * (∫ x : ℝ, f x * Real.exp (x / 2)) * (∫ x : ℝ, f x * Real.exp (-x / 2)) -
    primeEnergy 2 f

/-- The pole-inclusive unshifted form differs from the shifted physical
core by the odd pole charge and half the whole-line mass. -/
theorem core_eq_form_add_pole_add_half_mass {f : ℝ → ℝ}
    (hf : MemLp f 2 volume) (ho : Function.Odd f)
    (hs : ∀ᵐ x : ℝ, x ∉ Icc (-2) 2 → f x = 0)
    (he : IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0)) :
    shiftedOddCoreEnergy 2 (-1 / 2) f =
      paperForm f + 2 * (∫ x : ℝ, f x * Real.sinh (x / 2)) ^ 2 +
        (1 / 2) * (∫ x : ℝ, ‖f x‖ ^ 2) := by
  have hfOn : IntegrableOn f (Icc (-2 : ℝ) 2) := (hf.restrict _).integrable (by norm_num)
  have hf1 : Integrable f := by
    apply ((integrable_indicator_iff measurableSet_Icc).2 hfOn).congr
    filter_upwards [hs] with x hx
    by_cases h : x ∈ Icc (-2 : ℝ) 2 <;> simp [h, hx]
  obtain ⟨hMeas, hInt, hCos⟩ := angularSpectrum_cosine_inversion hf1 hf
  have hGamma := zeta_archimedean_eq_of_cosine_inversion hf hMeas hInt
    (fun w => sq_nonneg _) hCos he
  have hPole :
      2 * (∫ x : ℝ, f x * Real.exp (x / 2)) * (∫ x : ℝ, f x * Real.exp (-x / 2)) =
        -2 * (∫ x : ℝ, f x * Real.sinh (x / 2)) ^ 2 := by
    have h := shiftedOddWeilEnergy_eq_core_add_pole_moments 2 0 hf
      (Filter.Eventually.of_forall ho) hs
    unfold OddLiteralWindow.shiftedOddWeilEnergy at h
    nlinarith only [h]
  unfold shiftedOddCoreEnergy paperForm
  rw [← hGamma, hPole]
  simp only [Real.norm_eq_abs, sq_abs]
  ring

/-- Nonnegativity on the translated paper form domain gives the original
cutoff-64 premise used by the radius-two packet. -/
theorem highFloor_of_form_nonnegative
    (hForm : ∀ ⦃f : ℝ → ℝ⦄, MemLp f 2 volume → Measurable f → Function.Odd f →
      (∀ᵐ x : ℝ, x ∉ Icc (-2) 2 → f x = 0) →
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) →
      0 ≤ paperForm f) :
    OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64 := by
  intro f hf hm ho hs _ he
  rw [core_eq_form_add_pole_add_half_mass hf ho hs he]
  have hMass : 0 ≤ ∫ x : ℝ, ‖f x‖ ^ 2 := integral_nonneg (fun _ => sq_nonneg _)
  linarith only [hForm hf hm ho hs he, hMass, sq_nonneg (∫ x : ℝ, f x * Real.sinh (x / 2))]


/-- Nonnegativity of the original pole-inclusive form gives the literal
radius-two stage inequality directly. The odd pole charge cancels exactly. -/
theorem stageLower_one_of_form_nonnegative
    (hForm : ∀ ⦃f : ℝ → ℝ⦄, MemLp f 2 volume → Measurable f → Function.Odd f →
      (∀ᵐ x : ℝ, x ∉ Icc (-2) 2 → f x = 0) →
      IntegrableOn (fun r => parityKernel 0 r * zeroShiftEnergy r f) (Ioi 0) →
      0 ≤ paperForm f) :
    OddLiteralCofinal.StageLower 1 := by
  intro f hf hm ho hs he
  have hRadius : ((1 : ℕ) : ℝ) + 1 = 2 := by norm_num
  rw [hRadius] at hs ⊢
  rw [pow_one, ← neg_div]
  unfold OddLiteralWindow.shiftedOddWeilEnergy
  rw [core_eq_form_add_pole_add_half_mass hf ho hs he]
  have hMass : 0 ≤ ∫ x : ℝ, ‖f x‖ ^ 2 := integral_nonneg (fun _ => sq_nonneg _)
  linarith only [hForm hf hm ho hs he, hMass]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoExternalFormReturn
