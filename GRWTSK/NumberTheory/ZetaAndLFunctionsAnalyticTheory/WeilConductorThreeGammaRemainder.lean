/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelReturn

/-!
# Positive gamma remainder on the actual derivative carrier

The complete omitted positive-lag weight has an integrable exponential
majorant. Fubini therefore identifies its negative minimum-kernel pairing
with an integral of actual translated squared norms for compact C1 tests.
This proves the one-sided source comparison without charging the gamma
remainder as a negative error. The original signed arithmetic is unchanged.

The historical Fourier argument in `WeilConductorThreeRadiusFourScrewGreen`,
Section 4 at revision `06a747e6244febf917e797a672c5ea8f6e07064a`, remains
written analytical evidence at its stated scope. The present proof uses
the maintained minimum-kernel identity and actual product-measure Fubini.
It concerns compact C1 derivatives; it does not assert an H1 extension,
arbitrary mean-zero-input theorem, positive partial source, or RH/GRH.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open SourcePrimeCorrelation CharacterWindow OddRootProjection
open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction

/-- The actual integrated omitted gamma kernel. Its negative occurs in the
source-minus-partial difference. -/
def integratedGammaRemainder (M : ℕ) (x y : ℝ) : ℂ :=
  ((∫ r in Ioi (0 : ℝ), gammaRemainder M r * min |x - y| r) : ℝ)

/-- Positive remainder weight times the original conjugate-first pairing. -/
def gammaRemainderPairingIntegrand (M : ℕ) (u : ℝ → ℂ)
    (r : ℝ) (p : ℝ × ℝ) : ℂ :=
  (gammaRemainder M r : ℂ) * integrand (minimumKernel r) u u p

/-- The complete remainder contribution expressed in physical translation
energies, retaining the entire positive-lag integration domain. -/
def gammaRemainderEnergy (M : ℕ) (f : ℝ → ℂ) : ℝ :=
  ∫ r in Ioi (0 : ℝ),
    gammaRemainder M r * energy (fun t => f (t + r) - f t)

theorem gammaRemainder_nonneg (M : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaRemainder M r := by
  have hd : 0 < 1 - Real.exp (-2 * r) := by
    apply sub_pos.mpr
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  unfold gammaRemainder gammaTerm
  exact div_nonneg (Real.exp_pos _).le hd.le

theorem gammaRemainderPairingIntegrand_eq
    (M : ℕ) (u : ℝ → ℂ) (r : ℝ) (p : ℝ × ℝ) :
    gammaRemainderPairingIntegrand M u r p =
      conj (u p.1) * ((gammaRemainder M r * min |p.1 - p.2| r : ℝ) : ℂ) *
        u p.2 := by
  simp only [gammaRemainderPairingIntegrand, integrand, minimumKernel,
    Complex.ofReal_mul, starRingEnd_apply]
  ring

/-- Absolute integrability uses the complete majorant
`exp (-(gammaRate M - 1) * r) / 2` times the product of input norms. -/
theorem integrable_gammaRemainderPairingIntegrand
    (M : ℕ) (u : ℝ → ℂ) (hu : Integrable u volume) :
    Integrable (fun q : ℝ × (ℝ × ℝ) =>
      gammaRemainderPairingIntegrand M u q.1 q.2)
      (gammaLagMeasure.prod (volume.prod volume)) := by
  have hdec : -(gammaRate M - 1) < 0 := by
    unfold gammaRate
    have hM : (0 : ℝ) ≤ M := Nat.cast_nonneg M
    linarith
  have he : Integrable
      (fun r : ℝ => (1 / 2 : ℝ) * Real.exp (-(gammaRate M - 1) * r))
      gammaLagMeasure :=
    (integrableOn_exp_mul_Ioi hdec 0).const_mul (1 / 2 : ℝ)
  have hm : Measurable (fun q : ℝ × (ℝ × ℝ) =>
      ((gammaRemainder M q.1 * min |q.2.1 - q.2.2| q.1 : ℝ) : ℂ)) := by
    unfold gammaRemainder gammaTerm
    fun_prop
  have hx : AEStronglyMeasurable (fun p : ℝ × ℝ => conj (u p.1))
      (volume.prod volume) := hu.aestronglyMeasurable.star.comp_fst
  have hy : AEStronglyMeasurable (fun p : ℝ × ℝ => u p.2)
      (volume.prod volume) := hu.aestronglyMeasurable.comp_snd
  have hmeas : AEStronglyMeasurable
      (fun q : ℝ × (ℝ × ℝ) => gammaRemainderPairingIntegrand M u q.1 q.2)
      (gammaLagMeasure.prod (volume.prod volume)) := by
    simpa only [gammaRemainderPairingIntegrand_eq, Pi.mul_def] using
      (hx.comp_snd.mul hm.aestronglyMeasurable).mul hy.comp_snd
  have hpos : ∀ᵐ q : ℝ × (ℝ × ℝ) ∂gammaLagMeasure.prod (volume.prod volume),
      0 < q.1 := by
    apply (Measure.ae_prod_iff_ae_ae
      (show MeasurableSet {q : ℝ × (ℝ × ℝ) | 0 < q.1} from
        measurableSet_Ioi.preimage measurable_fst)).mpr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact Filter.Eventually.of_forall (fun _ => hr)
  apply (he.mul_prod (hu.norm.mul_prod hu.norm)).mono' hmeas
  filter_upwards [hpos] with q hq
  have hb := gammaRemainder_majorant M (q.2.1 - q.2.2) hq
  rw [gammaRemainderPairingIntegrand_eq, norm_mul, norm_mul,
    starRingEnd_apply, norm_star, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hb.1]
  calc
    ‖u q.2.1‖ * (gammaRemainder M q.1 * min |q.2.1 - q.2.2| q.1) * ‖u q.2.2‖ ≤
        ‖u q.2.1‖ * ((1 / 2 : ℝ) * Real.exp (-(gammaRate M - 1) * q.1)) *
          ‖u q.2.2‖ :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hb.2 (norm_nonneg _)) (norm_nonneg _)
    _ = ((1 / 2 : ℝ) * Real.exp (-(gammaRate M - 1) * q.1)) *
        (‖u q.2.1‖ * ‖u q.2.2‖) := by ring

