/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.CenteredReadout

/-!
# Complete finite formula for the actual Green energy

The atomic Gram sum, both atomic/background orders, and the complete background
energy are evaluated. The sine-series identity is not needed for this formula.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.GreenEnergyFormula
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.RealAnalysis.Integration.UnitIntervalPrimitives
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.CenteredReadout

def backgroundCenter : ℝ := 2*Real.log 2-1

def background (t : ℝ) : ℝ := logarithm t-backgroundCenter

theorem background_continuous : ContinuousOn background (Icc (0:ℝ) 1) :=
  logarithm_continuousOn.sub continuousOn_const

theorem background_integrable : Integrable background unitVolume :=
  background_continuous.integrableOn_Icc

theorem integral_background : (∫ t, background t ∂unitVolume)=0 := by
  unfold background
  have hlog : Integrable logarithm unitVolume := logarithm_continuousOn.integrableOn_Icc
  rw [integral_sub hlog (integrable_const _)]
  rw [unit_integral_eq_interval, integral_logarithm]
  simp [backgroundCenter]

theorem background_square_integrable : Integrable (fun t ↦ background t^2) unitVolume :=
  (background_continuous.pow 2).integrableOn_Icc

theorem integral_background_square :
    (∫ t, background t^2 ∂unitVolume)=1-2*(Real.log 2)^2 := by
  have hd : ∀ t∈Icc (0:ℝ) 1,
      HasDerivAt (fun t ↦ cellPrimitive backgroundCenter (1+t)) (background t^2) t := by
    intro t ht
    have hp : 0<1+t := by linarith [ht.1]
    have ha : HasDerivAt (fun x : ℝ => 1+x) 1 t := by
      simpa only [Pi.add_def, id_eq, zero_add] using
        (hasDerivAt_const t (1 : ℝ)).add (hasDerivAt_id t)
    have h := (cellPrimitive_hasDerivAt backgroundCenter hp).comp t ha
    apply h.congr_deriv
    unfold background logarithm
    ring
  rw [unit_integral_eq_interval]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t ht ↦ hd t (by simpa using ht))
    ((background_continuous.pow 2).intervalIntegrable_of_Icc (by norm_num))]
  norm_num [cellPrimitive, backgroundCenter]
  ring

theorem step_log_integrable (r : ℝ) :
    Integrable (fun t ↦ step r t*logarithm t) unitVolume := by
  have he : (fun t ↦ step r t*logarithm t)=(Ici r).indicator logarithm := by
    funext t
    by_cases h : r≤t <;> simp [step, Set.indicator, h]
  rw [he]
  exact (logarithm_continuousOn.integrableOn_Icc).indicator measurableSet_Ici

theorem integral_step_log {r : ℝ} (hr : r∈Icc (0:ℝ) 1) :
    (∫ t, step r t*logarithm t ∂unitVolume)=logPrimitive 1-logPrimitive r := by
  let test : RealTest :=
    { value := logPrimitive
      slope := logarithm
      slope_continuous := logarithm_continuousOn
      hasDeriv := fun t ht ↦ logPrimitive_hasDerivAt ht }
  exact step_slope_integral test hr

theorem feature_background_integrable (r : ℝ) :
    Integrable (fun t ↦ feature r t*background t) unitVolume := by
  have he (t : ℝ) : feature r t*background t =
      step r t*logarithm t-(1-r)*logarithm t-backgroundCenter*feature r t := by
    unfold feature background
    ring
  simp_rw [he]
  exact ((step_log_integrable r).sub
    (logarithm_continuousOn.integrableOn_Icc.const_mul _)).sub
    ((feature_integrable r).const_mul _)

theorem integral_feature_background {r : ℝ} (hr : r∈Icc (0:ℝ) 1) :
    (∫ t, feature r t*background t ∂unitVolume)=greenBackground r := by
  have he (t : ℝ) : feature r t*background t =
      step r t*logarithm t-(1-r)*logarithm t-backgroundCenter*feature r t := by
    unfold feature background
    ring
  simp_rw [he]
  have hlog : Integrable logarithm unitVolume := logarithm_continuousOn.integrableOn_Icc
  have hsub₁ := integral_sub ((step_log_integrable r).sub (hlog.const_mul (1-r)))
    ((feature_integrable r).const_mul backgroundCenter)
  have hsub₂ := integral_sub (step_log_integrable r) (hlog.const_mul (1-r))
  simp only [Pi.sub_def] at hsub₁ hsub₂
  rw [hsub₁, hsub₂, integral_const_mul, integral_const_mul, integral_feature hr,
    integral_step_log hr, unit_integral_eq_interval, integral_logarithm]
  norm_num [logPrimitive,greenBackground]
  ring

