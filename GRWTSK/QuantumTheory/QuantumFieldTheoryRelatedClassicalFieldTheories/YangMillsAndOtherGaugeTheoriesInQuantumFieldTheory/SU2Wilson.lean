/- Copyright (c) 2026 grwtsk contributors. MIT.
The imported unitary-group construction retains Shing Tak Lam's authorship;
Mathlib and other imports retain their original authorship and Apache-2.0 license. -/
import Mathlib.LinearAlgebra.UnitaryGroup
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Topology.Instances.Matrix
import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Complex.BigOperators
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# The actual SU(2) Wilson plaquette penalty

The group is the maintained special unitary matrix group on `Fin 2` over
the complex numbers. Unitarity itself bounds every matrix entry by one;
the two diagonal entries then bound the real trace between minus two and
two. Thus the Wilson penalty `1-Re(trace(g))/2` lies in `[0,2]`.

The conjugation identity uses actual matrix multiplication and the inverse
in the special unitary group. Continuity is proved in the inherited matrix
subspace topology. These finite-dimensional facts supply the action bounds
and gauge-action invariance of the finite lattice regulator; they contain
no statement about a continuum field theory or a physical mass gap.

Paper context: Arthur Jaffe and Edward Witten, Quantum Yang--Mills Theory,
section 6.5, https://www.claymath.org/wp-content/uploads/2022/06/yangmills.pdf.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.SU2Wilson

/-- The actual two-by-two complex matrix carrier. -/
abbrev Mat2 := Matrix (Fin 2) (Fin 2) ℂ

/-- The actual determinant-one unitary matrix group. -/
abbrev SU2 := Matrix.specialUnitaryGroup (Fin 2) ℂ

/-- Retain the matrix underlying a group element. -/
def matrix (g : SU2) : Mat2 := g.val

@[simp] theorem matrix_mul (g h : SU2) : matrix (g * h) = matrix g * matrix h := rfl

@[simp] theorem matrix_one : matrix (1 : SU2) = (1 : Mat2) := rfl

@[simp] theorem matrix_inv (g : SU2) : matrix g⁻¹ = star (matrix g) := rfl

/-- The unitarity equation gives unit squared norm for each actual column. -/
theorem sum_column_normSq (g : SU2) (j : Fin 2) :
    (∑ i : Fin 2, Complex.normSq (matrix g i j)) = 1 := by
  have h := congrArg (fun A : Mat2 => (A j j).re) g.prop.1.1
  simpa only [matrix, Matrix.mul_apply, Matrix.star_apply,
    Matrix.one_apply_eq, Complex.one_re, Complex.re_sum,
    Complex.star_def, Complex.mul_re, Complex.conj_re, Complex.conj_im,
    neg_mul, sub_neg_eq_add, Complex.normSq_apply] using h

/-- Every entry is bounded by one, using the actual matrix unitarity
property. This also supplies boundedness for the compact-group construction. -/
theorem entry_norm_le_one (g : SU2) (i j : Fin 2) :
    ‖matrix g i j‖ ≤ 1 := by
  have hs : Complex.normSq (matrix g i j) ≤
      ∑ k : Fin 2, Complex.normSq (matrix g k j) :=
    Finset.single_le_sum (fun k _ => Complex.normSq_nonneg _) (Finset.mem_univ i)
  rw [sum_column_normSq] at hs
  rw [Complex.normSq_eq_norm_sq] at hs
  nlinarith [sq_nonneg (‖matrix g i j‖ - 1)]

/-- The actual real trace has the sharp two-dimensional range. -/
theorem real_trace_bounds (g : SU2) :
    -2 ≤ (Matrix.trace (matrix g)).re ∧
      (Matrix.trace (matrix g)).re ≤ 2 := by
  have h0 := abs_le.mp
    ((Complex.abs_re_le_norm (matrix g 0 0)).trans (entry_norm_le_one g 0 0))
  have h1 := abs_le.mp
    ((Complex.abs_re_le_norm (matrix g 1 1)).trans (entry_norm_le_one g 1 1))
  simp only [Matrix.trace, Fin.sum_univ_two, Complex.add_re]
  constructor <;> linarith [h0.1, h0.2, h1.1, h1.2]

/-- The Wilson penalty at one actual SU(2) plaquette holonomy. -/
def penalty (g : SU2) : ℝ := 1 - (1 / 2 : ℝ) * (Matrix.trace (matrix g)).re

/-- Its exact uniform range supplies the finite partition-function estimate. -/
theorem penalty_bounds (g : SU2) : 0 ≤ penalty g ∧ penalty g ≤ 2 := by
  have h := real_trace_bounds g
  unfold penalty
  constructor <;> linarith [h.1, h.2]

@[simp] theorem penalty_one : penalty (1 : SU2) = 0 := by
  norm_num [penalty, matrix, Matrix.trace, Fin.sum_univ_two]

/-- Trace is unchanged by actual special-unitary conjugation. -/
theorem trace_conjugation (h g : SU2) :
    Matrix.trace (matrix (h * g * h⁻¹)) = Matrix.trace (matrix g) := by
  change Matrix.trace (matrix h * matrix g * matrix h⁻¹) = _
  rw [Matrix.trace_mul_cycle]
  have hi : matrix h⁻¹ * matrix h = (1 : Mat2) := by
    change matrix (h⁻¹ * h) = matrix (1 : SU2)
    rw [inv_mul_cancel]
  rw [hi, Matrix.one_mul]

/-- Conjugation covariance of a plaquette therefore leaves its penalty fixed. -/
theorem penalty_conjugation (h g : SU2) :
    penalty (h * g * h⁻¹) = penalty g := by
  unfold penalty
  rw [trace_conjugation]

/-- The matrix inclusion is continuous in the inherited subtype topology. -/
theorem continuous_matrix : Continuous (matrix : SU2 → Mat2) :=
  continuous_subtype_val

/-- The actual matrix trace is continuous, with both diagonal entries retained. -/
theorem continuous_trace : Continuous (fun g : SU2 => Matrix.trace (matrix g)) := by
  have h0 : Continuous (fun g : SU2 => matrix g 0 0) :=
    (continuous_apply_apply 0 0).comp continuous_matrix
  have h1 : Continuous (fun g : SU2 => matrix g 1 1) :=
    (continuous_apply_apply 1 1).comp continuous_matrix
  simpa only [Matrix.trace, Fin.sum_univ_two] using h0.add h1

/-- The finite Wilson Boltzmann density will therefore be measurable. -/
theorem continuous_penalty : Continuous penalty := by
  unfold penalty
  exact continuous_const.sub
    (continuous_const.mul (Complex.continuous_re.comp continuous_trace))

end GRWTSK.Geometry.GaugeTheory.SU2Wilson