theorem integral_gammaRemainderPairingIntegrand
    (M : ℕ) (u : ℝ → ℂ) (p : ℝ × ℝ) :
    (∫ r, gammaRemainderPairingIntegrand M u r p ∂gammaLagMeasure) =
      integrand (integratedGammaRemainder M) u u p := by
  simp_rw [gammaRemainderPairingIntegrand_eq]
  rw [integral_mul_const, integral_const_mul, integral_complex_ofReal]
  rfl

theorem integral_gammaRemainderPairingIntegrand_pair
    (M : ℕ) (u : ℝ → ℂ) (r : ℝ) :
    (∫ p : ℝ × ℝ, gammaRemainderPairingIntegrand M u r p ∂volume.prod volume) =
      (gammaRemainder M r : ℂ) * kernelForm volume (minimumKernel r) u u := by
  unfold gammaRemainderPairingIntegrand
  rw [integral_const_mul]
  rfl

/-- The actual integrated remainder can be paired with every complex L1 input. -/
theorem integrable_integratedGammaRemainder
    (M : ℕ) (u : ℝ → ℂ) (hu : Integrable u volume) :
    Integrable (integrand (integratedGammaRemainder M) u u)
      (volume.prod volume) := by
  apply (integrable_gammaRemainderPairingIntegrand M u hu).integral_prod_right.congr
  exact Filter.Eventually.of_forall (integral_gammaRemainderPairingIntegrand M u)

theorem integrable_gammaRemainderKernelForms
    (M : ℕ) (u : ℝ → ℂ) (hu : Integrable u volume) :
    Integrable (fun r => (gammaRemainder M r : ℂ) *
      kernelForm volume (minimumKernel r) u u) gammaLagMeasure := by
  apply (integrable_gammaRemainderPairingIntegrand M u hu).integral_prod_left.congr
  exact Filter.Eventually.of_forall (integral_gammaRemainderPairingIntegrand_pair M u)

/-- Fubini for the entire actual remainder, including the singular endpoint
and every positive lag. -/
theorem kernelForm_integratedGammaRemainder
    (M : ℕ) (u : ℝ → ℂ) (hu : Integrable u volume) :
    kernelForm volume (integratedGammaRemainder M) u u =
      ∫ r in Ioi (0 : ℝ), (gammaRemainder M r : ℂ) *
        kernelForm volume (minimumKernel r) u u := by
  have h := integral_integral_swap (f := gammaRemainderPairingIntegrand M u)
    (integrable_gammaRemainderPairingIntegrand M u hu)
  simp_rw [integral_gammaRemainderPairingIntegrand,
    integral_gammaRemainderPairingIntegrand_pair] at h
  exact h.symm

private theorem kernelForm_neg_remainder_local (K : ℝ → ℝ → ℂ) (u : ℝ → ℂ) :
    kernelForm volume (fun x y => -K x y) u u = -kernelForm volume K u u := by
  unfold kernelForm
  rw [← integral_neg]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun p => by simp [integrand])

theorem kernelForm_neg_integratedGammaRemainder
    (M : ℕ) (u : ℝ → ℂ) (hu : Integrable u volume) :
    kernelForm volume (fun x y => -integratedGammaRemainder M x y) u u =
      ∫ r in Ioi (0 : ℝ), (gammaRemainder M r : ℂ) *
        kernelForm volume (fun x y => -minimumKernel r x y) u u := by
  rw [kernelForm_neg_remainder_local,
    kernelForm_integratedGammaRemainder M u hu, ← integral_neg]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun r => by
    dsimp only
    rw [kernelForm_neg_remainder_local]
    ring)

