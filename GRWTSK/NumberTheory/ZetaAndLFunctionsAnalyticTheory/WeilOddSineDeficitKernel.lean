/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineKernelOverlap
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeMultiplierTail
import Mathlib.MeasureTheory.Integral.Prod

/-!
# The square norm of the compact sine-deficit kernel

The integral kernel in §11 of WeilOddSupportBoundaryReflection.md has the
same squared norm as the double-frequency sinc rectangle. The product of
the two integrable frequency weights dominates the four-variable integrand.
After exchanging the integrations, the two unit-interval sine overlaps
factor. Their existing identity gives the sinc difference and the factor
of `π⁻²`. This identifies the quantity that the rectangle certificate
must bound. The argument works for any integrable real frequency weight.

Pairing the kernel with the product of two copies of a real L² test
recovers the sine-deficit quadratic form. Cauchy–Schwarz bounds this
pairing by the square root of the rectangle times the physical squared
norm. For the original conductor-three deficit, the checked tail
identity extends this bound to the entire positive frequency axis.

Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt

open OddSineKernelOverlap OddMultiplierBounds OddRootProjection LowSchur
open OddContinuousSine

/-- The integral kernel on the two physical coordinates in the unit interval. -/
def sineDeficitKernel (R : ℝ) (d : ℝ → ℝ) (z : ℝ × ℝ) : ℝ :=
  (2 / Real.pi) * ∫ x in Ioc (0 : ℝ) R,
    d x * (Real.sin (x * z.1) * Real.sin (x * z.2))

/-- The double-frequency integral bounded by the rectangle certificate. -/
def sineDeficitRectangle (R : ℝ) (d : ℝ → ℝ) : ℝ :=
  let ν := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) R)
  ∫ p : ℝ × ℝ, d p.1 * d p.2 *
    ((Real.sinc (p.1 - p.2) - Real.sinc (p.1 + p.2)) ^ 2 / Real.pi ^ 2) ∂ν.prod ν

private theorem abs_sine_product_le_one (x y : ℝ) :
    ‖Real.sin x * Real.sin y‖ ≤ 1 := by
  rw [norm_mul, Real.norm_eq_abs, Real.norm_eq_abs, ← one_mul (1 : ℝ)]
  exact mul_le_mul (Real.abs_sin_le_one _) (Real.abs_sin_le_one _) (abs_nonneg _) zero_le_one

/-- The squared physical kernel norm is the exact double-frequency sinc rectangle. -/
theorem sineDeficitKernel_sq_integral_eq {R : ℝ} {d : ℝ → ℝ}
    (hd : Measurable d) (hdi : IntegrableOn d (Ioc (0 : ℝ) R)) :
    let μ := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) 1)
    Integrable (fun z => sineDeficitKernel R d z ^ 2) (μ.prod μ) ∧
      (∫ z, sineDeficitKernel R d z ^ 2 ∂μ.prod μ) = sineDeficitRectangle R d := by
  intro μ
  let ν := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) R)
  let c : ℝ := 2 / Real.pi
  let s (p : ℝ × ℝ) (u : ℝ) := Real.sin (p.1 * u) * Real.sin (p.2 * u)
  let F (z p : ℝ × ℝ) := (d p.1 * d p.2) * (s p z.1 * s p z.2)
  have hν : Integrable d ν := hdi
  have hF : Integrable (Function.uncurry F) ((μ.prod μ).prod (ν.prod ν)) := by
    refine ((hν.mul_prod hν).comp_snd (μ.prod μ)).mono ?_ ?_
    · have hm : Measurable (Function.uncurry F) := by
        unfold Function.uncurry F s
        fun_prop
      exact hm.aestronglyMeasurable
    · apply Filter.Eventually.of_forall
      intro ⟨z, p⟩
      change ‖(d p.1 * d p.2) * (s p z.1 * s p z.2)‖ ≤ ‖d p.1 * d p.2‖
      rw [norm_mul]
      apply mul_le_of_le_one_right (norm_nonneg _)
      rw [norm_mul, ← one_mul (1 : ℝ)]
      exact mul_le_mul (abs_sine_product_le_one (p.1 * z.1) (p.2 * z.1))
        (abs_sine_product_le_one (p.1 * z.2) (p.2 * z.2)) (norm_nonneg _) zero_le_one
  have hz (z : ℝ × ℝ) :
      sineDeficitKernel R d z ^ 2 = c ^ 2 * ∫ p, F z p ∂ν.prod ν := by
    let f (x : ℝ) := d x * (Real.sin (x * z.1) * Real.sin (x * z.2))
    have heq : (∫ p, F z p ∂ν.prod ν) = ∫ p : ℝ × ℝ, f p.1 * f p.2 ∂ν.prod ν := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun p => by dsimp [F, s, f]; ring)
    rw [heq, integral_prod_mul, ← pow_two]
    change (c * ∫ x, f x ∂ν) ^ 2 = _
    rw [mul_pow]
  have hp (p : ℝ × ℝ) :
      c ^ 2 * (∫ z, F z p ∂μ.prod μ) =
        d p.1 * d p.2 * ((Real.sinc (p.1 - p.2) - Real.sinc (p.1 + p.2)) ^ 2 / Real.pi ^ 2) := by
    have hh :
        (∫ z, F z p ∂μ.prod μ) =
          (d p.1 * d p.2) * (∫ u, s p u ∂μ) ^ 2 := by
      simp only [F, integral_const_mul, integral_prod_mul, pow_two]
    have hs : (∫ u, s p u ∂μ) = ∫ u in (0 : ℝ)..1,
        Real.sin (p.1 * u) * Real.sin (p.2 * u) := by
      rw [intervalIntegral.integral_of_le zero_le_one]
    rw [hh, mul_left_comm, hs, scaled_integral_sin_mul_sin_sq]
  constructor
  · apply (hF.integral_prod_left.const_mul (c ^ 2)).congr
    exact Filter.Eventually.of_forall (fun z => (hz z).symm)
  · simp_rw [hz, integral_const_mul]
    rw [integral_integral_swap hF, ← integral_const_mul]
    exact integral_congr_ae (Filter.Eventually.of_forall hp)

/-- The same rectangle controls the sine-deficit quadratic form on the full real L² space. -/
theorem abs_sineDeficitQuadratic_le {R : ℝ} {d h : ℝ → ℝ}
    (hd : Measurable d) (hdi : IntegrableOn d (Ioc (0 : ℝ) R))
    (hh : MemLp h 2 ((volume : Measure ℝ).restrict (Ioc (0 : ℝ) 1))) :
    let μ := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) 1)
    let ν := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) R)
    |(2 / Real.pi) * ∫ x, d x * halfSineMoment 1 h x ^ 2 ∂ν| ≤
      Real.sqrt (sineDeficitRectangle R d) * ∫ u, h u ^ 2 ∂μ := by
  intro μ ν
  let c : ℝ := 2 / Real.pi
  let k := sineDeficitKernel R d
  let G (z : ℝ × ℝ) := h z.1 * h z.2
  let s (x u : ℝ) := h u * Real.sin (x * u)
  let F (x : ℝ) (z : ℝ × ℝ) :=
    (d x * G z) * (Real.sin (x * z.1) * Real.sin (x * z.2))
  have hν : Integrable d ν := hdi
  have hH : Integrable h μ := hh.integrable (by norm_num)
  have hG : Integrable G (μ.prod μ) := hH.mul_prod hH
  have hDom := hν.mul_prod hG
  have hF : Integrable (Function.uncurry F) (ν.prod (μ.prod μ)) := by
    refine hDom.mono (hDom.aestronglyMeasurable.mul ?_) ?_
    · exact (show Continuous (fun p : ℝ × (ℝ × ℝ) =>
        Real.sin (p.1 * p.2.1) * Real.sin (p.1 * p.2.2)) by fun_prop).aestronglyMeasurable
    · exact Filter.Eventually.of_forall fun ⟨x, z⟩ => by
        change ‖(d x * G z) * (Real.sin (x * z.1) * Real.sin (x * z.2))‖ ≤ ‖d x * G z‖
        rw [norm_mul]
        exact mul_le_of_le_one_right (norm_nonneg _)
          (abs_sine_product_le_one (x * z.1) (x * z.2))
  have hrow (x : ℝ) :
      (∫ z, F x z ∂μ.prod μ) = d x * halfSineMoment 1 h x ^ 2 := by
    have heq (z : ℝ × ℝ) : F x z = d x * (s x z.1 * s x z.2) := by
      dsimp [F, G, s]
      ring
    simp_rw [heq, integral_const_mul, integral_prod_mul, ← pow_two]
    rw [halfSineMoment, intervalIntegral.integral_of_le zero_le_one]
  have hcol (z : ℝ × ℝ) : c * (∫ x, F x z ∂ν) = k z * G z := by
    have heq (x : ℝ) : F x z = G z *
        (d x * (Real.sin (x * z.1) * Real.sin (x * z.2))) := by
      dsimp [F]
      ring
    simp_rw [heq, integral_const_mul]
    change c * (G z * ∫ x, d x * (Real.sin (x * z.1) * Real.sin (x * z.2)) ∂ν) =
      (c * ∫ x, d x * (Real.sin (x * z.1) * Real.sin (x * z.2)) ∂ν) * G z
    ac_rfl
  have hpair :
      c * (∫ x, d x * halfSineMoment 1 h x ^ 2 ∂ν) = ∫ z, k z * G z ∂μ.prod μ := by
    simp_rw [← hrow]
    rw [integral_integral_swap hF, ← integral_const_mul]
    exact integral_congr_ae (Filter.Eventually.of_forall hcol)
  have hkm : Measurable k := by
    unfold k sineDeficitKernel
    apply measurable_const.mul
    apply StronglyMeasurable.measurable
    exact (show Measurable (fun p : (ℝ × ℝ) × ℝ =>
      d p.2 * (Real.sin (p.2 * p.1.1) * Real.sin (p.2 * p.1.2))) by
        fun_prop).stronglyMeasurable.integral_prod_right' (ν := ν)
  have hrect := sineDeficitKernel_sq_integral_eq hd hdi
  have hk2 : MemLp k 2 (μ.prod μ) :=
    (memLp_two_iff_integrable_sq hkm.aestronglyMeasurable).2 hrect.1
  have hG2 : MemLp G 2 (μ.prod μ) := by
    apply (memLp_two_iff_integrable_sq hG.aestronglyMeasurable).2
    apply (hh.integrable_sq.mul_prod hh.integrable_sq).congr
    exact Filter.Eventually.of_forall fun z => by simp only [G, mul_pow]
  have hnormG : (∫ z, G z ^ 2 ∂μ.prod μ) = (∫ u, h u ^ 2 ∂μ) ^ 2 := by
    simp_rw [G, mul_pow]
    rw [integral_prod_mul (fun u : ℝ => h u ^ 2) (fun u : ℝ => h u ^ 2), ← pow_two]
  have hnormK : (∫ z, k z ^ 2 ∂μ.prod μ) = sineDeficitRectangle R d := hrect.2
  have hcs := integral_mul_norm_le_Lp_mul_Lq Real.HolderConjugate.two_two
    (by simpa using hk2) (by simpa using hG2)
  simp only [Real.rpow_two, Real.norm_eq_abs, sq_abs, ← Real.sqrt_eq_rpow, hnormG,
    Real.sqrt_sq (integral_nonneg fun _ => sq_nonneg _)] at hcs
  change |c * ∫ x, d x * halfSineMoment 1 h x ^ 2 ∂ν| ≤ _
  rw [hpair]
  refine (norm_integral_le_integral_norm (fun z => k z * G z)).trans ?_
  simpa only [Real.norm_eq_abs, abs_mul, hnormK] using hcs

private theorem q3SineMultiplier_measurable (χ : DirichletCharacter ℂ 3) :
    Measurable (q3SineMultiplier χ) := by
  have hp : Measurable (periodicMultiplier (gammaParity χ)) := by
    unfold periodicMultiplier
    apply Measurable.tsum
    intro j
    unfold periodicMultiplierTerm PeriodicBoundary.multiplierSummand
    fun_prop
  unfold q3SineMultiplier
  fun_prop

/-- The nonnegative deficit of the original signed radius-one symbol. -/
def q3SineDeficit (χ : DirichletCharacter ℂ 3) (x : ℝ) : ℝ :=
  max 0 (1 - q3SineMultiplier χ x)

theorem measurable_q3SineDeficit (χ : DirichletCharacter ℂ 3) :
    Measurable (q3SineDeficit χ) :=
  measurable_const.max (measurable_const.sub (q3SineMultiplier_measurable χ))

theorem integrableOn_q3SineDeficit (χ : DirichletCharacter ℂ 3) (R : ℝ) :
    IntegrableOn (q3SineDeficit χ) (Ioc (0 : ℝ) R) := by
  let mass := ∑ n ∈ activePrimePowers 1, |pairedPrimeWeight χ n|
  let C := max 0 (2 * mass - gammaConstant 3 (gammaParity χ))
  have hb (x : ℝ) :
      (∑ n ∈ activePrimePowers 1, pairedPrimeWeight χ n * Real.cos (Real.log (n : ℝ) * x)) ≤ mass := by
    apply Finset.sum_le_sum
    intro n _
    exact (le_abs_self _).trans (by
      rw [abs_mul]
      exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _))
  refine Integrable.mono' (g := fun _ => C) (integrable_const C)
    (measurable_q3SineDeficit χ).aestronglyMeasurable ?_
  apply Filter.Eventually.of_forall
  intro x
  rw [q3SineDeficit, Real.norm_of_nonneg (le_max_left _ _)]
  apply max_le_max le_rfl
  unfold q3SineMultiplier
  linarith [hb x, periodicMultiplier_nonneg (gammaParity χ) x]

/-- The compact physical kernel for the actual source has precisely the certificate rectangle. -/
theorem q3_sineDeficitKernel_sq_integral_eq (χ : DirichletCharacter ℂ 3) :
    let μ := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) 1)
    Integrable (fun z => sineDeficitKernel 256 (q3SineDeficit χ) z ^ 2) (μ.prod μ) ∧
      (∫ z, sineDeficitKernel 256 (q3SineDeficit χ) z ^ 2 ∂μ.prod μ) =
        sineDeficitRectangle 256 (q3SineDeficit χ) :=
  sineDeficitKernel_sq_integral_eq (measurable_q3SineDeficit χ) (integrableOn_q3SineDeficit χ 256)

/-- The compact rectangle bounds the original deficit over all positive frequencies. -/
theorem abs_q3_sineDeficitQuadratic_le (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1)
    {h : ℝ → ℝ} (hh : MemLp h 2 ((volume : Measure ℝ).restrict (Ioc (0 : ℝ) 1))) :
    |(2 / Real.pi) * ∫ x in Ioi (0 : ℝ), q3SineDeficit χ x * halfSineMoment 1 h x ^ 2| ≤
      Real.sqrt (sineDeficitRectangle 256 (q3SineDeficit χ)) *
        ∫ u in Ioc (0 : ℝ) 1, h u ^ 2 := by
  have hsupport :
      (∫ x in Ioi (0 : ℝ), q3SineDeficit χ x * halfSineMoment 1 h x ^ 2) =
        ∫ x in Ioc (0 : ℝ) 256, q3SineDeficit χ x * halfSineMoment 1 h x ^ 2 := by
    apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (fun _ hx => hx.1)
    intro x hx
    have hx' : 256 ≤ x := le_of_lt (lt_of_not_ge (fun hle => hx.2 ⟨hx.1, hle⟩))
    rw [q3SineDeficit, q3_sine_deficit_eq_zero_of_ge_256 χ hodd hx', zero_mul]
  rw [hsupport]
  exact abs_sineDeficitQuadratic_le (measurable_q3SineDeficit χ)
    (integrableOn_q3SineDeficit χ 256) hh

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
