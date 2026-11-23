import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! Positive Cayley energy and arithmetic weighted transverse trace. -/

namespace GRWTSK.XiHardyDissipativePart

/-- The congruence giving the imaginary part of the compressed Cayley
transform. A and B are the formal shift and its adjoint. -/
theorem cayley_energy {R : Type*} [Ring R] (A B : R) :
    (1-B)*(1+A)+(1+B)*(1-A) = 2*(1-B*A) := by noncomm_ring

/-- Squaring the real characteristic factor and adding the imaginary square
gives the determinant contribution of the two reflected blocks. -/
theorem reflected_product (a b : ℂ) :
    (a+Complex.I*b)*(a-Complex.I*b) = a^2+b^2 := by
  linear_combination -b^2 * Complex.I_sq

/-- No triangle-inequality loss in the endpoint trace of an upper-half-plane pole. -/
theorem inverse_im (σ γ : ℝ) :
    (Complex.I / ((σ : ℂ) + (γ : ℂ)*Complex.I)).im = σ / (σ^2+γ^2) := by
  rw [Complex.div_im, Complex.normSq_apply]
  simp [pow_two]

theorem layer_square_bound (x : List ℝ) (hx : ∀ t ∈ x, 0 ≤ t) :
    (x.map (fun t => t^2)).sum ≤ x.sum^2 := by
  induction x with
  | nil => simp
  | cons t xs ih =>
    have h0 := hx t (by simp)
    have ht : ∀ u ∈ xs, 0 ≤ u := fun u hu => hx u (List.mem_cons_of_mem t hu)
    have hs : 0 ≤ xs.sum := List.sum_nonneg ht
    have hi := ih ht
    simp only [List.map_cons, List.sum_cons]
    nlinarith [mul_nonneg h0 hs]

end GRWTSK.XiHardyDissipativePart
