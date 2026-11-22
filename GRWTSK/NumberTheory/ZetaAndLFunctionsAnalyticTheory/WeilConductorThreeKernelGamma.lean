/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.FunctionalAnalysis.IntegralKernelApproximation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelTruncation

/-!
# The actual gamma integral commutes with the whole-line kernel pairing

The parity-one minimum kernel has the complete positive-half-line majorant
`exp (-r / 2) / 2`. Paired with an arbitrary complex L1 function, this is
an integrable majorant on the genuine triple product measure. Fubini then
identifies the integrated kernel pairing with the integral of its pairings.

No compact-support, derivative-energy, arithmetic sign, or source-return
identity is assumed. The two signs below refer to the sign of the kernel,
not to positivity of the associated quadratic form.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open OddRootProjection
open GRWTSK.FunctionalAnalysis.IntegralKernelApproximation

/-- Lebesgue measure on the actual positive-lag integration domain. -/
abbrev gammaLagMeasure : Measure ℝ := volume.restrict (Ioi (0 : ℝ))

/-- The real minimum kernel, retained in the complex pairing convention. -/
def minimumKernel (r x y : ℝ) : ℂ := (min |x - y| r : ℝ)

/-- The exact integrated gamma part of the maintained source kernel.
The arithmetic source uses its negative. -/
def integratedGammaKernel (x y : ℝ) : ℂ :=
  ((∫ r in Ioi (0 : ℝ), parityKernel 1 r * min |x - y| r) : ℝ)

/-- The actual lag-dependent integrand, with conjugate-first pairing. -/
def gammaPairingIntegrand (u : ℝ → ℂ) (r : ℝ) (p : ℝ × ℝ) : ℂ :=
  (parityKernel 1 r : ℂ) * integrand (minimumKernel r) u u p

theorem gammaPairingIntegrand_eq (u : ℝ → ℂ) (r : ℝ) (p : ℝ × ℝ) :
    gammaPairingIntegrand u r p =
      conj (u p.1) * ((parityKernel 1 r * min |p.1 - p.2| r : ℝ) : ℂ) * u p.2 := by
  simp only [gammaPairingIntegrand, integrand, minimumKernel, Complex.ofReal_mul,
    starRingEnd_apply]
  ring

/-- The entire gamma kernel, including its endpoint and infinite lag tail,
has the existing zero-cutoff exponential majorant. -/
theorem parity_min_majorant (t : ℝ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel 1 r * min |t| r ∧
      parityKernel 1 r * min |t| r ≤ (1 / 2 : ℝ) * Real.exp (-(1 / 2 : ℝ) * r) := by
  have h := gammaRemainder_majorant 0 t hr
  norm_num [gammaRemainder, gammaTerm, gammaRate, parityKernel] at h ⊢
  exact h

/-- Every nonnegative-lag minimum kernel is paired by an actual integrable
product, even without compact support or an L2 hypothesis. -/
theorem integrable_minimumKernel (u : ℝ → ℂ) (hu : Integrable u volume)
    {r : ℝ} (hr : 0 ≤ r) :
    Integrable (integrand (minimumKernel r) u u) (volume.prod volume) := by
  have hk : Measurable (fun p : ℝ × ℝ => minimumKernel r p.1 p.2) := by
    unfold minimumKernel
    fun_prop
  apply ((hu.norm.mul_prod hu.norm).const_mul r).mono'
  · exact (hu.aestronglyMeasurable.star.comp_fst.mul hk.aestronglyMeasurable).mul
      hu.aestronglyMeasurable.comp_snd
  · filter_upwards with p
    simp only [integrand, minimumKernel, norm_mul, norm_star, Complex.norm_real,
      Real.norm_eq_abs, abs_of_nonneg (le_min (abs_nonneg (p.1 - p.2)) hr)]
    calc
      ‖u p.1‖ * min |p.1 - p.2| r * ‖u p.2‖ ≤ ‖u p.1‖ * r * ‖u p.2‖ :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left (min_le_right _ _) (norm_nonneg _)) (norm_nonneg _)
      _ = r * (‖u p.1‖ * ‖u p.2‖) := by ring

