/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.InnerProductSpace.Symmetric
import Mathlib.Tactic.Linarith

/-! The exact Mathlib RH target from geometric transfer of zeros and
arbitrarily accurate symmetric metrics. Both hypotheses stay explicit. -/

namespace GRWTSK.NumberTheory.XiCuspApproximateSymmetry

open Complex
open scoped InnerProductSpace

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- The imaginary part of any eigenvalue is controlled by the perturbation
of a symmetric operator, in the actual Hilbert norm. -/
theorem eigen_im_le (A D : E →L[ℂ] E) (hA : A.toLinearMap.IsSymmetric)
    (x : E) (hx : x ≠ 0) (z : ℂ) (he : A x+D x=z • x) : |z.im| ≤ ‖D‖ := by
  have h := congrArg (fun w : E => (inner ℂ x w).im) he
  have hs := hA.im_inner_self_apply x
  change (inner ℂ x (A x)).im = 0 at hs
  change (inner ℂ x (A x+D x)).im = (inner ℂ x (z • x)).im at h
  rw [inner_add_right,Complex.add_im,hs,zero_add,inner_smul_right,inner_self_eq_norm_sq_to_K] at h
  have hi : (inner ℂ x (D x)).im = z.im*‖x‖^2 := by
    simpa [Complex.mul_im,pow_two] using h
  have hb := (Complex.abs_im_le_norm (inner ℂ x (D x))).trans (norm_inner_le_norm x (D x))
  rw [hi,abs_mul,abs_of_nonneg (sq_nonneg ‖x‖)] at hb
  have hh := hb.trans (mul_le_mul_of_nonneg_left (D.le_opNorm x) (norm_nonneg x))
  apply (mul_le_mul_iff_left₀ (sq_pos_of_pos (norm_pos_iff.mpr hx))).mp
  linarith

/-- Conditional bridge. In the modular application the first input comes
from the exact nonnormal determinant; the second is the open analytic
uniform approximation by geometric metrics. -/
theorem riemannHypothesis_of_approximate_metrics (B : E →L[ℂ] E)
    (transfer : ∀ s : ℂ, riemannZeta s = 0 →
      (¬ ∃ n : ℕ, s = -2*(n+1)) → s ≠ 1 → s ≠ 1/2 →
      ∃ x : E, x ≠ 0 ∧ B x=(I/(s-1/2)) • x)
    (approx : ∀ ε : ℝ, 0 < ε → ∃ (S : E ≃L[ℂ] E) (A D : E →L[ℂ] E),
      A.toLinearMap.IsSymmetric ∧ ‖D‖ < ε ∧ ∀ x, S (B x)=A (S x)+D (S x)) :
    RiemannHypothesis := by
  intro s hz ht h1
  by_cases hc : s = 1/2
  · simp [hc]
  obtain ⟨x,hx,he⟩ := transfer s hz ht h1 hc
  let z := I/(s-1/2)
  have hi : z.im=0 := by
    by_contra hn
    obtain ⟨S,A,D,hA,hD,hs⟩ := approx |z.im| (abs_pos.mpr hn)
    have ee : A (S x)+D (S x)=z • S x := by rw [← hs,he,map_smul]
    exact (not_lt_of_ge (eigen_im_le A D hA (S x) (by simpa using hx) z ee)) hD
  have ed : z*(s-1/2)=I := div_mul_cancel₀ _ (sub_ne_zero.mpr hc)
  have hr := congrArg Complex.re ed
  have hm := congrArg Complex.im ed
  simp [Complex.mul_re,Complex.mul_im,hi] at hr hm
  rcases hr with a | b
  · simp [a] at hm
  · linarith

end GRWTSK.NumberTheory.XiCuspApproximateSymmetry
