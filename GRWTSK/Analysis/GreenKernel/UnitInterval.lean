/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib

/-!
# The Dirichlet Green kernel on the unit interval

This module proves the centered-step representation and its finite signed Gram
identity. The finite signed coefficients are not assumed positive. This does
not identify the continuum background with the finite atomic part.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.Analysis.GreenKernel.UnitInterval

def unitVolume : Measure ℝ := volume.restrict (Icc (0:ℝ) 1)

instance : IsProbabilityMeasure unitVolume := by
  constructor
  simp [unitVolume, Measure.restrict_apply, Real.volume_Icc]

def kernel (r s : ℝ) : ℝ := min r s-r*s

def step (r t : ℝ) : ℝ := (Ici r).indicator (fun _ ↦ (1:ℝ)) t

def feature (r t : ℝ) : ℝ := step r t-(1-r)

@[simp] theorem kernel_symm (r s : ℝ) : kernel r s=kernel s r := by
  simp [kernel, min_comm, mul_comm]

@[simp] theorem kernel_zero_left (s : ℝ) (hs : 0 ≤ s) : kernel 0 s=0 := by
  simp [kernel, min_eq_left hs]

@[simp] theorem kernel_one_left (s : ℝ) (hs : s ≤ 1) : kernel 1 s=0 := by
  simp [kernel, min_eq_right hs]

@[simp] theorem kernel_diagonal (r : ℝ) : kernel r r=r*(1-r) := by
  simp [kernel]
  ring

theorem kernel_nonneg {r s : ℝ} (hr : r ∈ Icc (0:ℝ) 1)
    (hs : s ∈ Icc (0:ℝ) 1) : 0 ≤ kernel r s := by
  rcases le_total r s with h | h
  · rw [kernel, min_eq_left h]
    nlinarith [mul_nonneg hr.1 (sub_nonneg.mpr hs.2)]
  · rw [kernel, min_eq_right h]
    nlinarith [mul_nonneg hs.1 (sub_nonneg.mpr hr.2)]

theorem step_integrable (r : ℝ) : Integrable (step r) unitVolume :=
  (integrable_const (1:ℝ)).indicator measurableSet_Ici

theorem step_mul (r s t : ℝ) : step r t*step s t=step (max r s) t := by
  by_cases hr : r ≤ t <;> by_cases hs : s ≤ t <;>
    simp [step, Set.indicator, hr, hs, max_le_iff]

theorem integral_step {r : ℝ} (hr : r ∈ Icc (0:ℝ) 1) :
    (∫ t, step r t ∂unitVolume)=1-r := by
  have hset : Icc (0:ℝ) 1 ∩ Ici r=Icc r 1 := by
    ext t
    simp only [mem_inter_iff, mem_Icc, mem_Ici]
    constructor
    · rintro ⟨⟨h0,h1⟩,hr⟩
      exact ⟨hr,h1⟩
    · rintro ⟨hrt,ht1⟩
      exact ⟨⟨hr.1.trans hrt,ht1⟩,hrt⟩
  change (∫ t in Icc (0:ℝ) 1, (Ici r).indicator (fun _ ↦ (1:ℝ)) t)=1-r
  rw [setIntegral_indicator measurableSet_Ici, hset]
  simp [measureReal_def, Real.volume_Icc, ENNReal.toReal_ofReal (sub_nonneg.mpr hr.2)]

theorem feature_integrable (r : ℝ) : Integrable (feature r) unitVolume :=
  (step_integrable r).sub (integrable_const _)

theorem integral_feature {r : ℝ} (hr : r ∈ Icc (0:ℝ) 1) :
    (∫ t, feature r t ∂unitVolume)=0 := by
  unfold feature
  rw [integral_sub (step_integrable r) (integrable_const _), integral_step hr]
  simp

private theorem feature_product_expansion (r s t : ℝ) :
    feature r t*feature s t = step (max r s) t-
      (1-s)*step r t-(1-r)*step s t+(1-r)*(1-s) := by
  unfold feature
  rw [show (step r t-(1-r))*(step s t-(1-s)) =
    step r t*step s t-(1-s)*step r t-(1-r)*step s t+(1-r)*(1-s) by ring]
  rw [step_mul]

theorem feature_product_integrable (r s : ℝ) :
    Integrable (fun t ↦ feature r t*feature s t) unitVolume := by
  simp_rw [feature_product_expansion]
  exact (((step_integrable (max r s)).sub ((step_integrable r).const_mul _)).sub
    ((step_integrable s).const_mul _)).add (integrable_const _)

/-- Exact covariance, including signed and degenerate endpoint cases. -/
theorem integral_feature_product {r s : ℝ}
    (hr : r ∈ Icc (0:ℝ) 1) (hs : s ∈ Icc (0:ℝ) 1) :
    (∫ t, feature r t*feature s t ∂unitVolume)=kernel r s := by
  have hm : max r s ∈ Icc (0:ℝ) 1 :=
    ⟨hr.1.trans (le_max_left _ _), max_le hr.2 hs.2⟩
  calc
    (∫ t, feature r t * feature s t ∂unitVolume) =
        (∫ t, step (max r s) t -
          (1-s)*step r t - (1-r)*step s t + (1-r)*(1-s) ∂unitVolume) := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact feature_product_expansion r s t
    _ = kernel r s := by
      rw [integral_add
        (((step_integrable (max r s)).sub ((step_integrable r).const_mul _)).sub
          ((step_integrable s).const_mul _)) (integrable_const _)]
      rw [integral_sub
        ((step_integrable (max r s)).sub ((step_integrable r).const_mul _))
          ((step_integrable s).const_mul _)]
      rw [integral_sub (step_integrable (max r s))
        ((step_integrable r).const_mul _)]
      rw [integral_const_mul, integral_const_mul, integral_step hm,
        integral_step hr, integral_step hs]
      simp only [integral_const]
      simp
      rcases le_total r s with h | h
      · simp only [kernel, max_eq_right h, min_eq_left h]
        ring
      · simp only [kernel, max_eq_left h, min_eq_right h]
        ring

/-- The complete finite Gram form is an integral of the square of one signed sum. -/
theorem finite_signed_gram {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (hr : ∀ i ∈ s, r i ∈ Icc (0:ℝ) 1) :
    (∫ t, (∑ i ∈ s, a i*feature (r i) t)^2 ∂unitVolume) =
      ∑ i ∈ s, ∑ j ∈ s, a i*a j*kernel (r i) (r j) := by
  have hx (t : ℝ) : (∑ i ∈ s, a i*feature (r i) t)^2 =
      ∑ i ∈ s, ∑ j ∈ s, a i*a j*(feature (r i) t*feature (r j) t) := by
    rw [pow_two, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro i hi
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    ring
  simp_rw [hx]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro i hi
    rw [integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro j hj
      rw [integral_const_mul, integral_feature_product (hr i hi) (hr j hj)]
    · intro j hj
      exact (feature_product_integrable (r i) (r j)).const_mul _
  · intro i hi
    exact integrable_finsetSum s (fun j hj ↦
      (feature_product_integrable (r i) (r j)).const_mul _)

theorem finite_signed_gram_nonneg {ι : Type*} (s : Finset ι) (a r : ι → ℝ)
    (hr : ∀ i ∈ s, r i ∈ Icc (0:ℝ) 1) :
    0 ≤ ∑ i ∈ s, ∑ j ∈ s, a i*a j*kernel (r i) (r j) := by
  rw [← finite_signed_gram s a r hr]
  exact integral_nonneg (fun _ ↦ sq_nonneg _)

end GRWTSK.Analysis.GreenKernel.UnitInterval