/-- The actual translated-energy density is integrable by the proved
triple-product majorant and the minimum-kernel identity. -/
theorem integrable_gammaRemainderEnergyDensity
    (M : ℕ) {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    IntegrableOn (fun r => gammaRemainder M r *
      energy (fun t => f (t + r) - f t)) (Ioi (0 : ℝ)) := by
  have hi := (integrable_gammaRemainderKernelForms M (deriv f)
    (integrable_deriv_of_compactC1 hf hc)).neg.re
  apply hi.congr
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  have h := kernelForm_neg_minimum_deriv hf hc hr.le
  rw [kernelForm_neg_remainder_local] at h
  have heq : -((gammaRemainder M r : ℂ) *
      kernelForm volume (minimumKernel r) (deriv f) (deriv f)) =
      ((gammaRemainder M r * energy (fun t => f (t + r) - f t) : ℝ) : ℂ) := by
    rw [neg_mul_eq_mul_neg, h]
    simp only [Complex.ofReal_mul]
  exact congrArg Complex.re heq

/-- The complete omitted source is exactly an integral of actual squared
translation norms, on the original compact C1 derivative carrier. -/
theorem kernelForm_neg_gammaRemainder_deriv
    (M : ℕ) {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    kernelForm volume (fun x y => -integratedGammaRemainder M x y)
      (deriv f) (deriv f) = (gammaRemainderEnergy M f : ℂ) := by
  rw [kernelForm_neg_integratedGammaRemainder M (deriv f)
    (integrable_deriv_of_compactC1 hf hc)]
  unfold gammaRemainderEnergy
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  rw [kernelForm_neg_minimum_deriv hf hc hr.le]
  simp only [Complex.ofReal_mul]

theorem gammaRemainderEnergy_nonneg (M : ℕ) (f : ℝ → ℂ) :
    0 ≤ gammaRemainderEnergy M f := by
  unfold gammaRemainderEnergy
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  apply mul_nonneg (gammaRemainder_nonneg M hr)
  exact integral_nonneg (fun t => sq_nonneg ‖f (t + r) - f t‖)

/-- Exact source identity: the gamma constant and signed prime terms cancel
and leave the negative complete integrated remainder. -/
theorem sourceConvolutionKernel_sub_partial_eq (M : ℕ) (x y : ℝ) :
    sourceConvolutionKernel x y - (partialSourceKernel M (x - y) : ℂ) =
      -integratedGammaRemainder M x y := by
  simpa only [sourceConvolutionKernel, integratedGammaRemainder,
    Complex.ofReal_sub, Complex.ofReal_neg] using
    congrArg (fun t : ℝ => (t : ℂ)) (sourceKernel_sub_partial_eq M (x - y))

/-- The partial source has a genuine whole-line pairing on the derivative
carrier, derived from integrability of the full source and its remainder. -/
theorem integrable_partialSourceKernel_deriv
    (M : ℕ) {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    Integrable (integrand (fun x y => (partialSourceKernel M (x - y) : ℂ))
      (deriv f) (deriv f)) (volume.prod volume) := by
  have hsource := integrable_sourceKernel_deriv hf hc
  have hrem := integrable_integratedGammaRemainder M (deriv f)
    (integrable_deriv_of_compactC1 hf hc)
  apply (hsource.add hrem).congr
  filter_upwards with p
  have h := sourceConvolutionKernel_sub_partial_eq M p.1 p.2
  have heq : (partialSourceKernel M (p.1 - p.2) : ℂ) =
      sourceConvolutionKernel p.1 p.2 + integratedGammaRemainder M p.1 p.2 := by
    linear_combination -h
  simp only [Pi.add_apply, integrand, heq]
  ring

/-- Exact real excess of the original arithmetic functional over the
finite-gamma kernel form. All source terms and their normalizations remain. -/
theorem arithmeticValue_sub_partialSourceKernel_form
    (M : ℕ) {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f -
      (kernelForm volume (fun x y => (partialSourceKernel M (x - y) : ℂ))
        (deriv f) (deriv f)).re = gammaRemainderEnergy M f := by
  have h := kernelForm_sub (integrable_sourceKernel_deriv hf hc)
    (integrable_partialSourceKernel_deriv M hf hc)
  simp_rw [sourceConvolutionKernel_sub_partial_eq] at h
  rw [kernelForm_neg_gammaRemainder_deriv M hf hc,
    wholeline_sourceKernel_deriv hf hc] at h
  have hre := congrArg Complex.re h
  simpa only [Complex.ofReal_re, Complex.sub_re] using hre.symm

/-- The finite-gamma source is a lower approximation on every actual
compact C1 derivative. This order does not assert positivity of either form. -/
theorem partialSourceKernel_form_le_arithmeticValue
    (M : ℕ) {f : ℝ → ℂ} (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f) :
    (kernelForm volume (fun x y => (partialSourceKernel M (x - y) : ℂ))
      (deriv f) (deriv f)).re ≤
      primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
        modThreeQuadratic_nonprincipal 4 f := by
  have h := arithmeticValue_sub_partialSourceKernel_form M hf hc
  have hp := gammaRemainderEnergy_nonneg M f
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
