/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.GeneralTopology.PrimitiveRegularity
import GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.MeasureTheory.Integral.ExpDecay
import Mathlib.Analysis.Fourier.LpSpace
import Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DirichletLaplaceIdentity
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Complex.Convex

/-!
# Weighted square bound for the exact Möbius pickup velocity
-/

noncomputable section
set_option autoImplicit false

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound

namespace GRWTSK.NumberTheory.Moebius

/-- The explicit cumulative velocity-square allowance gives the weighted
allowance needed for the Laplace transform on a line of real part `σ`. -/
theorem weightedPickupVelocitySquare_le {A D σ : ℝ}
    (hA : 0 ≤ A) (hD : 0 ≤ D) (hσ : 0 < σ)
    (hE : ∀ T ≥ 0, (∫ u in (0 : ℝ)..T, pickupVelocity u ^ 2) ≤ A * T + D) :
    IntegrableOn (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) (Ioi 0) ∧
      (∫ u in Ioi (0 : ℝ), Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) ≤
        A / (2 * σ) + D := by
  apply weightedVelocitySquare_le pickupVelocity pickupVelocity_measurable
    (fun T _ => ?_) hA hD (mul_pos (by norm_num) hσ) hE
  have he : Continuous (fun u : ℝ => Real.exp u) := Real.continuous_exp
  apply (he.intervalIntegrable 0 T).mono_fun'
    (pickupVelocity_measurable.pow_const 2).aestronglyMeasurable
  exact ae_of_all _ fun u => by
    change ‖pickupVelocity u ^ 2‖ ≤ Real.exp u
    rw [Real.norm_of_nonneg (sq_nonneg _)]
    calc
      pickupVelocity u ^ 2 = |pickupVelocity u| ^ 2 := (sq_abs _).symm
      _ ≤ Real.exp (u / 2) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) (pickupVelocity_abs_le u) _
      _ = Real.exp u := by rw [pow_two, ← Real.exp_add]; congr 1; ring

/-- Change from the exact signed velocity to the weak Mertens integral. -/
theorem pickupVelocitySquare_integral_eq_mertens (a b : ℝ) :
    (∫ u in a..b, pickupVelocity u ^ 2) =
      ∫ x in Real.exp a..Real.exp b, mertensPrefix x ^ 2 / x ^ 2 := by
  let energy (x : ℝ) := mertensPrefix x ^ 2 / x ^ 2
  calc
    _ = ∫ u in a..b, (energy ∘ Real.exp) u * Real.exp u := by
      apply intervalIntegral.integral_congr
      intro u _
      have he : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
      simp only [pickupVelocity, mul_pow, he, Real.exp_neg, energy, Function.comp_apply]
      field_simp
    _ = _ := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
      Real.continuous_exp.continuousOn (fun u _ => Real.hasDerivAt_exp u)
      (fun u _ => (Real.exp_pos u).le)

/-- A supplied weak Mertens bound gives the exact weighted velocity estimate
on every positive Laplace line. -/
theorem weightedPickupVelocitySquare_le_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    IntegrableOn (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) (Ioi 0) ∧
      (∫ u in Ioi (0 : ℝ), Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) ≤
        B / (2 * σ) := by
  simpa only [add_zero] using
    weightedPickupVelocitySquare_le hB (D := 0) le_rfl hσ (fun T hT => by
      rw [pickupVelocitySquare_integral_eq_mertens, Real.exp_zero, add_zero]
      simpa only [Real.log_exp] using hM (Real.exp T) (Real.one_le_exp_iff.mpr hT))

/-- The exact signed velocity with Laplace damping, extended by zero to the
whole real line for the Fourier transform. -/
def dampedPickupVelocity (σ : ℝ) : ℝ → ℂ :=
  (Ioi (0 : ℝ)).indicator fun u => ((Real.exp (-σ * u) * pickupVelocity u : ℝ) : ℂ)

