/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.MeasureAndIntegration.FourierL1L2BridgeNamespaced
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFrobeniusPhaseSurplus
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddContinuousSine
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
# Continuous Plancherel for the original odd Weil correlations

This supplies the energy and signed real translate identities in §11 of
`WeilOddSupportBoundaryReflection.md` and the first source bridge recorded
in grwtsk/hs#2, comment 6887510656. Apply the inverse Fourier isometry to
the real lift and its translate, using the existing L¹/L² representative
theorem. The translation contributes a unit complex phase to the genuine
integral. Its real part is cosine. The odd Fourier identity supplies the
square factor 4, the angular change of variable supplies 1/(2π), and
reflection doubles the integral on positive frequencies.

These formulas supply the energy and each signed prime-power correlation
for the original arithmetic form. The complete gamma integration and
independent analytical review are separate obligations.
-/

set_option autoImplicit false

open MeasureTheory Set FourierTransform
open scoped BigOperators ComplexConjugate InnerProductSpace

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddContinuousSine

open SourcePrimeCorrelation
open GRWTSK.Analysis.RealAnalysis.Integration.IntegralFourierInvMulEq.Variantb1b3fc81ea79616750c2877dfe851642d25dce9c9d30da4206846df7a18e0650.FourierL1L2BridgeScratch

