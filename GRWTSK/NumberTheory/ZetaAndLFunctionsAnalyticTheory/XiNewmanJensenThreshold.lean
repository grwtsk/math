/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Topology.MetricSpace.Pseudo.Defs
import Mathlib.Tactic

/-! Finite Jensen damping, mesh selection, and perturbation of a double heat root. -/
namespace GRWTSK.XiNewmanJensenThreshold

/-- Uniform first-order damping with a quadratic remainder for a product of survival factors. -/
theorem product_bounds (l : List ℝ) (h : ∀ x ∈ l, 0 ≤ x ∧ x ≤ 1) :
    0 ≤ l.sum ∧ 0 ≤ (l.map (1-·)).prod ∧
      1-l.sum ≤ (l.map (1-·)).prod ∧
      (l.map (1-·)).prod ≤ 1-l.sum+l.sum^2/2 := by
  induction l with
  | nil => norm_num
  | cons a l ih =>
    obtain ⟨ha,ha'⟩ := h a (by simp)
    obtain ⟨hs,hp,hl,hu⟩ := ih (fun x hx => h x (by simp [hx]))
    simp only [List.sum_cons,List.map_cons,List.prod_cons]
    have hac : 0 ≤ 1-a := by linarith
    refine ⟨add_nonneg ha hs,mul_nonneg hac hp,?_,?_⟩
    · nlinarith [mul_le_mul_of_nonneg_left hl hac, mul_nonneg ha hs]
    · nlinarith [mul_le_mul_of_nonneg_left hu hac, mul_nonneg ha (sq_nonneg l.sum),
        sq_nonneg a]

/-- Endpoint bracketing from the earliest passing mesh cell and its collision variance. -/
theorem finite_threshold_bound {time endpoint seed variance mesh : ℝ}
    (hseed : seed ≤ endpoint+2*mesh) (hsafe : (time-seed)/2 ≤ variance) :
    time-2*variance ≤ endpoint+2*mesh := by linarith

open Filter Topology

/-- Local exclusion above the true collision time and the mesh lower bound imply global convergence. -/
theorem threshold_convergence {c err : ℕ → ℝ} {edge : ℝ}
    (vanishes : Tendsto err atTop (𝓝 0))
    (lower : ∀ n, edge-err n ≤ c n)
    (upper : ∀ v > edge, ∀ᶠ n in atTop, c n < v) :
    Tendsto c atTop (𝓝 edge) := by
  apply Metric.tendsto_nhds.mpr
  intro e he
  filter_upwards [Metric.tendsto_nhds.mp vanishes e he, upper (edge+e) (by linarith)]
    with n hn hu
  rw [Real.dist_eq,sub_zero,abs_lt] at hn
  rw [Real.dist_eq,abs_lt]
  exact ⟨by linarith [lower n,hn.2], by linarith⟩

/-- Coefficients at order 1/N in the value and slope equations determine both displacements. -/
theorem first_displacement {x a b v u : ℝ} (ha : a ≠ 0)
    (hv : -a*v/4-x^2*a/2=0)
    (hu : a*u-v*b/4-x*a-x^2*b/2=0) :
    v = -2*x^2 ∧ u=x := by
  have hz : a*(v+2*x^2)=0 := by linear_combination -4*hv
  have h : v = -2*x^2 := by linarith [(mul_eq_zero.mp hz).resolve_left ha]
  subst v
  have hu' : a*(u-x)=0 := by linear_combination hu
  exact ⟨rfl,sub_eq_zero.mp ((mul_eq_zero.mp hu').resolve_left ha)⟩

/-- Second-order equations after substitution of the first displacements. -/
theorem second_displacement {x a b c w y : ℝ} (ha : a ≠ 0)
    (hw : -a*w/4-x^2*a/2+x^3*b/3=0)
    (hy : a*y-b*w/4-x*a-x^2*b/2+x^3*c/3=0) :
    w = -2*x^2+4*x^3*b/(3*a) ∧ y=x+x^3/3*((b/a)^2-c/a) := by
  constructor
  · field_simp
    linear_combination -12*hw
  · field_simp
    linear_combination 3*a*hy - 3*b*hw

end GRWTSK.XiNewmanJensenThreshold
