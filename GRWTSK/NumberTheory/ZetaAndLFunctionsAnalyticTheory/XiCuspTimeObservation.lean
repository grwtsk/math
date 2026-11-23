/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-! # Finite-window energy observation for a causal isometry

The geometric output/inner-multiplier decomposition is used as the input
to a Hilbert-space calculation of the window Gramian and its minimum-norm
right inverse. The associated analytic manuscript supplies these inputs.
-/
noncomputable section

namespace GRWTSK.NumberTheory.XiCuspTimeObservation

open ContinuousLinearMap

variable {E F G : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [CompleteSpace E]
  [NormedAddCommGroup F] [InnerProductSpace ℂ F] [CompleteSpace F]
  [NormedAddCommGroup G] [InnerProductSpace ℂ G] [CompleteSpace G]

/-- The causal compression of the orthogonal complement accounts exactly
for the defect of the restricted observation Gramian. -/
theorem window_gram (O : E →L[ℂ] G) (Q : G →L[ℂ] F) (C : G →L[ℂ] G) (D : F →L[ℂ] F)
    (hQ : Q ∘L adjoint Q = 1) (hO : O ∘L adjoint O + C ∘L adjoint C = 1)
    (hC : Q ∘L C = D ∘L Q) :
    (Q ∘L O) ∘L adjoint (Q ∘L O) = 1 - D ∘L adjoint D := by
  apply eq_sub_iff_add_eq.mpr
  have hD : (Q ∘L C) ∘L adjoint (Q ∘L C) = D ∘L adjoint D := by
    rw [hC, adjoint_comp]
    ext x
    have h := DFunLike.congr_fun hQ ((adjoint D) x)
    exact congrArg D h
  rw [← hD, adjoint_comp, adjoint_comp]
  have h := congrArg (fun X : G →L[ℂ] G => Q ∘L (X ∘L adjoint Q)) hO
  have h1 : Q ∘L ((1 : G →L[ℂ] G) ∘L adjoint Q) = 1 := hQ
  simpa only [comp_add, add_comp, comp_assoc] using h.trans h1

/-- Strict scattering compression gives an invertible window Gramian. -/
theorem window_gram_isUnit (D : F →L[ℂ] F) (hD : ‖D‖ < 1) :
    IsUnit (1 - D ∘L adjoint D) := by
  apply IsUnit.one_sub_of_norm_lt_one
  calc
    ‖D ∘L adjoint D‖ ≤ ‖D‖ * ‖adjoint D‖ := opNorm_comp_le ..
    _ < 1 := by
      rw [adjoint.norm_map]
      nlinarith [mul_pos (sub_pos.mpr hD) (show 0 < 1 + ‖D‖ by positivity)]

/-- Canonical right inverse of a window observation. The ring inverse is
used only when its Gramian is proved to be a unit in the next statements. -/
def minimalLift (B : E →L[ℂ] F) : F →L[ℂ] E :=
  adjoint B ∘L Ring.inverse (B ∘L adjoint B)

theorem right_inverse (B : E →L[ℂ] F) (h : IsUnit (B ∘L adjoint B)) (g : F) :
    B (minimalLift B g) = g := by
  have h' := DFunLike.congr_fun (Ring.mul_inverse_cancel _ h) g
  exact h'

/-- Exact energy excess for any other input giving the same window. -/
theorem lift_pythagoras (B : E →L[ℂ] F) (h : IsUnit (B ∘L adjoint B))
    {x : E} {g : F} (hx : B x = g) :
    ‖x‖ ^ 2 = ‖minimalLift B g‖ ^ 2 + ‖x - minimalLift B g‖ ^ 2 := by
  have hz : B (x - minimalLift B g) = 0 := by rw [map_sub, right_inverse B h, hx, sub_self]
  have orth : inner ℂ (minimalLift B g) (x - minimalLift B g) = 0 := by
    simp only [minimalLift, comp_apply, adjoint_inner_left]
    exact (congrArg (inner ℂ (Ring.inverse (B ∘L adjoint B) g)) hz).trans (inner_zero_right ..)
  simpa only [add_sub_cancel, pow_two] using
    norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero (minimalLift B g) (x-minimalLift B g) orth

omit [CompleteSpace E] [CompleteSpace F] in
/-- A pulse with little energy outside the output window gives a lower
bound on the cost of exact interpolation. -/
theorem pulse_concentration (D : E →L[ℂ] F) (x : E) {leak bound : ℝ}
    (hEnergy : ‖x‖^2 = ‖D x‖^2 + leak^2) (hBound : |leak| ≤ bound) :
    (1-‖D‖^2)*‖x‖^2 ≤ bound^2 := by
  have hnorm := D.le_opNorm x
  have hsq := mul_nonneg (sub_nonneg.mpr hnorm)
    (show 0 ≤ ‖D‖*‖x‖+‖D x‖ by positivity)
  have hb := mul_nonneg (sub_nonneg.mpr hBound)
    (show 0 ≤ bound+|leak| by linarith [abs_nonneg leak])
  nlinarith [sq_abs leak]

/-- The two-variable Cayley kernel carries the normalization for the
orthogonal projection onto the arithmetic output space. -/
theorem polarized_cayley (a b : ℂ) (ha : 1-Complex.I*a ≠ 0)
    (hb : 1+Complex.I*b ≠ 0) :
    Complex.I*(1-(1+Complex.I*a)/(1-Complex.I*a)*((1-Complex.I*b)/(1+Complex.I*b))) =
      2*(a-b)/((1-Complex.I*a)*(1+Complex.I*b)) := by
  field_simp
  ring_nf
  simp [Complex.I_sq, sub_eq_add_neg]

end GRWTSK.NumberTheory.XiCuspTimeObservation
