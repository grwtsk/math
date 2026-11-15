/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddShiftEnergySine
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds
import Mathlib.MeasureTheory.Integral.Prod

/-!
# The full physical gamma integral of the original odd source

This implements the integral in grwtsk/hs#2, comment 6888070665, for the
original source at every admissible radius. The exact shift-energy identity
gives each sine integral. On positive shifts and frequencies, the parity
kernel, cosine difference, and squared sine moment are nonnegative.
The original gamma integrability pays the product norm, so Fubini applies
to real integrals. The entire cosine-difference integral of this same
parity kernel then gives the existing infinite gamma multiplier.

Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergySine

open OddContinuousSine OddMultiplierBounds OddRootProjection DirichletStageChain
open LowSchur SourcePrimeCorrelation

private theorem measurable_halfSineMoment {T : ℝ} (hT : 0 ≤ T)
    {f : ℝ → ℝ} (hf : Measurable f) : Measurable (halfSineMoment T f) := by
  have hEq : halfSineMoment T f = fun ξ =>
      ∫ t in Ioc (0 : ℝ) T, f t * Real.sin (ξ * t) := by
    funext ξ
    exact intervalIntegral.integral_of_le hT
  rw [hEq]
  apply StronglyMeasurable.measurable
  apply StronglyMeasurable.integral_prod_right (ν := volume.restrict (Ioc 0 T))
  exact (show Measurable (fun x : ℝ × ℝ => f x.2 * Real.sin (x.1 * x.2)) by
    fun_prop).stronglyMeasurable

private theorem gammaSine_kernel_facts {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    IntegrableOn (fun ξ => halfSineMoment T f ξ ^ 2 *
      ∫ r in Ioi (0 : ℝ), parityKernel (gammaParity χ) r * (1 - Real.cos (r * ξ))) (Ioi 0) ∧
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) =
      (8 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), halfSineMoment T f ξ ^ 2 *
        ∫ r in Ioi (0 : ℝ), parityKernel (gammaParity χ) r * (1 - Real.cos (r * ξ)) := by
  let μ := (volume : Measure ℝ).restrict (Ioi (0 : ℝ))
  let k : ℝ → ℝ := fun ξ => halfSineMoment T f ξ ^ 2
  let a := gammaParity χ
  let F (r ξ : ℝ) : ℝ := parityKernel a r * (1 - Real.cos (r * ξ)) * k ξ
  let c : ℝ := 8 / Real.pi
  have hc : 0 < c := by dsimp [c]; positivity
  have hsrc := gammaCorrectionDensity_eq_halfSine_of_admissible χ hf
  obtain ⟨hT, hdiff, _, hodd, hL2, hs, hgamma⟩ := hf
  have hsupp : ∀ t, t ∉ Icc (-T) T → f t = 0 := fun t ht =>
    Complex.ofReal_eq_zero.mp (hs t ht)
  have hk : Integrable k :=
    halfSineMoment_sq_integrable hT.le hdiff.continuous hodd hsupp hL2
  have hkm : Measurable k :=
    (measurable_halfSineMoment hT.le hdiff.continuous.measurable).pow_const 2
  have hK : Measurable (parityKernel a) := by unfold parityKernel; fun_prop
  have hFm : Measurable (Function.uncurry F) := by
    change Measurable (fun z : ℝ × ℝ =>
      parityKernel a z.1 * (1 - Real.cos (z.1 * z.2)) * k z.2)
    fun_prop
  have hF0 {r : ℝ} (hr : 0 < r) (ξ : ℝ) : 0 ≤ F r ξ := by
    have hK0 : 0 ≤ parityKernel a r := by
      unfold parityKernel
      exact div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr
        (Real.exp_le_one_iff.mpr (by linarith)))
    exact mul_nonneg (mul_nonneg hK0 (sub_nonneg.mpr (Real.cos_le_one _))) (sq_nonneg _)
  have hFint (r : ℝ) : Integrable (F r) μ := by
    refine ((hk.sub (integrable_cosine_mul hk r)).const_mul (parityKernel a r)).integrableOn.congr ?_
    exact Filter.Eventually.of_forall (fun ξ => by dsimp [F]; ring)
  have hinner (r : ℝ) :
      gammaCorrectionDensity a (liftReal f) r = c * ∫ ξ, F r ξ ∂μ := by
    change gammaCorrectionDensity a (liftReal f) r = c *
      ∫ ξ in Ioi (0 : ℝ), parityKernel a r * (1 - Real.cos (r * ξ)) * k ξ
    simp_rw [mul_assoc (parityKernel a r), integral_const_mul]
    exact (hsrc r).trans (by dsimp [k, c, a]; ring)
  have hprod : Integrable (Function.uncurry F) (μ.prod μ) := by
    refine (integrable_prod_iff hFm.aestronglyMeasurable).2 ⟨
      Filter.Eventually.of_forall hFint, ?_⟩
    apply (hgamma.const_mul c⁻¹).congr
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
    change c⁻¹ * gammaCorrectionDensity a (liftReal f) r =
      ∫ ξ, ‖F r ξ‖ ∂μ
    rw [hinner, ← mul_assoc, inv_mul_cancel₀ hc.ne', one_mul]
    exact integral_congr_ae (Filter.Eventually.of_forall
      fun ξ => (Real.norm_of_nonneg (hF0 hr ξ)).symm)
  have houter (ξ : ℝ) : (∫ r, F r ξ ∂μ) =
      k ξ * ∫ r in Ioi (0 : ℝ), parityKernel a r * (1 - Real.cos (r * ξ)) := by
    simp only [μ, F, integral_mul_const, mul_comm (k ξ)]
  refine ⟨hprod.integral_prod_right.congr (Filter.Eventually.of_forall houter), ?_⟩
  change (∫ r, gammaCorrectionDensity a (liftReal f) r ∂μ) =
    c * ∫ ξ, (k ξ * ∫ r, parityKernel a r * (1 - Real.cos (r * ξ)) ∂μ) ∂μ
  simp_rw [hinner, integral_const_mul]
  rw [integral_integral_swap hprod]
  simp_rw [houter, μ]

/-- Tonelli for the entire original gamma density on all admissible real odd tests. -/
theorem gammaCorrectionIntegral_eq_sine_kernel
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) =
      (8 / Real.pi) * ∫ ξ in Ioi (0 : ℝ), halfSineMoment T f ξ ^ 2 *
        ∫ r in Ioi (0 : ℝ), parityKernel (gammaParity χ) r * (1 - Real.cos (r * ξ)) :=
  (gammaSine_kernel_facts χ hf).2

private theorem gammaSine_multiplier_facts
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    IntegrableOn (fun ξ => periodicMultiplier (gammaParity χ) ξ *
      halfSineMoment T f ξ ^ 2) (Ioi 0) ∧
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        periodicMultiplier (gammaParity χ) ξ * halfSineMoment T f ξ ^ 2 := by
  have hk := gammaSine_kernel_facts χ hf
  have hpoint (ξ : ℝ) : periodicMultiplier (gammaParity χ) ξ * halfSineMoment T f ξ ^ 2 =
      2 * (halfSineMoment T f ξ ^ 2 *
        ∫ r in Ioi (0 : ℝ), parityKernel (gammaParity χ) r * (1 - Real.cos (r * ξ))) := by
    rw [periodicMultiplier_eq_kernel_integral]
    ac_rfl
  refine ⟨(hk.1.const_mul 2).congr (Filter.Eventually.of_forall fun ξ => (hpoint ξ).symm), ?_⟩
  rw [hk.2]
  simp_rw [hpoint, integral_const_mul]
  ring

/-- The exact multiplier uses the infinite kernel series for the original character parity. -/
theorem gammaCorrectionIntegral_eq_periodicMultiplier
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) (liftReal f) r) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        periodicMultiplier (gammaParity χ) ξ * halfSineMoment T f ξ ^ 2 :=
  (gammaSine_multiplier_facts χ hf).2

private theorem originalPrimitiveQ_sineMultiplier_facts
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    IntegrableOn (fun ξ =>
      (1 + gammaConstant q (gammaParity χ) + periodicMultiplier (gammaParity χ) ξ -
        2 * ∑ n ∈ activePrimePowers T,
          pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * ξ)) *
        halfSineMoment T f ξ ^ 2) (Ioi (0 : ℝ)) ∧
    primitiveArithmeticValue χ hp hn T (liftReal f) + energy (liftReal f) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        (1 + gammaConstant q (gammaParity χ) + periodicMultiplier (gammaParity χ) ξ -
          2 * ∑ n ∈ activePrimePowers T,
            pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * ξ)) *
          halfSineMoment T f ξ ^ 2 := by
  let μ := (volume : Measure ℝ).restrict (Ioi (0 : ℝ))
  let k : ℝ → ℝ := fun ξ => halfSineMoment T f ξ ^ 2
  let c : ℝ := 4 / Real.pi
  let b := gammaConstant q (gammaParity χ)
  let p (ξ : ℝ) := periodicMultiplier (gammaParity χ) ξ
  let w (n : ℕ) := pairedPrimeWeight χ n
  let d (n : ℕ) (ξ : ℝ) := Real.cos (Real.log (n : ℝ) * ξ)
  let S := activePrimePowers T
  have hsrc := primitiveArithmeticValue_eq_sine_terms χ hp hn hf
  have hgamma := gammaSine_multiplier_facts χ hf
  obtain ⟨hT, hdiff, _, hodd, hL2, hs, _⟩ := hf
  have hsupp : ∀ t, t ∉ Icc (-T) T → f t = 0 := fun t ht =>
    Complex.ofReal_eq_zero.mp (hs t ht)
  have hE : energy (liftReal f) = c * ∫ ξ, k ξ ∂μ :=
    energy_eq_sine_integral hT.le hdiff.continuous hodd hsupp hL2
  have hk : Integrable k := halfSineMoment_sq_integrable hT.le hdiff.continuous hodd hsupp hL2
  have hterm (n : ℕ) : Integrable (fun ξ => w n * (d n ξ * k ξ)) μ :=
    ((integrable_cosine_mul hk (Real.log (n : ℝ))).const_mul (w n)).integrableOn
  have hsum : Integrable (fun ξ => ∑ n ∈ S, w n * (d n ξ * k ξ)) μ :=
    integrable_finsetSum S (fun n _ => hterm n)
  have hb : Integrable (fun ξ => (1 + b) * k ξ) μ := (hk.const_mul _).integrableOn
  have hpg : Integrable (fun ξ => p ξ * k ξ) μ := hgamma.1
  have hpoint (ξ : ℝ) :
      (1 + b + p ξ - 2 * ∑ n ∈ S, w n * d n ξ) * k ξ =
        (1 + b) * k ξ + p ξ * k ξ - 2 * ∑ n ∈ S, w n * (d n ξ * k ξ) := by
    rw [sub_mul, mul_assoc (2 : ℝ), Finset.sum_mul]
    simp_rw [mul_assoc (w _)]
    ring
  have hInt :
      (∫ ξ, (1 + b + p ξ - 2 * ∑ n ∈ S, w n * d n ξ) * k ξ ∂μ) =
        (1 + b) * (∫ ξ, k ξ ∂μ) + (∫ ξ, p ξ * k ξ ∂μ) -
          2 * ∑ n ∈ S, w n * ∫ ξ, d n ξ * k ξ ∂μ := by
    simp_rw [hpoint]
    have hi := integral_sub (hb.add hpg) (hsum.const_mul 2)
    simp only [Pi.add_apply, integral_add hb hpg, integral_const_mul] at hi
    rw [hi, integral_finsetSum S (fun n _ => hterm n)]
    simp_rw [integral_const_mul]
  have hscale : (∑ n ∈ S, w n * (c * ∫ ξ, d n ξ * k ξ ∂μ)) =
      c * ∑ n ∈ S, w n * ∫ ξ, d n ξ * k ξ ∂μ := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl (fun _ _ => by ring)
  refine ⟨((hb.add hpg).sub (hsum.const_mul 2)).congr
    (Filter.Eventually.of_forall fun ξ => (hpoint ξ).symm), ?_⟩
  change primitiveArithmeticValue χ hp hn T (liftReal f) + energy (liftReal f) =
    c * ∫ ξ, (1 + b + p ξ - 2 * ∑ n ∈ S, w n * d n ξ) * k ξ ∂μ
  rw [hsrc, hgamma.2, hE, hInt]
  change b * (c * ∫ ξ, k ξ ∂μ) + (c * ∫ ξ, p ξ * k ξ ∂μ) -
    2 * (∑ n ∈ S, w n * (c * ∫ ξ, d n ξ * k ξ ∂μ)) + (c * ∫ ξ, k ξ ∂μ) = _
  rw [hscale]
  ring

/-- The original signed sine integrand is integrable on the positive frequency axis. -/
theorem integrableOn_primitiveSineIntegrand
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    IntegrableOn (fun ξ =>
      (1 + gammaConstant q (gammaParity χ) + periodicMultiplier (gammaParity χ) ξ -
        2 * ∑ n ∈ activePrimePowers T,
          pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * ξ)) *
        halfSineMoment T f ξ ^ 2) (Ioi (0 : ℝ)) :=
  (originalPrimitiveQ_sineMultiplier_facts χ hp hn hf).1

/-- The exact sine multiplier of the original primitive arithmetic value plus its physical energy. -/
theorem originalPrimitiveQ_eq_sineMultiplier
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (hp : χ.IsPrimitive) (hn : χ ≠ 1)
    {T : ℝ} {f : ℝ → ℝ} (hf : Admissible χ T f) :
    primitiveArithmeticValue χ hp hn T (liftReal f) + energy (liftReal f) =
      (4 / Real.pi) * ∫ ξ in Ioi (0 : ℝ),
        (1 + gammaConstant q (gammaParity χ) + periodicMultiplier (gammaParity χ) ξ -
          2 * ∑ n ∈ activePrimePowers T,
            pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * ξ)) *
          halfSineMoment T f ξ ^ 2 :=
  (originalPrimitiveQ_sineMultiplier_facts χ hp hn hf).2

end GRWTSK.NumberTheory.WeilQuadraticForm.OddShiftEnergySine
