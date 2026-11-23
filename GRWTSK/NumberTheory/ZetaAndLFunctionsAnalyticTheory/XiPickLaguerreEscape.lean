/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! # Algebra of the Laguerre sections of the arithmetic Pick kernel

The companion manuscript identifies the arithmetic Taylor matrix and proves its
fixed-index asymptotics. Here the strip contraction, divisor matrix identities
and recovery of a pole location from two matched growth rates are formalized.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiPickLaguerreEscape
open Filter
open scoped Topology InnerProductSpace

/-- The strict projection factor for real exponents on both sides of the anchor. -/
theorem strip_contraction {x v : ℝ} (hx : 1 / 2 < x) (hv : 1 / 2 < v)
    (hcross : v / 2 < x ^ 2) :
    |x-v| * (x+1/2) < (x+v) * (x-1/2) := by
  rcases le_total v x with h | h
  · rw [abs_of_nonneg (sub_nonneg.mpr h)]
    nlinarith [mul_pos (show 0 < x by linarith) (show 0 < v-1/2 by linarith)]
  · rw [abs_of_nonpos (sub_nonpos.mpr h)]
    nlinarith

/-- The geometric step between consecutive Laguerre transforms. -/
def step (x z : ℂ) : ℂ := (z-x)/(z+x)

theorem reflected_step (x z : ℂ) (hp : z+x ≠ 0) (hm : z-x ≠ 0) :
    step x z * step x (-z) = 1 := by
  have h : -z + x ≠ 0 := by
    intro h
    apply hm
    linear_combination -h
  unfold step
  field_simp
  ring

/-- A reflected divisor pair contributes along one Toeplitz diagonal. -/
theorem lower_diagonal (x z : ℂ) (hp : z+x ≠ 0) (hm : z-x ≠ 0)
    {j k : ℕ} (h : k ≤ j) :
    step x z ^ j * step x (-z) ^ k = step x z ^ (j-k) := by
  conv_lhs => rw [← Nat.sub_add_cancel h, pow_add, mul_assoc, ← mul_pow, reflected_step x z hp hm,
    one_pow, mul_one]

/-- The Cayley substitution transports the Gram metric to the disk kernel. -/
theorem cauchy_disk_denominator (x u v : ℂ) (hu : 1-u ≠ 0) (hv : 1-v ≠ 0) :
    (1-u)*(1-v)*(x*(1+u)/(1-u)+x*(1+v)/(1-v)) = 2*x*(1-u*v) := by
  field_simp
  ring

/-- The squared distance ratio yields a rational function of the anchor squared. -/
theorem square_radius (x y t : ℝ) {r : ℝ}
    (hr : r * ((x-y)^2+t^2)=(x+y)^2+t^2) :
    (r-1)*(x^2+y^2+t^2) = (r+1)*(2*x*y) := by
  linarith only [hr]

/-- Matching one rate branch at two different positive anchors recovers its
height and squared absolute value. -/
theorem two_anchor_recovery {a b y z s t : ℝ} (hab : a ≠ b) (hy : y ≠ 0)
    (ha : y*(a+t)=z*(a+s)) (hb : y*(b+t)=z*(b+s)) :
    y=z ∧ s=t := by
  have h : (y-z)*(a-b) = 0 := by linear_combination ha-hb
  have hyz := sub_eq_zero.mp ((mul_eq_zero.mp h).resolve_right (sub_ne_zero.mpr hab))
  subst z
  exact ⟨rfl, sub_eq_zero.mp ((mul_eq_zero.mp (show y*(s-t)=0 by linear_combination -ha)).resolve_left hy)⟩

/-- A residue test on the annihilator gives a pure direction in the graph closure. -/
theorem residue_axis_mem_closure {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [CompleteSpace E] (G : Submodule ℂ E) (v : E)
    (h : ∀ y ∈ Gᗮ, ∃ u : ℕ → ℂ, Tendsto u atTop (𝓝 (inner ℂ y v)) ∧
      Tendsto (fun n => ‖u n‖) atTop (𝓝 0)) : v ∈ G.topologicalClosure := by
  rw [← G.orthogonal_orthogonal_eq_closure]
  apply (Gᗮ.mem_orthogonal v).2
  intro y hy
  obtain ⟨u, hres, hzero⟩ := h y hy
  exact norm_eq_zero.mp (tendsto_nhds_unique hres.norm hzero)

end GRWTSK.NumberTheory.XiPickLaguerreEscape
