/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticCyclicZetaAdjugateConstruction

set_option autoImplicit false
noncomputable section

/-!
# Explicit source cofactor conditioning at three cyclic sites

The first cofactor column is written explicitly and its complete residual
is computed. Its last two coordinates differ by t*(q(1)-q(2)), independently
of lambda(s). Thus nonzero hopping and actual site contrast give a uniform
in-s lower norm bound. An actual Mangoldt labels 2/3 specialization has the
required contrast. No zeta determinant approximation is supplied, and a
three-site estimate is not a dimension-uniform infinite spectral realization.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicThreeSiteCofactor
open ArithmeticCyclicZetaResidualCriterion ArithmeticCyclicZetaAdjugateConstruction
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

def shiftedDiagonal (q : ZMod 3 → ℝ) (s : ℂ) (i : ZMod 3) : ℂ :=
  (q i : ℂ) - zetaSpectralParameter s

def boundaryPolynomial (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) : ℂ :=
  shiftedDiagonal q s 0 * shiftedDiagonal q s 1 * shiftedDiagonal q s 2 -
    (t : ℂ) ^ 2 * (shiftedDiagonal q s 0 + shiftedDiagonal q s 1 + shiftedDiagonal q s 2) +
    2 * (t : ℂ) ^ 3

def cofactorColumn (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) : EuclideanSpace ℂ (ZMod 3) :=
  WithLp.toLp 2 (fun i =>
    if i = 0 then shiftedDiagonal q s 1 * shiftedDiagonal q s 2 - (t : ℂ) ^ 2
    else if i = 1 then (t : ℂ) ^ 2 - (t : ℂ) * shiftedDiagonal q s 2
    else (t : ℂ) ^ 2 - (t : ℂ) * shiftedDiagonal q s 1)

theorem determinant_eq_boundaryPolynomial (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) :
    (shiftedMatrix 3 t q s).det = boundaryPolynomial t q s := by
  rw [← Matrix.det_submatrix_equiv_self (ZMod.finEquiv 3).toEquiv (shiftedMatrix 3 t q s),
    Matrix.det_fin_three]
  norm_num [Matrix.submatrix, ZMod.finEquiv, shiftedMatrix, hamiltonian, cyclicShift,
    Matrix.conjTranspose_apply, boundaryPolynomial, shiftedDiagonal] <;> ring

theorem cofactor_residual (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) :
    hamiltonianOperator 3 t q (cofactorColumn t q s) -
        zetaSpectralParameter s • cofactorColumn t q s =
      boundaryPolynomial t q s • (PiLp.single 2 (0 : ZMod 3) (1 : ℂ)) := by
  apply WithLp.ofLp_injective 2
  simp only [WithLp.ofLp_sub, WithLp.ofLp_smul, hamiltonianOperator_mulVec]
  funext i
  rw [hamiltonian_mulVec]
  fin_cases i <;>
    norm_num [cofactorColumn, boundaryPolynomial, shiftedDiagonal, PiLp.single,
      Pi.single_apply] <;> ring

theorem cofactor_coordinate_contrast (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) :
    cofactorColumn t q s 1 - cofactorColumn t q s 2 =
      (t : ℂ) * ((q 1 - q 2 : ℝ) : ℂ) := by
  norm_num [cofactorColumn, shiftedDiagonal]
  push_cast
  ring

theorem cofactor_norm_lower (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) :
    |t| * |q 1 - q 2| / 2 ≤ ‖cofactorColumn t q s‖ := by
  have he : ‖cofactorColumn t q s 1 - cofactorColumn t q s 2‖ = |t| * |q 1 - q 2| := by
    rw [cofactor_coordinate_contrast, norm_mul]
    simp only [Complex.norm_real, Real.norm_eq_abs]
  have h₁ := PiLp.norm_apply_le (cofactorColumn t q s) (1 : ZMod 3)
  have h₂ := PiLp.norm_apply_le (cofactorColumn t q s) (2 : ZMod 3)
  have h := norm_sub_le (cofactorColumn t q s 1) (cofactorColumn t q s 2)
  rw [he] at h
  linarith

theorem cofactorColumn_ne_zero (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ)
    (ht : t ≠ 0) (hq : q 1 ≠ q 2) : cofactorColumn t q s ≠ 0 := by
  have hp : 0 < |t| * |q 1 - q 2| / 2 :=
    div_pos (mul_pos (abs_pos.mpr ht) (abs_pos.mpr (sub_ne_zero.mpr hq))) (by norm_num)
  exact norm_pos_iff.mp (hp.trans_le (cofactor_norm_lower t q s))

theorem cofactor_residual_norm (t : ℝ) (q : ZMod 3 → ℝ) (s : ℂ) :
    ‖hamiltonianOperator 3 t q (cofactorColumn t q s) -
        zetaSpectralParameter s • cofactorColumn t q s‖ =
      ‖(shiftedMatrix 3 t q s).det‖ := by
  rw [cofactor_residual, norm_smul, PiLp.norm_single, norm_one, mul_one,
    determinant_eq_boundaryPolynomial]

theorem relative_residual_of_determinant_estimate (t : ℝ) (q : ZMod 3 → ℝ)
    (s : ℂ) (ε : ℝ) (ht : t ≠ 0) (hq : q 1 ≠ q 2) (hε : 0 ≤ ε)
    (hdet : ‖(shiftedMatrix 3 t q s).det‖ ≤ ε * (|t| * |q 1 - q 2| / 2)) :
    cofactorColumn t q s ≠ 0 ∧
      ‖hamiltonianOperator 3 t q (cofactorColumn t q s) -
          zetaSpectralParameter s • cofactorColumn t q s‖ ≤ ε * ‖cofactorColumn t q s‖ := by
  refine ⟨cofactorColumn_ne_zero t q s ht hq, ?_⟩
  rw [cofactor_residual_norm]
  exact hdet.trans (mul_le_mul_of_nonneg_left (cofactor_norm_lower t q s) hε)

/-- Actual source contrast; no zeta-zero or determinant identity is assumed here. -/
theorem mangoldt_labels_have_contrast (level : ℕ) (χ : DirichletCharacter ℂ level) :
    arithmeticPotential 3 level χ (fun i => if i = 2 then 3 else 2) 1 0 0 1 ≠
      arithmeticPotential 3 level χ (fun i => if i = 2 then 3 else 2) 1 0 0 2 := by
  have hl : Real.log (2 : ℝ) < Real.log 3 := Real.log_lt_log (by norm_num) (by norm_num)
  simpa [arithmeticPotential, ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two,
    ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)] using ne_of_lt hl

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicThreeSiteCofactor
