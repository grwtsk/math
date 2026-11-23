/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiModularCuspSpectra
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-! # Arithmetic residues and norms of the modular cusp projections

The geometric interpretation of the scalar derivative and the density theorem
are in the companion note. The arithmetic function below uses the actual xi.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiCuspResonanceProjections
open Complex XiToeplitzHilbertPolyaCriterion XiModularCuspSpectra

@[local fun_prop] private theorem xi_diff : Differentiable ℂ sourceXi := by
  unfold sourceXi
  exact (((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀).const_add 1).div_const 2

/-- Rank-one determinant ratio for the geometric cusp pencil. -/
def secular (L v : ℂ) : ℂ :=
  (2*v-1)*exp (L*(v-1/2))*sourceXi (2*v) / weightedConstant L (v-1/2)

theorem constant_at_zero {v : ℂ} (L : ℂ) (hz : sourceXi (2*v) = 0) :
    weightedConstant L (v-1/2) = v*exp (-(L*(v-1/2)))*sourceXi (2-2*v) := by
  unfold weightedConstant
  rw [show 1+2*(v-1/2)=2*v by ring, hz, show 1-2*(v-1/2)=2-2*v by ring]
  ring

/-- Derivative at a zero of the numerator, with the nonvanishing denominator
stated explicitly. Away from the real endpoints this includes multiple zeros. -/
theorem secular_deriv_at_zero {L v : ℂ} (hv : v ≠ 0) (hz : sourceXi (2*v) = 0)
    (hother : sourceXi (2-2*v) ≠ 0) :
    deriv (secular L) v =
      2*(2*v-1)*exp (2*(L*(v-1/2)))*deriv sourceXi (2*v)/(v*sourceXi (2-2*v)) := by
  have dc : Differentiable ℂ (fun u => weightedConstant L (u-1/2)) := by
    unfold weightedConstant
    fun_prop (disch := exact xi_diff)
  have hn : weightedConstant L (v-1/2) ≠ 0 := by
    rw [constant_at_zero L hz]
    exact mul_ne_zero (mul_ne_zero hv (exp_ne_zero _)) hother
  have dcoeff : DifferentiableAt ℂ (fun u : ℂ => (2*u-1)*exp (L*(u-1/2)) /
      weightedConstant L (u-1/2)) v := by
    exact (by fun_prop : DifferentiableAt ℂ (fun u : ℂ => (2*u-1)*exp (L*(u-1/2))) v).div
      (dc v) hn
  have dxi := (xi_diff (2*v)).hasDerivAt.comp v ((hasDerivAt_id v).const_mul 2)
  have h := (dcoeff.hasDerivAt.mul dxi).deriv
  have he (u : ℂ) : secular L u =
      ((2*u-1)*exp (L*(u-1/2))/weightedConstant L (u-1/2))*sourceXi (2*u) := by
    unfold secular
    ring
  rw [funext he]
  change deriv (fun u : ℂ => ((2*u-1)*exp (L*(u-1/2))/weightedConstant L (u-1/2))*
    sourceXi (2*u)) v = _ at h
  rw [h]
  simp only [Function.comp_apply, hz,mul_zero,zero_add,mul_one]
  rw [constant_at_zero L hz, exp_neg, show exp (2*(L*(v-1/2))) =
    exp (L*(v-1/2))*exp (L*(v-1/2)) by rw [← exp_add]; congr 1; ring]
  field_simp

/-- The derivative of 1+Y v m(v) divided by Y determines the bilinear
resonance pairing after the conjugate-resolvent derivative is taken. -/
theorem bilinear_pair (v m m' : ℂ) (h : 2*v-1 ≠ 0) :
    m - (v*(v-1)+v^2)*(-m'/(2*v-1)) = m+v*m' := by
  rw [show v*(v-1)+v^2 = v*(2*v-1) by ring]
  rw [mul_assoc, mul_div_cancel₀ _ h]
  ring

section Projection
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- Normalization of the right vector x and left vector y to a projection. -/
def simpleProjection (x y : E) : E →L[ℂ] E :=
  (inner ℂ y x)⁻¹ • InnerProductSpace.rankOne ℂ x y

theorem projection_fixes (x y : E) (h : inner ℂ y x ≠ 0) :
    simpleProjection x y x = x := by
  simp [simpleProjection, smul_smul,h]

theorem projection_norm (x y : E) :
    ‖simpleProjection x y‖ = ‖x‖*‖y‖/‖inner ℂ y x‖ := by
  rw [simpleProjection, norm_smul, norm_inv, InnerProductSpace.norm_rankOne]
  ring

theorem projection_attains_on_left (x y : E) :
    ‖simpleProjection x y y‖ = ‖simpleProjection x y‖*‖y‖ := by
  rw [projection_norm]
  simp only [simpleProjection, smul_apply, InnerProductSpace.rankOne_apply,
    norm_smul, norm_inv, inner_self_eq_norm_sq_to_K, norm_pow, RCLike.norm_ofReal, abs_norm]
  ring

end Projection

/-- Works in an independently chosen norm. It requires only the two witness
vectors, their scalar relation, and the distortion bound on this one pair. -/
theorem norm_distortion_lower {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (P : E →L[ℂ] E) (x y : E) (a : ℂ) (C : ℝ) (hx : x ≠ 0)
    (hy : ‖y‖ ≤ C*‖x‖) (hp : P y = a • x) : ‖a‖ ≤ ‖P‖*C := by
  have h := P.le_opNorm y
  rw [hp, norm_smul] at h
  apply (le_of_mul_le_mul_right · (norm_pos_iff.mpr hx))
  calc
    _ ≤ ‖P‖*‖y‖ := h
    _ ≤ ‖P‖*(C*‖x‖) := mul_le_mul_of_nonneg_left hy (norm_nonneg _)
    _ = _ := by ring

end GRWTSK.NumberTheory.XiCuspResonanceProjections
