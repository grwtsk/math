/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDeterminantCircleCount
import Mathlib.Analysis.Complex.Liouville

/-!
# A value-only collar certificate for completed-zeta multiplicities

The contour count uses a derivative error. When approximation is controlled
on a larger closed disk, Cauchy's estimate supplies that error on the
counting circle. No extra derivative certificate for the candidate is
required. Exact analytic-order inventories remain inputs.
-/

set_option autoImplicit false
noncomputable section
open Metric
open scoped BigOperators

namespace GRWTSK.NumberTheory.Zeta.XiDeterminantValueCollar

open CompletedQuotientSource XiDeterminantCircleCount
open GRWTSK.Analysis.ComplexAnalysis.FiniteLogDerivativeCircle

theorem deriv_error_le_of_value_collar {f g : ℂ → ℂ} {c : ℂ} {R h δ : ℝ}
    (width : 0 < h)
    (hf : AnalyticOnNhd ℂ f (closedBall c (R + h)))
    (hg : AnalyticOnNhd ℂ g (closedBall c (R + h)))
    (error : ∀ w ∈ closedBall c (R + h), ‖g w - f w‖ ≤ δ)
    {z : ℂ} (hz : z ∈ sphere c R) :
    ‖deriv g z - deriv f z‖ ≤ δ / h := by
  have inside : closedBall z h ⊆ closedBall c (R + h) := by
    intro w hw
    rw [mem_closedBall] at hw ⊢
    have hz' := mem_sphere.mp hz
    linarith only [dist_triangle w z c, hz', hw]
  have analytic := (hg.sub hf).mono inside
  have diff := analytic.differentiableOn
  have hd : DiffContOnCl ℂ (g - f) (ball z h) := by
    apply DifferentiableOn.diffContOnCl
    rwa [closure_ball z width.ne']
  have estimate := Complex.norm_deriv_le_of_forall_mem_sphere_norm_le width hd
    (fun w hw => error w (inside (sphere_subset_closedBall hw)))
  have center := inside (mem_closedBall_self width.le)
  rwa [deriv_sub (hg z center).differentiableAt (hf z center).differentiableAt] at estimate

/-- Recover the actual completed-zeta count using only a value error on
the larger disk, plus the source contour's separation and derivative bound. -/
theorem count_eq_completed_zeta_of_value_collar {D : ℂ → ℂ} {c : ℂ} {R h b M δ : ℝ}
    (source : AnalyticZeroData spectralSource c R) (candidate : AnalyticZeroData D c R)
    (width : 0 < h) (hb : 0 < b) (small : δ ≤ b)
    (hD : AnalyticOnNhd ℂ D (closedBall c (R + h)))
    (separation : ∀ z ∈ sphere c R, 2 * b ≤ ‖spectralSource z‖ ∧ ‖deriv spectralSource z‖ ≤ M)
    (error : ∀ z ∈ closedBall c (R + h), ‖D z - spectralSource z‖ ≤ δ)
    (gap : R * ((δ / h) / b + M * δ / b ^ 2) < 1) :
    (∑ a ∈ candidate.zeros, candidate.multiplicity a) = ∑ a ∈ source.zeros, source.multiplicity a := by
  have diff : Differentiable ℂ spectralSource := by
    unfold spectralSource
    exact differentiable_xi.comp (by fun_prop)
  apply count_eq_completed_zeta source candidate hb small separation _ gap
  intro z hz
  have inside : z ∈ closedBall c (R + h) :=
    closedBall_subset_closedBall (by linarith) (sphere_subset_closedBall hz)
  exact ⟨error z inside, deriv_error_le_of_value_collar width
    (fun w _ => diff.analyticAt w) hD error hz⟩

/-- A value bound for the source on the same collar also supplies the
derivative bound used by the contour comparison. -/
theorem count_eq_completed_zeta_of_value_bounds {D : ℂ → ℂ} {c : ℂ} {R h b B δ : ℝ}
    (source : AnalyticZeroData spectralSource c R) (candidate : AnalyticZeroData D c R)
    (width : 0 < h) (hb : 0 < b) (small : δ ≤ b)
    (hD : AnalyticOnNhd ℂ D (closedBall c (R + h)))
    (separation : ∀ z ∈ sphere c R, 2 * b ≤ ‖spectralSource z‖)
    (sourceBound : ∀ z ∈ closedBall c (R + h), ‖spectralSource z‖ ≤ B)
    (error : ∀ z ∈ closedBall c (R + h), ‖D z - spectralSource z‖ ≤ δ)
    (gap : R * ((δ / h) / b + (B / h) * δ / b ^ 2) < 1) :
    (∑ a ∈ candidate.zeros, candidate.multiplicity a) = ∑ a ∈ source.zeros, source.multiplicity a := by
  have diff : Differentiable ℂ spectralSource := by
    unfold spectralSource
    exact differentiable_xi.comp (by fun_prop)
  apply count_eq_completed_zeta_of_value_collar source candidate width hb small hD _ error gap
  intro z hz
  refine ⟨separation z hz, ?_⟩
  have bound := deriv_error_le_of_value_collar (f := fun _ => 0) (g := spectralSource)
    width (c := c) (R := R) (fun _ _ => analyticAt_const) (fun w _ => diff.analyticAt w)
    (by simpa only [sub_zero] using sourceBound) hz
  simpa using bound

<<<<<<< HEAD
=======
private theorem logDeriv_error_le_separated {f g : ℂ → ℂ} {z : ℂ} {m M δ η : ℝ}
    (small : δ < m) (hf : m ≤ ‖f z‖) (hM : ‖deriv f z‖ ≤ M)
    (valueError : ‖g z - f z‖ ≤ δ) (derivError : ‖deriv g z - deriv f z‖ ≤ η) :
    ‖logDeriv g z - logDeriv f z‖ ≤ η / (m - δ) + M * δ / ((m - δ) * m) := by
  have hδ := (norm_nonneg _).trans valueError
  have hm : 0 < m := hδ.trans_lt small
  have hg : m - δ ≤ ‖g z‖ := by
    have triangle : ‖f z‖ ≤ ‖g z - f z‖ + ‖g z‖ := by
      simpa [norm_sub_rev, sub_add_cancel] using norm_add_le (f z - g z) (g z)
    linarith
  have hmδ : 0 < m - δ := sub_pos.mpr small
  have hf0 := norm_pos_iff.mp (hm.trans_le hf)
  have hg0 := norm_pos_iff.mp (hmδ.trans_le hg)
  rw [logDeriv_apply, logDeriv_apply]
  have split : deriv g z / g z - deriv f z / f z =
      (deriv g z - deriv f z) / g z + deriv f z * (f z - g z) / (g z * f z) := by
    field_simp [hf0, hg0]
    ring
  rw [split]
  refine (norm_add_le _ _).trans (add_le_add ?_ ?_)
  · rw [norm_div]
    exact div_le_div₀ ((norm_nonneg _).trans derivError) derivError hmδ hg
  · rw [norm_div, norm_mul, norm_mul, norm_sub_rev (f z) (g z)]
    have hM₀ := (norm_nonneg _).trans hM
    exact div_le_div₀ (mul_nonneg hM₀ hδ)
      (mul_le_mul hM valueError (norm_nonneg _) hM₀) (mul_pos hmδ hm)
      (mul_le_mul hg hf hm.le (norm_nonneg _))

/-- The full source margin m supplies separate denominators m and m-δ
in the collar estimate. The value error need only be strictly below m. -/
theorem count_eq_completed_zeta_of_separated_value_collar {D : ℂ → ℂ}
    {c : ℂ} {R h m M δ : ℝ}
    (source : AnalyticZeroData spectralSource c R) (candidate : AnalyticZeroData D c R)
    (width : 0 < h) (small : δ < m)
    (hD : AnalyticOnNhd ℂ D (closedBall c (R + h)))
    (separation : ∀ z ∈ sphere c R, m ≤ ‖spectralSource z‖ ∧ ‖deriv spectralSource z‖ ≤ M)
    (error : ∀ z ∈ closedBall c (R + h), ‖D z - spectralSource z‖ ≤ δ)
    (gap : R * ((δ / h) / (m - δ) + M * δ / ((m - δ) * m)) < 1) :
    (∑ a ∈ candidate.zeros, candidate.multiplicity a) = ∑ a ∈ source.zeros, source.multiplicity a := by
  have diff : Differentiable ℂ spectralSource := by
    unfold spectralSource
    exact differentiable_xi.comp (by fun_prop)
  apply count_eq_of_boundary_logDeriv_error source candidate _ gap
  intro z hz
  have inside : z ∈ closedBall c (R + h) :=
    closedBall_subset_closedBall (by linarith) (sphere_subset_closedBall hz)
  exact logDeriv_error_le_separated small (separation z hz).1 (separation z hz).2
    (error z inside) (deriv_error_le_of_value_collar width
      (fun w _ => diff.analyticAt w) hD error hz)

>>>>>>> 5eaf2eea534e3c83a35ca51df88afb3d759f4c1b
/-- On the counting circle alone a uniform value bound cannot bound the
derivative independently of degree. -/
theorem unit_circle_derivative_control (n : ℕ) :
    (∀ z ∈ sphere (0 : ℂ) 1, ‖z ^ n‖ = 1) ∧
      ‖deriv (fun z : ℂ => z ^ n) 1‖ = n := by
  constructor
  · intro z hz
    have hn : ‖z‖ = 1 := by simpa [dist_zero_right] using mem_sphere.mp hz
    rw [norm_pow, hn, one_pow]
  · simp

end GRWTSK.NumberTheory.Zeta.XiDeterminantValueCollar
