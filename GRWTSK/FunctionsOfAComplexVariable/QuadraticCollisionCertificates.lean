/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and licenses. -/
import GRWTSK.FunctionsOfAComplexVariable.QuadraticClusterReality
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false

/-!
# Double-collision certificates and a square-root loop

RP-OC-05 source candidates. The Hessian theorem is conditional on the displayed
factorization-derived derivative identities; it does not derive Weierstrass
preparation or certify any arithmetic homotopy. Even-power remainder bounds
are sufficient certificates and admit unresolved outcomes. The loop retains
its polynomial path, not merely the induced endpoint permutation.
Elaboration, kernel replay, axiom audit and independent review: NOT_RUN.
-/

noncomputable section

namespace GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates

open QuadraticClusterReality

/-- Algebraic numerator after differentiating a tangent quadratic preparation.
`v` denotes c'(t0), `a` denotes d''(t0), and `u` the nonzero local unit. -/
theorem collision_hessian_identity (u v a : ℝ) :
    (-2 * u * v) ^ 2 - (2 * u * v ^ 2 - u * a) * (2 * u) =
      2 * u ^ 2 * a := by
  ring

/-- Conditional source-jet identity. Actual partial derivatives must be supplied
with proofs of all three identities; arbitrary finite differences do not suffice. -/
theorem half_second_derivative_of_source_identities
    (u v a Fzz Ftz Ftt : ℝ) (hu : u ≠ 0)
    (hzz : Fzz = 2 * u) (htz : Ftz = -2 * u * v)
    (htt : Ftt = 2 * u * v ^ 2 - u * a) :
    (Ftz ^ 2 - Ftt * Fzz) / Fzz ^ 2 = a / 2 := by
  rw [hzz, htz, htt, collision_hessian_identity]
  field_simp [hu]
  <;> ring

/-- The sign is not lost by division by the square of a nonzero unit. -/
theorem collision_hessian_pos_iff (u v a : ℝ) (hu : u ≠ 0) :
    0 < (-2 * u * v) ^ 2 - (2 * u * v ^ 2 - u * a) * (2 * u) ↔
      0 < a := by
  rw [collision_hessian_identity]
  have hscale : 0 < 2 * u ^ 2 := mul_pos (by norm_num) (sq_pos_of_ne_zero hu)
  constructor
  · intro h
    by_contra ha
    have hnonpos : a ≤ 0 := le_of_not_gt ha
    have := mul_nonpos_of_nonneg_of_nonpos hscale.le hnonpos
    linarith
  · exact mul_pos hscale

/-- Exact finite remainder budget; equality is allowed for semidefiniteness. -/
theorem nonneg_even_power_remainder (x a r B : ℝ) (k : ℕ)
    (hrem : |r| ≤ B) (hbudget : B ≤ a) :
    0 ≤ (x ^ k) ^ 2 * (a + r) := by
  have hr := (abs_le.mp hrem).1
  exact mul_nonneg (sq_nonneg _) (by linarith)

/-- A source-derived discriminant with this even-factor certificate is admissible. -/
theorem reality_of_even_factor_certificate (c d x a r B : ℝ) (k : ℕ)
    (hfactor : d = (x ^ k) ^ 2 * (a + r))
    (hrem : |r| ≤ B) (hbudget : B ≤ a) :
    AllRootsReal (quadratic c d) := by
  apply (allRootsReal_quadratic_iff c d).mpr
  rw [hfactor]
  exact nonneg_even_power_remainder x a r B k hrem hbudget

/-- The polynomial lift from +1 to -1 along the upper parabola. -/
def rootLift (t : ℝ) : ℂ :=
  ((1 - 2 * t : ℝ) : ℂ) + Complex.I * ((1 - (1 - 2 * t) ^ 2 : ℝ) : ℂ)

/-- Its square is a parameter loop for z^2 - parameter(t). -/
def loopParameter (t : ℝ) : ℂ := rootLift t ^ 2

theorem continuous_rootLift : Continuous rootLift := by
  unfold rootLift
  fun_prop

theorem continuous_loopParameter : Continuous loopParameter := by
  unfold loopParameter
  exact continuous_rootLift.pow 2

theorem rootLift_ne_zero (t : ℝ) : rootLift t ≠ 0 := by
  intro h
  have hre := congrArg Complex.re h
  have him := congrArg Complex.im h
  simp [rootLift] at hre him
  nlinarith

theorem loopParameter_ne_zero (t : ℝ) : loopParameter t ≠ 0 :=
  pow_ne_zero 2 (rootLift_ne_zero t)

theorem rootLift_zero : rootLift 0 = 1 := by
  norm_num [rootLift]

theorem rootLift_one : rootLift 1 = -1 := by
  norm_num [rootLift]

/-- The endpoint parameter agrees, but the chosen root does not. -/
theorem loop_endpoints : loopParameter 0 = 1 ∧ loopParameter 1 = 1 := by
  constructor <;> norm_num [loopParameter, rootLift]

/-- Both root labels satisfy the same source polynomial along the entire path. -/
theorem lift_roots (t : ℝ) :
    rootLift t ^ 2 - loopParameter t = 0 ∧
      (-rootLift t) ^ 2 - loopParameter t = 0 := by
  simp [loopParameter]

/-- Actual complex derivative of the source polynomial along the loop. -/
theorem deriv_loop_polynomial (t : ℝ) (z : ℂ) :
    deriv (fun w : ℂ => w ^ 2 - loopParameter t) z = 2 * z := by
  simpa using (((hasDerivAt_id z).pow 2).sub_const (loopParameter t)).deriv

/-- Derivative separation for the source z^2 - loopParameter(t). -/
theorem lift_derivative_ne_zero (t : ℝ) :
    deriv (fun w : ℂ => w ^ 2 - loopParameter t) (rootLift t) ≠ 0 := by
  rw [deriv_loop_polynomial]
  exact mul_ne_zero (by norm_num) (rootLift_ne_zero t)

/-- Algebraic endpoint transposition; no winding-number theorem is asserted. -/
theorem endpoint_label_transposition (b : Bool) :
    rootLabel 0 (rootLift 1) b = rootLabel 0 (rootLift 0) (!b) := by
  rw [rootLift_one, rootLift_zero]
  exact rootLabel_neg 0 1 b

end GRWTSK.Analysis.ComplexAnalysis.QuadraticCollisionCertificates