/-- Absolute integrability on the actual triple product measure. Its
majorant is `(exp (-r/2)/2) * (norm(u x) * norm(u y))`. -/
theorem integrable_gammaPairingIntegrand (u : ℝ → ℂ) (hu : Integrable u volume) :
    Integrable (fun q : ℝ × (ℝ × ℝ) => gammaPairingIntegrand u q.1 q.2)
      (gammaLagMeasure.prod (volume.prod volume)) := by
  have he : Integrable (fun r : ℝ => (1 / 2 : ℝ) * Real.exp (-(1 / 2 : ℝ) * r))
      gammaLagMeasure :=
    (integrableOn_exp_mul_Ioi (by norm_num : -(1 / 2 : ℝ) < 0) 0).const_mul (1 / 2 : ℝ)
  have hm : Measurable (fun q : ℝ × (ℝ × ℝ) =>
      ((parityKernel 1 q.1 * min |q.2.1 - q.2.2| q.1 : ℝ) : ℂ)) := by
    unfold parityKernel
    fun_prop
  have hx : AEStronglyMeasurable (fun p : ℝ × ℝ => conj (u p.1))
      (volume.prod volume) := hu.aestronglyMeasurable.star.comp_fst
  have hy : AEStronglyMeasurable (fun p : ℝ × ℝ => u p.2)
      (volume.prod volume) := hu.aestronglyMeasurable.comp_snd
  have hmeas : AEStronglyMeasurable
      (fun q : ℝ × (ℝ × ℝ) => gammaPairingIntegrand u q.1 q.2)
      (gammaLagMeasure.prod (volume.prod volume)) := by
    simpa only [gammaPairingIntegrand_eq, Pi.mul_def] using
      (hx.comp_snd.mul hm.aestronglyMeasurable).mul hy.comp_snd
  have hpos : ∀ᵐ q : ℝ × (ℝ × ℝ) ∂gammaLagMeasure.prod (volume.prod volume), 0 < q.1 := by
    apply (Measure.ae_prod_iff_ae_ae
      (show MeasurableSet {q : ℝ × (ℝ × ℝ) | 0 < q.1} from
        measurableSet_Ioi.preimage measurable_fst)).mpr
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact Filter.Eventually.of_forall (fun _ => hr)
  apply (he.mul_prod (hu.norm.mul_prod hu.norm)).mono' hmeas
  filter_upwards [hpos] with q hq
  have hb := parity_min_majorant (q.2.1 - q.2.2) hq
  rw [gammaPairingIntegrand_eq, norm_mul, norm_mul, starRingEnd_apply, norm_star,
    Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hb.1]
  calc
    ‖u q.2.1‖ * (parityKernel 1 q.1 * min |q.2.1 - q.2.2| q.1) * ‖u q.2.2‖ ≤
        ‖u q.2.1‖ * ((1 / 2 : ℝ) * Real.exp (-(1 / 2 : ℝ) * q.1)) * ‖u q.2.2‖ :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hb.2 (norm_nonneg _)) (norm_nonneg _)
    _ = ((1 / 2 : ℝ) * Real.exp (-(1 / 2 : ℝ) * q.1)) *
        (‖u q.2.1‖ * ‖u q.2.2‖) := by ring

/-- Integrating the actual lag integrand gives the original integrated
gamma kernel integrand, with its real-to-complex cast preserved. -/
theorem integral_gammaPairingIntegrand (u : ℝ → ℂ) (p : ℝ × ℝ) :
    (∫ r, gammaPairingIntegrand u r p ∂gammaLagMeasure) =
      integrand integratedGammaKernel u u p := by
  simp_rw [gammaPairingIntegrand_eq]
  rw [integral_mul_const, integral_const_mul, integral_complex_ofReal]
  rfl

/-- The opposite iterated integral is exactly the weighted minimum-kernel
form, using the existing product-measure definition. -/
theorem integral_gammaPairingIntegrand_pair (u : ℝ → ℂ) (r : ℝ) :
    (∫ p : ℝ × ℝ, gammaPairingIntegrand u r p ∂volume.prod volume) =
      (parityKernel 1 r : ℂ) * kernelForm volume (minimumKernel r) u u := by
  unfold gammaPairingIntegrand
  rw [integral_const_mul]
  rfl

/-- The integrated gamma kernel has a genuine L1 pairing on the whole line. -/
theorem integrable_integratedGammaKernel (u : ℝ → ℂ) (hu : Integrable u volume) :
    Integrable (integrand integratedGammaKernel u u) (volume.prod volume) := by
  apply (integrable_gammaPairingIntegrand u hu).integral_prod_right.congr
  exact Filter.Eventually.of_forall (integral_gammaPairingIntegrand u)

/-- The actual weighted minimum-kernel forms are integrable over every
positive lag, including the singular endpoint and the infinite tail. -/
theorem integrable_gammaKernelForms (u : ℝ → ℂ) (hu : Integrable u volume) :
    Integrable (fun r => (parityKernel 1 r : ℂ) * kernelForm volume (minimumKernel r) u u)
      gammaLagMeasure := by
  apply (integrable_gammaPairingIntegrand u hu).integral_prod_left.congr
  exact Filter.Eventually.of_forall (integral_gammaPairingIntegrand_pair u)

/-- Fubini for the actual complete parity-one gamma kernel and an arbitrary
complex L1 input. No arithmetic identity is assumed. -/
theorem kernelForm_integratedGammaKernel (u : ℝ → ℂ) (hu : Integrable u volume) :
    kernelForm volume integratedGammaKernel u u =
      ∫ r in Ioi (0 : ℝ),
        (parityKernel 1 r : ℂ) * kernelForm volume (minimumKernel r) u u := by
  have h := integral_integral_swap (f := gammaPairingIntegrand u)
    (integrable_gammaPairingIntegrand u hu)
  simp_rw [integral_gammaPairingIntegrand, integral_gammaPairingIntegrand_pair] at h
  exact h.symm

private theorem kernelForm_neg_kernel (K : ℝ → ℝ → ℂ) (u : ℝ → ℂ) :
    kernelForm volume (fun x y => -K x y) u u = -kernelForm volume K u u := by
  unfold kernelForm
  rw [← integral_neg]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun p => by simp [integrand])

/-- The actual negative gamma contribution has the same justified
interchange. The sign is retained inside each minimum-kernel pairing. -/
theorem kernelForm_neg_integratedGammaKernel (u : ℝ → ℂ) (hu : Integrable u volume) :
    kernelForm volume (fun x y => -integratedGammaKernel x y) u u =
      ∫ r in Ioi (0 : ℝ), (parityKernel 1 r : ℂ) *
        kernelForm volume (fun x y => -minimumKernel r x y) u u := by
  rw [kernelForm_neg_kernel, kernelForm_integratedGammaKernel u hu, ← integral_neg]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun r => by
    dsimp only
    rw [kernelForm_neg_kernel]
    ring)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