private theorem integral_fourierInv_pair {f g : ℝ → ℂ}
    (hf : Integrable f) (hg : Integrable g) (hf2 : MemLp f 2) (hg2 : MemLp g 2) :
    (∫ x : ℝ, conj (f x) * g x) = ∫ u : ℝ, conj ((𝓕⁻ f) u) * (𝓕⁻ g) u := by
  calc
    _ = ⟪hf2.toLp f, hg2.toLp g⟫_ℂ := by
      rw [L2.inner_def]
      apply integral_congr_ae
      filter_upwards [hf2.coeFn_toLp, hg2.coeFn_toLp] with x hfx hgx
      rw [hfx, hgx, RCLike.inner_apply']
    _ = ⟪(𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)), 𝓕⁻ (hg2.toLp g)⟫_ℂ :=
      ((Lp.fourierTransformₗᵢ ℝ ℂ).symm.inner_map_map _ _).symm
    _ = _ := by
      rw [L2.inner_def]
      apply integral_congr_ae
      filter_upwards [fourierInv_toLp_ae f hf hf2, fourierInv_toLp_ae g hg hg2] with u hfu hgu
      rw [hfu, hgu, RCLike.inner_apply']

private theorem fourierInv_translate (g : ℝ → ℂ) (r u : ℝ) :
    𝓕⁻ (fun t => g (t + r)) u =
      Complex.exp (-((2 * Real.pi * r * u : ℝ) : ℂ) * Complex.I) * (𝓕⁻ g) u := by
  have h := congrFun (VectorFourier.fourierIntegral_comp_add_right
    Real.fourierChar volume (-(innerₗ ℝ)) g r) u
  change VectorFourier.fourierIntegral Real.fourierChar volume (-(innerₗ ℝ))
      (fun t => g (t + r)) u =
    Complex.exp (-((2 * Real.pi * r * u : ℝ) : ℂ) * Complex.I) *
      VectorFourier.fourierIntegral Real.fourierChar volume (-(innerₗ ℝ)) g u
  simpa only [Function.comp_def, LinearMap.neg_apply, innerₗ_apply_apply,
    Real.inner_apply, Circle.smul_def, Real.fourierChar_apply, mul_neg, neg_mul,
    Complex.ofReal_neg, smul_eq_mul, mul_assoc] using h

private theorem halfSineMoment_neg (T : ℝ) (f : ℝ → ℝ) (ξ : ℝ) :
    halfSineMoment T f (-ξ) = -halfSineMoment T f ξ := by
  simp only [halfSineMoment, neg_mul, Real.sin_neg, mul_neg, intervalIntegral.integral_neg]

private theorem fourierInv_norm_sq_eq {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0) (u : ℝ) :
    ‖𝓕⁻ (fun t => (f t : ℂ)) u‖ ^ 2 = 4 * halfSineMoment T f (2 * Real.pi * u) ^ 2 := by
  rw [Real.fourierInv_eq', ← neg_neg (2 * Real.pi * u)]
  have hphase (t : ℝ) :
      Complex.exp ((↑(2 * Real.pi * ⟪t, u⟫_ℝ) : ℂ) * Complex.I) • (f t : ℂ) =
        (f t : ℂ) * Complex.exp (-Complex.I * ((-(2 * Real.pi * u) * t : ℝ) : ℂ)) := by
    rw [smul_eq_mul, mul_comm, Real.inner_apply]
    congr 2
    push_cast
    ring
  simp_rw [hphase, angularFourier_norm_sq_eq hT hf hodd hsupport, halfSineMoment_neg, neg_sq]

/-- The original signed real correlation at every physical shift is the cosine moment
against the continuous half-sine density in angular frequency. -/
theorem correlation_re_eq_sine_integral {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hf2 : MemLp (fun t => (f t : ℂ)) 2) (r : ℝ) :
    (correlation (fun t => (f t : ℂ)) r).re =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), Real.cos (r * ξ) * halfSineMoment T f ξ ^ 2 := by
  let g : ℝ → ℂ := fun t => (f t : ℂ)
  let k : ℝ → ℝ := fun ξ => Real.cos (r * ξ) * halfSineMoment T f ξ ^ 2
  have hg : Continuous g := Complex.continuous_ofReal.comp hf
  have hc : HasCompactSupport g := by
    apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := -T) (b := T))
    intro t ht
    by_contra hn
    exact ht (by simp [g, hsupport t hn])
  have hg1 : Integrable g := hg.integrable_of_hasCompactSupport hc
  have hm := measurePreserving_add_right (volume : Measure ℝ) r
  have hr1 : Integrable (fun t => g (t + r)) := hm.integrable_comp_of_integrable hg1
  have hr2 : MemLp (fun t => g (t + r)) 2 := hf2.comp_measurePreserving hm
  have hkernel (u : ℝ) :
      (conj ((𝓕⁻ g) u) * 𝓕⁻ (fun t => g (t + r)) u).re =
        4 * k ((2 * Real.pi) * u) := by
    rw [fourierInv_translate g r u, ← mul_left_comm, Complex.conj_mul', ← Complex.ofReal_pow,
      Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
    have hcos :
        (Complex.exp (-((2 * Real.pi * r * u : ℝ) : ℂ) * Complex.I)).re =
          Real.cos (r * (2 * Real.pi * u)) := by
      rw [← Complex.ofReal_neg, Complex.exp_mul_I, Complex.add_re, ← Complex.ofReal_cos,
        Complex.ofReal_re, ← Complex.ofReal_sin, Complex.mul_re, Complex.ofReal_im,
        Complex.I_re, mul_zero, zero_mul, sub_zero, add_zero, Real.cos_neg]
      congr 1
      ring
    rw [show ‖𝓕⁻ g u‖ ^ 2 = 4 * halfSineMoment T f (2 * Real.pi * u) ^ 2 from
      fourierInv_norm_sq_eq hT hf hodd hsupport u, hcos]
    dsimp [k]
    ring
  have hprod : Integrable (fun u => conj ((𝓕⁻ g) u) * 𝓕⁻ (fun t => g (t + r)) u) := by
    have hi := L2.integrable_inner (𝕜 := ℂ) (𝓕⁻ (hf2.toLp g)) (𝓕⁻ (hr2.toLp _))
    apply hi.congr
    filter_upwards [fourierInv_toLp_ae g hg1 hf2, fourierInv_toLp_ae _ hr1 hr2] with u hgu hru
    rw [hgu, hru, RCLike.inner_apply']
  have hpi : 0 < 2 * Real.pi := by positivity
  have hk : Integrable k := by
    apply (integrable_comp_mul_left_iff k hpi.ne').mp
    apply ((RCLike.reCLM (K := ℂ)).integrable_comp hprod |>.const_mul (1 / 4)).congr
    exact Filter.Eventually.of_forall (fun u => by
      change 1 / 4 * (conj ((𝓕⁻ g) u) * 𝓕⁻ (fun t => g (t + r)) u).re =
        k (2 * Real.pi * u)
      rw [hkernel]
      ring)
  have heven : Function.Even k := by
    intro ξ
    simp [k, mul_neg, Real.cos_neg, halfSineMoment_neg]
  have hfold : (∫ ξ : ℝ, k ξ) = 2 * ∫ ξ in Ioi (0 : ℝ), k ξ := by
    have hl := integral_comp_neg_Iic (0 : ℝ) k
    simp_rw [heven.eq, neg_zero] at hl
    rw [← intervalIntegral.integral_Iic_add_Ioi (b := (0 : ℝ)) hk.integrableOn hk.integrableOn,
      hl, two_mul]
  change (correlation g r).re = _
  rw [correlation, integral_fourierInv_pair hg1 hr1 hf2 hr2]
  change RCLike.re (∫ u : ℝ, conj ((𝓕⁻ g) u) * 𝓕⁻ (fun t => g (t + r)) u) = _
  rw [← integral_re hprod]
  change (∫ u : ℝ, (conj ((𝓕⁻ g) u) * 𝓕⁻ (fun t => g (t + r)) u).re) = _
  simp_rw [hkernel, integral_const_mul, Measure.integral_comp_mul_left, abs_of_pos (inv_pos.mpr hpi),
    smul_eq_mul, hfold]
  change 4 * ((2 * Real.pi)⁻¹ * (2 * ∫ ξ in Ioi (0 : ℝ), k ξ)) =
    (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), k ξ
  field_simp [Real.pi_ne_zero]

/-- Plancherel with the angular half-line normalization used by the original source. -/
theorem energy_eq_sine_integral {T : ℝ} (hT : 0 ≤ T) {f : ℝ → ℝ}
    (hf : Continuous f) (hodd : Function.Odd f)
    (hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0)
    (hf2 : MemLp (fun t => (f t : ℂ)) 2) :
    energy (fun t => (f t : ℂ)) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), halfSineMoment T f ξ ^ 2 := by
  have h := correlation_re_eq_sine_integral hT hf hodd hsupport hf2 0
  simpa only [correlation, add_zero, Complex.conj_mul', ← Complex.ofReal_pow,
    zero_mul, Real.cos_zero, one_mul, integral_complex_ofReal, Complex.ofReal_re, energy] using h

open CharacterWindow DirichletStageChain FrobeniusPhaseSurplus
open LowSchur OddRootProjection

/-- In the original primitive arithmetic value, the conductor term and every native signed
prime-power term use the same continuous sine density. The full gamma integral is retained in
physical coordinates for its separate nonnegative interchange proof. -/
theorem primitiveArithmeticValue_eq_sine_terms {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    primitiveArithmeticValue χ hp hn T (liftReal f) =
      gammaConstant q (gammaParity χ) *
        ((4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), halfSineMoment T f ξ ^ 2) +
      (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) -
      2 * ∑ n ∈ activePrimePowers T, pairedPrimeWeight χ n *
        ((4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
          Real.cos (Real.log (n : ℝ) * ξ) * halfSineMoment T f ξ ^ 2) := by
  rcases hf with ⟨hT, hdiff, _, hodd, hL2, hs, _⟩
  have hsupport : ∀ t, t ∉ Icc (-T) T → f t = 0 := fun t ht =>
    Complex.ofReal_eq_zero.mp (hs t ht)
  let C (n : ℕ) := correlation (liftReal f) (Real.log (n : ℝ))
  have hpaired := twistedPrime_eq_paired_of_realCorrelation χ T C (fun n _ =>
    liftReal_correlation_im_zero f (Real.log (n : ℝ)) hL2)
  have hE : energy (liftReal f) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), halfSineMoment T f ξ ^ 2 :=
    energy_eq_sine_integral hT.le hdiff.continuous hodd hsupport hL2
  have hC (n : ℕ) : (C n).re = (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
      Real.cos (Real.log (n : ℝ) * ξ) * halfSineMoment T f ξ ^ 2 :=
    correlation_re_eq_sine_integral hT.le hdiff.continuous hodd hsupport hL2 _
  unfold primitiveArithmeticValue
  change gammaConstant q (gammaParity χ) * energy (liftReal f) +
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) -
    twistedPrime T χ C = _
  simp_rw [hpaired, pairedPrimeResponse_native, hE, hC]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddContinuousSine
