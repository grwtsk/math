/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
import GRWTSK.Analysis.RealAnalysis.Integration.QuadraticReadoutBound

/-!
# Centered Stieltjes readout for the literal real prime-power discrepancy

The test is C¹ on the unit interval. Both endpoint moments survive. The complex
Mellin specialization and its normally convergent zeta return are separately
listed formal obligations; no theorem below assumes them under another name.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.CenteredReadout
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.RealAnalysis.Integration.UnitIntervalPrimitives
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

structure RealTest where
  value : ℝ → ℝ
  slope : ℝ → ℝ
  slope_continuous : ContinuousOn slope (Icc (0:ℝ) 1)
  hasDeriv : ∀ t∈Icc (0:ℝ) 1, HasDerivAt value (slope t) t

variable (φ : RealTest)

theorem value_continuous : ContinuousOn φ.value (Icc (0:ℝ) 1) := by
  intro t ht
  exact (φ.hasDeriv t ht).continuousAt.continuousWithinAt

theorem unit_integral_eq_interval (f : ℝ → ℝ) :
    (∫ t, f t ∂unitVolume)=(∫ t in (0:ℝ)..1, f t) := by
  change (∫ t in Icc (0:ℝ) 1, f t)=_
  rw [integral_Icc_eq_integral_Ioc,
    intervalIntegral.integral_of_le (show (0:ℝ)≤1 by norm_num)]

theorem slope_integrable : Integrable φ.slope unitVolume :=
  φ.slope_continuous.integrableOn_Icc

theorem slope_integral : (∫ t, φ.slope t ∂unitVolume)=φ.value 1-φ.value 0 := by
  rw [unit_integral_eq_interval]
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ φ.hasDeriv t (by simpa using ht))
    (φ.slope_continuous.intervalIntegrable_of_Icc (by norm_num))

theorem step_slope_integrable (r : ℝ) :
    Integrable (fun t ↦ step r t*φ.slope t) unitVolume := by
  have heq : (fun t ↦ step r t*φ.slope t)=
      (Ici r).indicator φ.slope := by
    funext t
    by_cases h : r≤t <;> simp [step, Set.indicator, h]
  rw [heq]
  exact (slope_integrable φ).indicator measurableSet_Ici

theorem step_slope_integral {r : ℝ} (hr : r∈Icc (0:ℝ) 1) :
    (∫ t, step r t*φ.slope t ∂unitVolume)=φ.value 1-φ.value r := by
  have heq : (fun t ↦ step r t*φ.slope t)=
      (Ici r).indicator φ.slope := by
    funext t
    by_cases h : r≤t <;> simp [step, Set.indicator, h]
  have hset : Icc (0:ℝ) 1 ∩ Ici r=Icc r 1 := by
    ext t
    simp only [mem_inter_iff, mem_Icc, mem_Ici]
    constructor
    · rintro ⟨⟨h0,h1⟩,hrt⟩
      exact ⟨hrt,h1⟩
    · rintro ⟨hrt,ht1⟩
      exact ⟨⟨hr.1.trans hrt,ht1⟩,hrt⟩
  rw [heq]
  change (∫ t in Icc (0:ℝ) 1, (Ici r).indicator φ.slope t)=_
  rw [setIntegral_indicator measurableSet_Ici, hset, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hr.2]
  have hsub : Icc r 1 ⊆ Icc (0:ℝ) 1 := by
    intro t ht
    exact ⟨hr.1.trans ht.1,ht.2⟩
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ φ.hasDeriv t (hsub (by simpa [uIcc_of_le hr.2] using ht)))
    ((φ.slope_continuous.mono hsub).intervalIntegrable_of_Icc hr.2)

def density (t : ℝ) : ℝ := φ.value t/(1+t)

theorem density_integrable : Integrable (density φ) unitVolume := by
  apply ContinuousOn.integrableOn_Icc
  apply (value_continuous φ).div (continuous_const.add continuous_id).continuousOn
  intro t ht
  change 1 + t ≠ 0
  linarith [ht.1]

theorem log_slope_integrable :
    Integrable (fun t ↦ logarithm t*φ.slope t) unitVolume :=
  (logarithm_continuousOn.mul φ.slope_continuous).integrableOn_Icc

/-- Integration by parts of the continuous subtraction, with its actual endpoint. -/
theorem background_ibp :
    (∫ t, logarithm t*φ.slope t ∂unitVolume)=
      Real.log 2*φ.value 1-(∫ t, density φ t ∂unitVolume) := by
  have hp : ∀ t∈Icc (0:ℝ) 1,
      HasDerivAt (fun t ↦ logarithm t*φ.value t)
        (density φ t+logarithm t*φ.slope t) t := by
    intro t ht
    apply ((logarithm_hasDerivAt ht).mul (φ.hasDeriv t ht)).congr_deriv
    unfold density
    ring
  have hder := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ hp t (by simpa using ht))
    ((((value_continuous φ).div (continuous_const.add continuous_id).continuousOn
      (fun t ht ↦ by change 1 + t ≠ 0; linarith [ht.1])).add
      (logarithm_continuousOn.mul φ.slope_continuous)).intervalIntegrable_of_Icc (by norm_num))
  rw [← unit_integral_eq_interval] at hder
  rw [integral_add (density_integrable φ) (log_slope_integrable φ)] at hder
  simp only [logarithm, add_zero, Real.log_one, zero_mul, sub_zero] at hder
  norm_num at hder
  unfold logarithm
  linarith

def realAction (X : ℕ) : ℝ :=
  (∑ n∈window X, coefficient n*φ.value (location X n))-
    ∫ t, density φ t ∂unitVolume

theorem cumulative_slope_integrable (X : ℕ) :
    Integrable (fun t ↦ cumulative X t*φ.slope t) unitVolume := by
  have hex (t : ℝ) : cumulative X t*φ.slope t =
      (∑ n∈window X, coefficient n*(step (location X n) t*φ.slope t))-
        logarithm t*φ.slope t := by
    simp only [cumulative, sub_mul, Finset.sum_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [hex]
  exact (integrable_finsetSum (window X) (fun n hn ↦
    (step_slope_integrable φ (location X n)).const_mul _)).sub
      (log_slope_integrable φ)

theorem cumulative_ibp {X : ℕ} (hX : 0<X) :
    (∫ t, cumulative X t*φ.slope t ∂unitVolume)=
      φ.value 1*mass0 X-realAction φ X := by
  have hex (t : ℝ) : cumulative X t*φ.slope t =
      (∑ n∈window X, coefficient n*(step (location X n) t*φ.slope t))-
        logarithm t*φ.slope t := by
    simp only [cumulative, sub_mul, Finset.sum_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [hex]
  rw [integral_sub
    (integrable_finsetSum (window X) (fun n hn ↦
      (step_slope_integrable φ (location X n)).const_mul _))
    (log_slope_integrable φ), integral_finsetSum]
  · have hsum : (∑ n∈window X, ∫ t,
        coefficient n*(step (location X n) t*φ.slope t) ∂unitVolume)=
        ∑ n∈window X, coefficient n*(φ.value 1-φ.value (location X n)) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [integral_const_mul, step_slope_integral φ (location_mem hX hn)]
    rw [hsum, background_ibp]
    simp only [mass0, realAction, mul_sub, Finset.sum_sub_distrib,
      ← Finset.sum_mul]
    ring
  · intro n hn
    exact (step_slope_integrable φ (location X n)).const_mul _

/-- Both boundary moments and the entire centered residual are retained. -/
theorem centered_ibp {X : ℕ} (hX : 0<X) :
    realAction φ X = φ.value 0*mass0 X+
      (φ.value 1-φ.value 0)*mass1 X-
      ∫ t, (cumulative X t-center X)*φ.slope t ∂unitVolume := by
  have hex (t : ℝ) : (cumulative X t-center X)*φ.slope t =
      cumulative X t*φ.slope t-center X*φ.slope t := by ring
  simp_rw [hex]
  rw [integral_sub (cumulative_slope_integrable φ X)
      ((slope_integrable φ).const_mul _),
    integral_const_mul, cumulative_ibp φ hX, slope_integral φ]
  unfold DyadicDiscrepancy.center
  ring

theorem slope_memLp_two : MemLp φ.slope 2 unitVolume := by
  apply (memLp_two_iff_integrable_sq_norm (slope_integrable φ).aestronglyMeasurable).2
  have h : Integrable (fun t ↦ φ.slope t^2) unitVolume :=
    (φ.slope_continuous.pow 2).integrableOn_Icc
  simpa only [Real.norm_eq_abs, sq_abs] using h

/-- Both L² obligations are discharged for the actual finite source and the C¹ test. -/
theorem realAction_sq_bound {X : ℕ} (hX : 0<X) :
    (realAction φ X)^2 ≤ augmentedEnergy X *
      ((φ.value 0)^2+(φ.value 1-φ.value 0)^2+
        (∫ t, (φ.slope t)^2 ∂unitVolume)) := by
  rw [centered_ibp φ hX]
  exact GRWTSK.Analysis.RealAnalysis.Integration.QuadraticReadoutBound.reconstructed_readout_sq_le
    (fun t ↦ cumulative X t-center X) φ.slope (centered_memLp_two X) (slope_memLp_two φ)
    (mass0 X) (mass1 X) (φ.value 0) (φ.value 1-φ.value 0)

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.CenteredReadout