private theorem norm_dampedPickupVelocity_sq (σ : ℝ) : (fun u : ℝ => ‖dampedPickupVelocity σ u‖ ^ 2) =
    (Ioi (0 : ℝ)).indicator (fun u => Real.exp (-(2 * σ) * u) * pickupVelocity u ^ 2) := by
  funext u
  by_cases hu : u ∈ Ioi (0 : ℝ)
  · simp only [dampedPickupVelocity, indicator_of_mem hu, Complex.norm_real, Real.norm_eq_abs,
      sq_abs, mul_pow]
    rw [pow_two (Real.exp _), ← Real.exp_add]
    congr 2
    ring
  · simp [dampedPickupVelocity, indicator_of_notMem hu]

/-- Weak Mertens puts the whole-line damped velocity in the Plancherel domain. -/
theorem dampedPickupVelocity_memLp_two_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    MemLp (dampedPickupVelocity σ) 2 volume := by
  have he : Measurable (fun u : ℝ => Real.exp (-σ * u)) := by fun_prop
  have hm : Measurable (dampedPickupVelocity σ) :=
    (Complex.continuous_ofReal.measurable.comp (he.mul pickupVelocity_measurable)).indicator
      measurableSet_Ioi
  apply (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).2
  rw [norm_dampedPickupVelocity_sq, integrable_indicator_iff measurableSet_Ioi]
  exact (weightedPickupVelocitySquare_le_of_weakMertens hB hσ hM).1