def atomicFeature (X : ℕ) (t : ℝ) : ℝ :=
  ∑ n∈window X, coefficient n*feature (location X n) t

theorem centered_source_identity (X : ℕ) (t : ℝ) :
    cumulative X t-center X=atomicFeature X t-background t := by
  rw [center_expansion]
  simp only [cumulative, atomicFeature, feature, background, backgroundCenter,
    mul_sub, Finset.sum_sub_distrib]
  ring

private theorem atomic_square_expansion (X : ℕ) (t : ℝ) :
    atomicFeature X t^2 = ∑ n∈window X, ∑ m∈window X,
      coefficient n*coefficient m*(feature (location X n) t*feature (location X m) t) := by
  unfold atomicFeature
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  ring

theorem atomic_square_integrable (X : ℕ) :
    Integrable (fun t ↦ atomicFeature X t^2) unitVolume := by
  simp_rw [atomic_square_expansion]
  exact integrable_finsetSum (window X) (fun n hn ↦
    integrable_finsetSum (window X) (fun m hm ↦
      (feature_product_integrable (location X n) (location X m)).const_mul _))

theorem atomic_background_integrable (X : ℕ) :
    Integrable (fun t ↦ atomicFeature X t*background t) unitVolume := by
  have he (t : ℝ) : atomicFeature X t*background t =
      ∑ n∈window X, coefficient n*(feature (location X n) t*background t) := by
    simp only [atomicFeature, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [he]
  exact integrable_finsetSum (window X) (fun n hn ↦
    (feature_background_integrable (location X n)).const_mul _)

theorem integral_atomic_background {X : ℕ} (hX : 0<X) :
    (∫ t, atomicFeature X t*background t ∂unitVolume)=
      ∑ n∈window X, coefficient n*greenBackground (location X n) := by
  have he (t : ℝ) : atomicFeature X t*background t =
      ∑ n∈window X, coefficient n*(feature (location X n) t*background t) := by
    simp only [atomicFeature, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n hn
    ring
  simp_rw [he]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro n hn
    rw [integral_const_mul, integral_feature_background (location_mem hX hn)]
  · intro n hn
    exact (feature_background_integrable (location X n)).const_mul _

def finiteGreenFormula (X : ℕ) : ℝ :=
  (∑ n∈window X, ∑ m∈window X,
    coefficient n*coefficient m*kernel (location X n) (location X m))-
  2*(∑ n∈window X, coefficient n*greenBackground (location X n))+
  1-2*(Real.log 2)^2

/-- The finite certificate evaluates the actual centered source energy. -/
theorem greenEnergy_eq_finiteGreenFormula {X : ℕ} (hX : 0<X) :
    greenEnergy X=finiteGreenFormula X := by
  unfold greenEnergy
  simp_rw [centered_source_identity]
  have he (t : ℝ) : (atomicFeature X t-background t)^2 =
      atomicFeature X t^2-2*(atomicFeature X t*background t)+background t^2 := by ring
  simp_rw [he]
  have hadd := integral_add
    ((atomic_square_integrable X).sub ((atomic_background_integrable X).const_mul 2))
    background_square_integrable
  have hsub := integral_sub (atomic_square_integrable X)
    ((atomic_background_integrable X).const_mul 2)
  simp only [Pi.sub_def] at hadd hsub
  rw [hadd, hsub, integral_const_mul, integral_atomic_background hX,
    integral_background_square]
  have hgram := finite_signed_gram (window X) coefficient (location X)
    (fun n hn ↦ location_mem hX hn)
  change (∫ t, atomicFeature X t^2 ∂unitVolume)=_ at hgram
  rw [hgram]
  unfold finiteGreenFormula
  ring

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.GreenEnergyFormula
