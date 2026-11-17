/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.Analysis.Calculus.ParametricIntervalIntegral
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! # A removable linear factor of a twice continuously differentiable odd function -/

set_option autoImplicit false

open MeasureTheory Set Filter
open scoped Topology Interval

namespace GRWTSK.RealFunctions

/-- An odd C² function is x times an even C¹ function. The quotient takes
the original derivative at the origin and has an odd derivative. -/
theorem exists_even_contDiff_one_factor_of_odd
    {f : ℝ → ℝ} (hf : ContDiff ℝ 2 f) (ho : Function.Odd f) :
    ∃ g : ℝ → ℝ, ContDiff ℝ 1 g ∧ Function.Even g ∧ Function.Odd (deriv g) ∧
      (∀ x, f x = x * g x) ∧ g 0 = deriv f 0 := by
  have hf' : ContDiff ℝ 1 (deriv f) := hf.deriv'
  have hf'' : Continuous (deriv (deriv f)) := hf'.continuous_deriv (by norm_num)
  let F := fun x t : ℝ => deriv f (x * t)
  let D := fun x t : ℝ => deriv (deriv f) (x * t) * t
  let g := fun x : ℝ => ∫ t in (0 : ℝ)..1, F x t
  have hF (x : ℝ) : Continuous (F x) :=
    hf'.continuous.comp (continuous_const.mul continuous_id)
  have hD : Continuous (Function.uncurry D) :=
    (hf''.comp (continuous_fst.mul continuous_snd)).mul continuous_snd
  have hderiv (x : ℝ) : HasDerivAt g (∫ t in (0 : ℝ)..1, D x t) x := by
    let s := Ioo (x - 1) (x + 1)
    have hs : s ∈ 𝓝 x := Ioo_mem_nhds (by linarith) (by linarith)
    obtain ⟨C, hC⟩ :=
      (isCompact_Icc.prod isCompact_Icc :
        IsCompact (Icc (x - 1) (x + 1) ×ˢ Icc (0 : ℝ) 1)).exists_bound_of_continuousOn
          hD.continuousOn
    apply (intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
      (μ := volume) (F := F) (F' := D) (bound := fun _ => C) hs
      (Eventually.of_forall fun y => (hF y).aestronglyMeasurable)
      ((hF x).intervalIntegrable _ _)
      (show Continuous (D x) from (hf''.comp (continuous_const.mul continuous_id)).mul
        continuous_id).aestronglyMeasurable ?_
      (continuous_const.intervalIntegrable _ _) ?_).2
    · apply Eventually.of_forall
      intro t ht y hy
      have ht' : t ∈ Icc (0 : ℝ) 1 := by
        rw [uIoc_of_le zero_le_one] at ht
        exact Ioc_subset_Icc_self ht
      exact hC (y,t) ⟨Ioo_subset_Icc_self hy, ht'⟩
    · apply Eventually.of_forall
      intro t _ y _
      simpa only [F, D, Function.comp_def, id_eq, one_mul] using
        ((hf'.differentiable (by norm_num) (y*t)).hasDerivAt.comp y
          ((hasDerivAt_id y).mul_const t))
  have hg : ContDiff ℝ 1 g := by
    rw [contDiff_one_iff_deriv]
    refine ⟨fun x => (hderiv x).differentiableAt, ?_⟩
    rw [funext fun x => (hderiv x).deriv]
    exact intervalIntegral.continuous_parametric_intervalIntegral_of_continuous' hD 0 1
  have hz : f 0 = 0 := by
    have h := ho 0
    simp only [neg_zero] at h
    linarith
  have hfac (x : ℝ) : f x = x * g x := by
    have h := intervalIntegral.smul_integral_comp_mul_left (a := 0) (b := 1)
      (f := deriv f) x
    have hFTC := intervalIntegral.integral_deriv_eq_sub
      (f := f) (a := 0) (b := x)
      (fun y _ => hf.differentiable (by norm_num) y) (hf'.continuous.intervalIntegrable _ _)
    simp only [smul_eq_mul, mul_zero, mul_one, hFTC, hz, sub_zero] at h
    exact h.symm
  have he : Function.Even g := by
    intro x
    by_cases hx : x = 0
    · simp [hx]
    have h := ho x
    rw [hfac (-x), hfac x] at h
    apply mul_left_cancel₀ hx
    linarith
  have hd : Function.Odd (deriv g) := by
    intro x
    have h := ((hderiv (-x)).comp x (hasDerivAt_neg (x := x)))
    have heq : (g ∘ Neg.neg) = g := funext he
    rw [heq, ← (hderiv (-x)).deriv] at h
    rw [h.deriv]
    ring
  refine ⟨g, hg, he, hd, hfac, ?_⟩
  simp [g, F]

end GRWTSK.RealFunctions