/-- Weak Mertens also gives absolute integrability of the damped velocity.
Splitting the damping equally allows the product of two (L^2) factors. -/
theorem dampedPickupVelocity_integrable_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    Integrable (dampedPickupVelocity σ) volume := by
  let w (u : ℝ) : ℂ := (Ioi (0 : ℝ)).indicator
    (fun t => (Real.exp (-(σ / 2) * t) : ℂ)) u
  have hw_meas : Measurable w := by
    apply Measurable.indicator _ measurableSet_Ioi
    exact Complex.continuous_ofReal.measurable.comp (by fun_prop)
  have he (u : ℝ) : Real.exp (-(σ / 2) * u) ^ 2 = Real.exp (-σ * u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hw : MemLp w 2 volume := by
    apply (memLp_two_iff_integrable_sq_norm hw_meas.aestronglyMeasurable).2
    have hEq : (fun u => ‖w u‖ ^ 2) =
        (Ioi (0 : ℝ)).indicator (fun u => Real.exp (-σ * u)) := by
      funext u
      by_cases hu : u ∈ Ioi (0 : ℝ)
      · simp only [w, indicator_of_mem hu, Complex.norm_real, Real.norm_eq_abs,
          abs_of_pos (Real.exp_pos _), he]
      · simp [w, indicator_of_notMem hu]
    rw [hEq, integrable_indicator_iff measurableSet_Ioi]
    simpa only [neg_mul] using exp_neg_integrableOn_Ioi 0 hσ
  have hv := dampedPickupVelocity_memLp_two_of_weakMertens hB (half_pos hσ) hM
  have hEq : w * dampedPickupVelocity (σ / 2) = dampedPickupVelocity σ := by
    funext u
    by_cases hu : u ∈ Ioi (0 : ℝ)
    · simp only [Pi.mul_apply, w, dampedPickupVelocity, indicator_of_mem hu]
      rw [← Complex.ofReal_mul, ← mul_assoc, ← pow_two, he]
    · simp [w, dampedPickupVelocity, indicator_of_notMem hu]
  rw [← hEq]
  exact hw.integrable_mul hv

open scoped FourierTransform

/-- Mathlib's real Fourier frequency `ξ` corresponds to imaginary Laplace
coordinate `2 * π * ξ` for the exact damped velocity. -/
theorem fourier_dampedPickupVelocity_eq_signedLaplace (σ ξ : ℝ) :
    𝓕 (dampedPickupVelocity σ) ξ =
      signedLaplace pickupVelocity ((σ : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) := by
  rw [Real.fourier_real_eq_integral_exp_smul, signedLaplace, ← integral_indicator measurableSet_Ioi]
  congr 1
  funext u
  by_cases hu : u ∈ Ioi (0 : ℝ)
  · simp only [dampedPickupVelocity, indicator_of_mem hu, smul_eq_mul,
      Complex.ofReal_mul, Complex.ofReal_exp]
    rw [← mul_assoc, ← Complex.exp_add]
    congr 2
    push_cast
    ring
  · simp [dampedPickupVelocity, indicator_of_notMem hu]

private theorem lpTwo_norm_sq_eq_integral (f : Lp ℂ 2 (volume : Measure ℝ)) : ‖f‖ ^ 2 = ∫ u : ℝ, ‖f u‖ ^ 2 := by
  apply Complex.ofReal_injective
  calc
    _ = inner ℂ f f := by simp [inner_self_eq_norm_sq_to_K, Complex.ofReal_pow]
    _ = ∫ u : ℝ, ((‖f u‖ ^ 2 : ℝ) : ℂ) := by
      change (∫ u : ℝ, inner ℂ (f u) (f u)) = _
      simp [inner_self_eq_norm_sq_to_K, Complex.ofReal_pow]
    _ = _ := integral_ofReal

/-- The weak Mertens allowance bounds the Plancherel energy of the exact
damped velocity. -/
theorem fourierLp_dampedPickupVelocity_norm_sq_le_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    ‖𝓕 ((dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM).toLp
        (dampedPickupVelocity σ))‖ ^ 2 ≤ B / (2 * σ) := by
  let h := dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM
  let f := h.toLp (dampedPickupVelocity σ)
  change ‖𝓕 f‖ ^ 2 ≤ _
  rw [Lp.norm_fourier_eq]
  rw [lpTwo_norm_sq_eq_integral]
  calc
    _ = ∫ u : ℝ, ‖dampedPickupVelocity σ u‖ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [h.coeFn_toLp] with u hu
      rw [hu]
    _ ≤ _ := by
      rw [norm_dampedPickupVelocity_sq, integral_indicator measurableSet_Ioi]
      exact (weightedPickupVelocitySquare_le_of_weakMertens hB hσ hM).2

open InnerProductSpace
open scoped SchwartzMap

private theorem fourierLp_pairing_eq_classical {f : ℝ → ℂ} (hf₁ : Integrable f)
    (hf₂ : MemLp f 2 volume) (g : 𝓢(ℝ, ℂ)) :
    (∫ x : ℝ, g x * (𝓕 (hf₂.toLp f) : Lp ℂ 2 volume) x) =
      ∫ x : ℝ, g x * 𝓕 f x := by
  let F := hf₂.toLp f
  have h := congrArg (fun d : 𝓢'(ℝ, ℂ) => d g) (Lp.fourier_toTemperedDistribution_eq F)
  simp only [TemperedDistribution.fourier_apply, Lp.toTemperedDistribution_apply, smul_eq_mul] at h
  calc
    _ = ∫ x : ℝ, 𝓕 g x * F x := h.symm
    _ = ∫ x : ℝ, 𝓕 g x * f x := by
      apply integral_congr_ae
      filter_upwards [hf₂.coeFn_toLp] with x hx
      rw [show F x = f x from hx]
    _ = _ := by
      change (∫ x : ℝ, VectorFourier.fourierIntegral Real.fourierChar volume
        (innerₗ ℝ) (g : ℝ → ℂ) x * f x) =
        ∫ x : ℝ, g x * VectorFourier.fourierIntegral Real.fourierChar volume (innerₗ ℝ) f x
      simpa [smul_eq_mul, mul_comm] using
        (VectorFourier.integral_fourierIntegral_smul_eq_flip (L := innerₗ ℝ) (μ := volume) (ν := volume)
          Real.continuous_fourierChar continuous_inner g.integrable hf₁)


private theorem fourierLp_ae_eq_classical {f : ℝ → ℂ} (hf₁ : Integrable f)
    (hf₂ : MemLp f 2 volume) :
    (𝓕 (hf₂.toLp f) : Lp ℂ 2 volume) =ᵐ[volume] 𝓕 f := by
  have hcont : Continuous (𝓕 f) :=
    VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
      (innerSL ℝ).continuous₂ hf₁
  apply ae_eq_of_integral_contDiff_smul_eq
    ((Lp.memLp (𝓕 (hf₂.toLp f) : Lp ℂ 2 volume)).locallyIntegrable (by norm_num))
    hcont.locallyIntegrable
  intro g hg hs
  let G : 𝓢(ℝ, ℂ) :=
    (hs.comp_left Complex.ofReal_zero).toSchwartzMap (Complex.ofRealCLM.contDiff.comp hg)
  simp only [Complex.real_smul]
  change (∫ x : ℝ, G x * (𝓕 (hf₂.toLp f) : Lp ℂ 2 volume) x) =
    ∫ x : ℝ, G x * 𝓕 f x
  exact fourierLp_pairing_eq_classical hf₁ hf₂ G

/-- The Plancherel representative agrees almost everywhere with the exact
velocity Laplace transform, in Mathlib's Fourier frequency normalization. -/
theorem fourierLp_dampedPickupVelocity_ae_eq_signedLaplace {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    (𝓕 ((dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM).toLp
        (dampedPickupVelocity σ)) : Lp ℂ 2 volume) =ᵐ[volume]
      fun ξ => signedLaplace pickupVelocity ((σ : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) := by
  filter_upwards [fourierLp_ae_eq_classical
    (dampedPickupVelocity_integrable_of_weakMertens hB hσ hM)
    (dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM)] with ξ hξ
  exact hξ.trans (fourier_dampedPickupVelocity_eq_signedLaplace σ ξ)

/-- The weak Mertens bound controls the pointwise velocity Laplace transform
on each positive vertical line, using Mathlib's Fourier frequency variable. -/
theorem signedLaplace_pickupVelocity_line_square_le_of_weakMertens {B σ : ℝ}
    (hB : 0 ≤ B) (hσ : 0 < σ)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X) :
    Integrable (fun ξ : ℝ =>
      ‖signedLaplace pickupVelocity ((σ : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I)‖ ^ 2) ∧
    (∫ ξ : ℝ, ‖signedLaplace pickupVelocity ((σ : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I)‖ ^ 2)
      ≤ B / (2 * σ) := by
  let F : Lp ℂ 2 (volume : Measure ℝ) :=
    𝓕 ((dampedPickupVelocity_memLp_two_of_weakMertens hB hσ hM).toLp
      (dampedPickupVelocity σ))
  have hF : MemLp (F : ℝ → ℂ) 2 volume := Lp.memLp F
  have hSq := (memLp_two_iff_integrable_sq_norm hF.aestronglyMeasurable).mp hF
  have hEq : (fun ξ => ‖F ξ‖ ^ 2) =ᵐ[volume] fun ξ =>
      ‖signedLaplace pickupVelocity ((σ : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I)‖ ^ 2 := by
    filter_upwards [fourierLp_dampedPickupVelocity_ae_eq_signedLaplace hB hσ hM] with ξ hξ
    exact congrArg (fun z : ℂ => ‖z‖ ^ 2) hξ
  refine ⟨hSq.congr hEq, ?_⟩
  rw [← integral_congr_ae hEq, ← lpTwo_norm_sq_eq_integral F]
  exact fourierLp_dampedPickupVelocity_norm_sq_le_of_weakMertens hB hσ hM

open GRWTSK.RiemannHypothesis.CCC.PickupInitialTransform

private theorem pickupTriangle_integrable_of_weakMertens {B : ℝ} (hB : 0 ≤ B)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X)
    {z : ℂ} (hz : 0 < z.re) :
    Integrable (pickupTriangle z)
      ((volume.restrict (Ioi (0 : ℝ))).prod (volume.restrict (Ioi (0 : ℝ)))) := by
  let r := z.re / 2
  have hr : 0 < r := half_pos hz
  have hV := dampedPickupVelocity_integrable_of_weakMertens hB hr hM
  rw [dampedPickupVelocity, integrable_indicator_iff measurableSet_Ioi] at hV
  have hu : IntegrableOn (fun u => Real.exp (-r * u) * |pickupVelocity u|) (Ioi 0) := by
    simpa only [IntegrableOn, Complex.norm_real, Real.norm_eq_abs, abs_mul,
      abs_of_pos (Real.exp_pos _)] using hV.norm
  have ht : IntegrableOn (fun t : ℝ => Real.exp (-r * t)) (Ioi 0) := by
    simpa only [neg_mul] using exp_neg_integrableOn_Ioi 0 hr
  apply (ht.mul_prod hu).mono' (pickupTriangle_measurable z).aestronglyMeasurable
  apply ae_of_all
  intro p
  by_cases hp : p ∈ {p : ℝ × ℝ | p.2 ≤ p.1}
  · rw [pickupTriangle, indicator_of_mem hp]
    change p.2 ≤ p.1 at hp
    calc
      ‖Complex.exp (-z * p.1) * (pickupVelocity p.2 : ℂ)‖ =
          Real.exp (-z.re * p.1) * |pickupVelocity p.2| := by
        simp [Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ Real.exp (-r * p.1) * (Real.exp (-r * p.2) * |pickupVelocity p.2|) := by
        rw [← mul_assoc, ← Real.exp_add]
        apply mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr ?_) (abs_nonneg _)
        dsimp [r]
        nlinarith [mul_nonneg hz.le (sub_nonneg.mpr hp)]
  · rw [pickupTriangle, indicator_of_notMem hp, norm_zero]
    exact mul_nonneg (Real.exp_pos _).le (mul_nonneg (Real.exp_pos _).le (abs_nonneg _))

/-- Under weak Mertens the exact causal primitive contributes a factor `1/z`
throughout the positive Laplace half-plane. -/
theorem signedLaplace_wholePickup_eq_velocity_of_weakMertens {B : ℝ} (hB : 0 ≤ B)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X)
    {z : ℂ} (hz : 0 < z.re) :
    signedLaplace wholePickup z = z⁻¹ * signedLaplace pickupVelocity z := by
  have hs := integral_integral_swap (f := fun t u : ℝ => pickupTriangle z (t, u))
    (pickupTriangle_integrable_of_weakMertens hB hM hz)
  change (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
    (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) at hs
  rw [signedLaplace, signedLaplace, ← integral_const_mul]
  simp_rw [← neg_mul]
  calc
    _ = ∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u) :=
      setIntegral_congr_fun measurableSet_Ioi (fun t ht => (pickupTriangle_time_integral z t ht).symm)
    _ = ∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u) := hs
    _ = _ := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro u hu
      have heq : (fun t : ℝ => pickupTriangle z (t, u)) =
          (Ici u).indicator (fun t => Complex.exp (-z * t) * (pickupVelocity u : ℂ)) := rfl
      have hi : Ioi (0 : ℝ) ∩ Ici u = Ici u :=
        Set.inter_eq_right.mpr (fun t ht => show 0 < t from hu.out.trans_le ht.out)
      change (∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) = _

      rw [heq, setIntegral_indicator measurableSet_Ici, hi, integral_Ici_eq_integral_Ioi,
        integral_mul_const, integral_exp_mul_complex_Ioi (a := -z) (by simp; linarith)]
      ring

open scoped Topology

/-- Weak Mertens provides an exponential majorant for differentiation of the
exact velocity Laplace integral throughout the positive half-plane. -/
theorem signedLaplace_pickupVelocity_analyticAt_of_weakMertens {B : ℝ} (hB : 0 ≤ B)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X)
    {z : ℂ} (hz : 0 < z.re) :
    AnalyticAt ℂ (signedLaplace pickupVelocity) z := by
  have habs {r : ℝ} (hr : 0 < r) :
      IntegrableOn (fun u => Real.exp (-r * u) * |pickupVelocity u|) (Ioi 0) := by
    have h := dampedPickupVelocity_integrable_of_weakMertens hB hr hM
    rw [dampedPickupVelocity, integrable_indicator_iff measurableSet_Ioi] at h
    simpa only [IntegrableOn, Complex.norm_real, Real.norm_eq_abs, abs_mul,
      abs_of_pos (Real.exp_pos _)] using h.norm
  have hd (z₀ : ℂ) (hz₀ : 0 < z₀.re) :
      DifferentiableAt ℂ (signedLaplace pickupVelocity) z₀ := by
    let a := z₀.re / 2
    have ha : 0 < a := half_pos hz₀
    let F (w : ℂ) (u : ℝ) := Complex.exp (-(w * (u : ℂ))) * (pickupVelocity u : ℂ)
    let F' (w : ℂ) (u : ℝ) := -(u : ℂ) * F w u
    let U : Set ℂ := {w | a < w.re}
    have hU : U ∈ 𝓝 z₀ :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by dsimp [U, a]; linarith)
    have hm (w : ℂ) : Measurable (F w) := by
      exact (by fun_prop : Measurable (fun u : ℝ => Complex.exp (-(w * (u : ℂ))))).mul
        (Complex.measurable_ofReal.comp pickupVelocity_measurable)
    have hn (w : ℂ) (u : ℝ) : ‖F w u‖ = Real.exp (-w.re * u) * |pickupVelocity u| := by
      simp [F, Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs, neg_mul]
    have hFi : IntegrableOn (F z₀) (Ioi 0) :=
      (habs hz₀).mono' (hm z₀).aestronglyMeasurable (ae_of_all _ fun u => (hn z₀ u).le)
    have hi := (habs (half_pos ha)).const_mul (2 / a)
    have hbound : ∀ᵐ u ∂volume.restrict (Ioi (0 : ℝ)), ∀ w ∈ U,
        ‖F' w u‖ ≤ (2 / a) * (Real.exp (-(a / 2) * u) * |pickupVelocity u|) := by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu w hw
      have hu0 : 0 ≤ u := hu.le
      have hexp : Real.exp (-w.re * u) ≤ Real.exp (-a * u) :=
        Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_right (neg_le_neg (le_of_lt hw)) hu0)
      have hu_le : u ≤ 2 * Real.exp (a * u / 2) / a := by
        apply (le_div_iff₀ ha).mpr
        linarith [Real.add_one_le_exp (a * u / 2)]
      rw [show F' w u = -(u : ℂ) * F w u from rfl,
        norm_mul, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hu0, hn]
      calc
        _ ≤ u * (Real.exp (-a * u) * |pickupVelocity u|) :=
          mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hexp (abs_nonneg _)) hu0
        _ ≤ (2 * Real.exp (a * u / 2) / a) * (Real.exp (-a * u) * |pickupVelocity u|) :=
          mul_le_mul_of_nonneg_right hu_le (mul_nonneg (Real.exp_pos _).le (abs_nonneg _))
        _ = _ := by
          rw [show -(a / 2) * u = a * u / 2 + (-a * u) by ring, Real.exp_add]
          ring
    have hder (u : ℝ) (w : ℂ) : HasDerivAt (F · u) (F' w u) w := by
      have hlin : HasDerivAt (fun x : ℂ => -x * (u : ℂ)) (-(u : ℂ)) w := by
        simpa using (hasDerivAt_id w).neg.mul_const (u : ℂ)
      convert (hlin.cexp.mul_const (pickupVelocity u : ℂ)) using 1 <;> simp only [F, F', neg_mul]
      ring
    exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le hU
      (Filter.Eventually.of_forall fun w => (hm w).aestronglyMeasurable)
      hFi ((Complex.continuous_ofReal.neg.measurable.mul (hm z₀)).aestronglyMeasurable)
      hbound hi (Filter.Eventually.of_forall fun u w _ => hder u w)).2.differentiableAt
  exact (show DifferentiableOn ℂ (signedLaplace pickupVelocity) {w | 0 < w.re} from
    fun w hw => (hd w hw).differentiableWithinAt).analyticAt
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds hz)

