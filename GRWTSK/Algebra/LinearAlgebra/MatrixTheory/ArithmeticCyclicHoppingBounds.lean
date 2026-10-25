/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
import Mathlib.LinearAlgebra.Matrix.Permutation
import Mathlib.Analysis.Normed.Algebra.Spectrum

set_option autoImplicit false
noncomputable section

/-! # Hopping bounds for the actual finite Euclidean Hamiltonian

The shift is the actual cyclic permutation. All operator/vector norms are on
complex Euclidean space; only real potential functions use their finite sup norm.
The global spectral disk below is COARSER than the requested union of radius
2|t| disks around individual diagonal values. That sharper enclosure is not
claimed by the norm estimate or the global resolvent statement.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No infinite/rescaled/continuum or physical identification is supplied. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHoppingBounds

open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

variable (N : ℕ) [hN : NeZero N]
include hN

def shiftOperator : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (cyclicShift N)

def hoppingOperator (t : ℝ) :
    EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  (t : ℂ) • (shiftOperator N + star (shiftOperator N))

theorem cyclicShift_eq_perm :
    cyclicShift N = (Equiv.addRight (1 : ZMod N)).permMatrix ℂ := by
  apply Matrix.toLin'.injective
  apply LinearMap.ext
  intro x
  funext i
  simp only [Matrix.toLin'_apply, Matrix.permMatrix_mulVec, Function.comp_apply]
  exact cyclicShift_mulVec N x i

open scoped Matrix.Norms.L2Operator in
theorem shiftOperator_norm : ‖shiftOperator N‖ = 1 := by
  rw [shiftOperator, Matrix.l2_opNorm_toEuclideanCLM, cyclicShift_eq_perm]
  exact Matrix.permMatrix_l2_opNorm_eq (Equiv.addRight (1 : ZMod N))

theorem operator_decomposition (t : ℝ) (q : ZMod N → ℝ) :
    hamiltonianOperator N t q = hoppingOperator N t + diagonalOperator N q := by
  unfold hamiltonianOperator hamiltonian hoppingOperator shiftOperator diagonalOperator
  simp only [map_add, map_smul, map_star]

theorem hoppingOperator_sub (t s : ℝ) :
    hoppingOperator N t - hoppingOperator N s = hoppingOperator N (t - s) := by
  simp only [hoppingOperator, Complex.ofReal_sub, sub_smul]

theorem hoppingOperator_norm_le (t : ℝ) : ‖hoppingOperator N t‖ ≤ 2 * |t| := by
  calc
    _ = |t| * ‖shiftOperator N + star (shiftOperator N)‖ := by
      rw [hoppingOperator, norm_smul, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ |t| * (‖shiftOperator N‖ + ‖star (shiftOperator N)‖) :=
      mul_le_mul_of_nonneg_left (norm_add_le _ _) (abs_nonneg t)
    _ = _ := by rw [norm_star, shiftOperator_norm]; ring

theorem operator_hopping_change_le (t s : ℝ) (q : ZMod N → ℝ) :
    ‖hamiltonianOperator N t q - hamiltonianOperator N s q‖ ≤ 2 * |t - s| := by
  rw [operator_decomposition, operator_decomposition, add_sub_add_right_eq_sub,
    hoppingOperator_sub]
  exact hoppingOperator_norm_le N (t - s)

theorem operator_norm_bound (t : ℝ) (q : ZMod N → ℝ) :
    ‖hamiltonianOperator N t q‖ ≤ 2 * |t| + ‖q‖ := by
  calc
    _ = ‖hoppingOperator N t + diagonalOperator N q‖ :=
      congrArg norm (operator_decomposition N t q)
    _ ≤ ‖hoppingOperator N t‖ + ‖diagonalOperator N q‖ := norm_add_le _ _
    _ ≤ 2 * |t| + ‖q‖ := by
      rw [diagonalOperator_norm]
      exact add_le_add_right (hoppingOperator_norm_le N t) _

theorem operator_joint_change_le (t s : ℝ) (q r : ZMod N → ℝ) :
    ‖hamiltonianOperator N t q - hamiltonianOperator N s r‖ ≤
      ‖q - r‖ + 2 * |t - s| := by
  calc
    _ = ‖(hamiltonianOperator N t q - hamiltonianOperator N t r) +
        (hamiltonianOperator N t r - hamiltonianOperator N s r)‖ := by
      rw [sub_add_sub_cancel]
    _ ≤ ‖hamiltonianOperator N t q - hamiltonianOperator N t r‖ +
        ‖hamiltonianOperator N t r - hamiltonianOperator N s r‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (le_of_eq (operator_norm_sub_eq N t q r))
      (operator_hopping_change_le N t s r)

/-- A global norm disk, not the sharper union of disks around the diagonal. -/
theorem spectrum_norm_bound (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (hamiltonianOperator N t q)) :
    ‖z‖ ≤ 2 * |t| + ‖q‖ :=
  (spectrum.norm_le_norm_of_mem hz).trans (operator_norm_bound N t q)

theorem outside_global_ball_resolvent (t : ℝ) (q : ZMod N → ℝ) (z : ℂ)
    (hz : 2 * |t| + ‖q‖ < ‖z‖) :
    z ∈ resolventSet ℂ (hamiltonianOperator N t q) :=
  spectrum.mem_resolventSet_of_norm_lt ((operator_norm_bound N t q).trans_lt hz)

theorem arithmetic_operator_norm_bound (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) :
    ‖Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w)‖ ≤
        2 * |t| + ‖arithmeticPotential N level χ m u v w‖ :=
  operator_norm_bound N t (arithmeticPotential N level χ m u v w)

theorem arithmetic_spectrum_norm_bound (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w : ℝ) (z : ℂ)
    (hz : z ∈ spectrum ℂ (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w))) :
    ‖z‖ ≤ 2 * |t| + ‖arithmeticPotential N level χ m u v w‖ :=
  spectrum_norm_bound N t (arithmeticPotential N level χ m u v w) z hz

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHoppingBounds
