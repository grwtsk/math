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