private theorem regularizedZeta_analytic (w : ℂ) :
    AnalyticAt ℂ (Function.update (fun s : ℂ => (s - 1) * riemannZeta s) 1 1) w := by
  let f (s : ℂ) := (s - 1) * riemannZeta s
  have hl : Filter.Tendsto f (𝓝[≠] (1 : ℂ)) (𝓝 1) := riemannZeta_residue_one
  have hd : DifferentiableOn ℂ f ((Set.univ : Set ℂ) \ {1}) := by
    intro s hs
    have hne : s ≠ 1 := by simpa using hs.2
    exact (((differentiableAt_id.sub_const _).mul
      (differentiableAt_riemannZeta hne))).differentiableWithinAt
  have hb : (𝓝[≠] (1 : ℂ)).IsBoundedUnder (· ≤ ·) (fun s => ‖f s - f 1‖) :=
    ((hl.sub_const (f 1)).norm).isBoundedUnder_le
  have h := Complex.differentiableOn_update_limUnder_of_isLittleO
    (s := Set.univ) (Filter.univ_mem) hd hb.isLittleO_sub_self_inv
  rw [hl.limUnder_eq] at h
  exact h.analyticAt Filter.univ_mem

/-- The initial reciprocal-zeta identity continues to the positive
half-plane away from the zeta pole. The proof clears the pole before
applying the identity theorem. -/
theorem signedLaplace_pickupVelocity_eq_reciprocalZeta_of_weakMertens {B : ℝ} (hB : 0 ≤ B)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X)
    {z : ℂ} (hz : 0 < z.re) (hzpole : z + 1 / 2 ≠ 1) :
    signedLaplace pickupVelocity z =
      1 / ((z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  let R := Function.update (fun s : ℂ => (s - 1) * riemannZeta s) 1 1
  let U : Set ℂ := {w | 0 < w.re}
  let lhs (w : ℂ) := (w + 1 / 2) * R (w + 1 / 2) * signedLaplace pickupVelocity w
  let rhs (w : ℂ) := w + 1 / 2 - 1
  have hL : AnalyticOnNhd ℂ lhs U := by
    intro w hw
    have hadd : AnalyticAt ℂ (fun t : ℂ => t + 1 / 2) w :=
      analyticAt_id.add analyticAt_const
    exact (hadd.mul ((regularizedZeta_analytic (w + 1 / 2)).comp (f := fun t : ℂ => t + 1 / 2) (x := w) hadd)).mul
      (signedLaplace_pickupVelocity_analyticAt_of_weakMertens hB hM hw)
  have hR : AnalyticOnNhd ℂ rhs U := fun _ _ =>
    (analyticAt_id.add analyticAt_const).sub analyticAt_const
  have hinitial : lhs =ᶠ[𝓝 (1 : ℂ)] rhs := by
    have hn : {w : ℂ | (1 / 2 : ℝ) < w.re} ∈ 𝓝 (1 : ℂ) :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds (by norm_num)
    filter_upwards [hn] with w hw
    have hs : 1 < (w + 1 / 2).re := by
      change (1 / 2 : ℝ) < w.re at hw
      simp
      linarith
    have hn1 : w + 1 / 2 ≠ 1 := by
      intro he
      rw [he] at hs
      norm_num at hs
    have hn0 : w + 1 / 2 ≠ 0 := by
      intro he
      rw [he] at hs
      norm_num at hs
    have hζ := riemannZeta_ne_zero_of_one_lt_re hs
    have hinit : signedLaplace pickupVelocity w = 1 / ((w + 1 / 2) * riemannZeta (w + 1 / 2)) := by
      simpa only [signedLaplace, neg_mul] using pickupVelocity_laplace hw
    dsimp [lhs, rhs, R]
    rw [Function.update_of_ne hn1, hinit]
    calc
      _ = (w + 1 / 2 - 1) * (((w + 1 / 2) * riemannZeta (w + 1 / 2)) *
          ((w + 1 / 2) * riemannZeta (w + 1 / 2))⁻¹) := by rw [one_div]; ring
      _ = _ := by rw [mul_inv_cancel₀ (mul_ne_zero hn0 hζ), mul_one]
  have h := hL.eqOn_of_preconnected_of_eventuallyEq hR
    (convex_halfSpace_re_gt 0).isPreconnected (show (1 : ℂ) ∈ U by simp [U]) hinitial
    (show z ∈ U from hz)
  have hfactor : (z + 1 / 2) * riemannZeta (z + 1 / 2) * signedLaplace pickupVelocity z = 1 := by
    dsimp [lhs, rhs, R] at h
    rw [Function.update_of_ne hzpole] at h
    have hn := sub_ne_zero.mpr hzpole
    apply (mul_left_cancel₀ hn)
    linear_combination h
  exact (eq_div_iff_mul_eq (left_ne_zero_of_mul_eq_one hfactor)).2 (by simpa [mul_comm] using hfactor)

/-- Midpoint nonvanishing bounds the centered velocity difference quotient
uniformly near zero on the positive Laplace half-plane. -/
theorem signedLaplace_pickupVelocity_midpoint_quotient_bounded {B : ℝ} (hB : 0 ≤ B)
    (hM : ∀ X ≥ 1, (∫ x in (1 : ℝ)..X, mertensPrefix x ^ 2 / x ^ 2) ≤ B * Real.log X)
    (hmid : riemannZeta (1 / 2 : ℂ) ≠ 0) :
    ∃ r C : ℝ, 0 < r ∧ 0 ≤ C ∧ ∀ z : ℂ, 0 < z.re → ‖z‖ < r →
      ‖(signedLaplace pickupVelocity z - 2 / riemannZeta (1 / 2 : ℂ)) / z‖ ≤ C := by
  let f (z : ℂ) := 1 / ((z + 1 / 2) * riemannZeta (z + 1 / 2))
  have hshift : DifferentiableAt ℂ (fun z : ℂ => z + 1 / 2) 0 := by fun_prop
  have hζ : DifferentiableAt ℂ (fun z : ℂ => riemannZeta (z + 1 / 2)) 0 := by
    refine (differentiableAt_riemannZeta (s := (fun z : ℂ => z + 1 / 2) 0) ?_).comp 0 hshift
    norm_num
  have hden : (fun z : ℂ => (z + 1 / 2) * riemannZeta (z + 1 / 2)) 0 ≠ 0 := by
    simpa only [zero_add] using mul_ne_zero (by norm_num : (1 / 2 : ℂ) ≠ 0) hmid
  have hf : DifferentiableAt ℂ f 0 := (differentiableAt_const _).div (hshift.mul hζ) hden
  have hc : ContinuousAt (dslope f 0) 0 := continuousAt_dslope_same.2 hf
  let C := ‖dslope f 0 0‖ + 1
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hn : {z : ℂ | ‖dslope f 0 z‖ < C} ∈ 𝓝 (0 : ℂ) :=
    hc.norm.eventually_lt continuousAt_const (by dsimp [C]; linarith)
  obtain ⟨r, hr, hball⟩ := Metric.mem_nhds_iff.mp hn
  refine ⟨min r (1 / 2), C, lt_min hr (by norm_num), hC, fun z hz hzr => ?_⟩
  have hzpole : z + 1 / 2 ≠ 1 := by
    intro he
    have hre := congrArg Complex.re he
    norm_num at hre
    have hnz := Complex.re_le_norm z
    linarith [lt_of_lt_of_le hzr (min_le_right r (1 / 2))]
  have hz0 : z ≠ 0 := by
    intro he
    simp [he] at hz
  have hf0 : f 0 = 2 / riemannZeta (1 / 2 : ℂ) := by
    simp only [f, zero_add]
    field_simp
  have hb : ‖dslope f 0 z‖ < C :=
    hball (by simpa [Metric.mem_ball, dist_zero_right] using
      lt_of_lt_of_le hzr (min_le_left r (1 / 2)))
  rw [dslope_of_ne f hz0, slope_def_field, sub_zero, hf0] at hb
  rw [signedLaplace_pickupVelocity_eq_reciprocalZeta_of_weakMertens hB hM hz hzpole]
  exact hb.le

end GRWTSK.NumberTheory.Moebius
