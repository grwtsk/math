/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
import Mathlib.Analysis.CStarAlgebra.Matrix

set_option autoImplicit false
noncomputable section

/-! # Actual Euclidean operators and potential perturbations

The operators act on EuclideanSpace Complex (ZMod N), with the complex Euclidean
norm. The real potential functions carry their finite sup norm, namely the
maximum absolute coordinate value. These two norms are kept distinct.
All real hopping strengths and signed potentials are retained. The arithmetic
application retains arbitrary actual characters, levels, labels and real
coefficients, with a common hopping strength in the compared Hamiltonians.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
Norm stability is not a spectral enclosure, positivity or physical identification. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

open ArithmeticCyclicHamiltonian

variable (N : ℕ) [hN : NeZero N]
include hN

def diagonalOperator (q : ZMod N → ℝ) :
    EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
    (Matrix.diagonal (fun i => (q i : ℂ)))

def hamiltonianOperator (t : ℝ) (q : ZMod N → ℝ) :
    EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (hamiltonian N t q)

theorem diagonalOperator_mulVec (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N)) :
    WithLp.ofLp (diagonalOperator N q x) =
      fun i => (q i : ℂ) * WithLp.ofLp x i := by
  rw [diagonalOperator, Matrix.ofLp_toEuclideanCLM, Matrix.mulVec_diagonal]

theorem hamiltonianOperator_mulVec (t : ℝ) (q : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    WithLp.ofLp (hamiltonianOperator N t q x) =
      (hamiltonian N t q).mulVec (WithLp.ofLp x) :=
  Matrix.ofLp_toEuclideanCLM (hamiltonian N t q) x

theorem hamiltonianOperator_isSelfAdjoint (t : ℝ) (q : ZMod N → ℝ) :
    IsSelfAdjoint (hamiltonianOperator N t q) := by
  change star (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (hamiltonian N t q)) = _
  rw [← map_star]
  exact congrArg (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ))
    (hamiltonian_isHermitian N t q).star_eq

theorem hamiltonianOperator_sub (t : ℝ) (q r : ZMod N → ℝ) :
    hamiltonianOperator N t q - hamiltonianOperator N t r =
      diagonalOperator N (fun i => q i - r i) := by
  unfold hamiltonianOperator diagonalOperator
  rw [← map_sub, hamiltonian_sub]

open scoped Matrix.Norms.L2Operator in
theorem diagonalOperator_norm (q : ZMod N → ℝ) :
    ‖diagonalOperator N q‖ = ‖q‖ := by
  rw [diagonalOperator, Matrix.l2_opNorm_toEuclideanCLM, Matrix.l2_opNorm_diagonal]
  apply le_antisymm
  · apply (pi_norm_le_iff_of_nonneg (norm_nonneg q)).mpr
    intro i
    simpa only [Complex.norm_real] using norm_le_pi_norm q i
  · apply (pi_norm_le_iff_of_nonneg (norm_nonneg (fun i => (q i : ℂ)))).mpr
    intro i
    simpa only [Complex.norm_real] using norm_le_pi_norm (fun j => (q j : ℂ)) i

/-- Exact Euclidean operator norm; RHS is the finite maximum potential error. -/
theorem operator_norm_sub_eq (t : ℝ) (q r : ZMod N → ℝ) :
    ‖hamiltonianOperator N t q - hamiltonianOperator N t r‖ = ‖q - r‖ := by
  rw [hamiltonianOperator_sub]
  exact diagonalOperator_norm N (q - r)

theorem operator_norm_sub_le_iff (t : ℝ) (q r : ZMod N → ℝ) (ε : ℝ) :
    ‖hamiltonianOperator N t q - hamiltonianOperator N t r‖ ≤ ε ↔
      ∀ i, |q i - r i| ≤ ε := by
  rw [operator_norm_sub_eq]
  simpa only [Pi.sub_apply, Real.norm_eq_abs] using
    (pi_norm_le_iff_of_nonempty : ‖q - r‖ ≤ ε ↔ ∀ i, ‖(q - r) i‖ ≤ ε)

theorem operator_vector_change_le (t : ℝ) (q r : ZMod N → ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    ‖hamiltonianOperator N t q x - hamiltonianOperator N t r x‖ ≤
      ‖q - r‖ * ‖x‖ := by
  have h := (hamiltonianOperator N t q - hamiltonianOperator N t r).le_opNorm x
  rw [operator_norm_sub_eq] at h
  simpa only [ContinuousLinearMap.sub_apply] using h

theorem operator_norm_change_le (t : ℝ) (q r : ZMod N → ℝ) :
    |‖hamiltonianOperator N t q‖ - ‖hamiltonianOperator N t r‖| ≤ ‖q - r‖ := by
  have h := abs_norm_sub_norm_le (hamiltonianOperator N t q) (hamiltonianOperator N t r)
  rwa [operator_norm_sub_eq] at h

/-- Different actual character levels, labels and real coefficients are allowed.
Only the hopping parameter is shared, exactly as in H(q)-H(r). -/
theorem arithmetic_operator_norm_sub_eq (level level' : ℕ)
    (χ : DirichletCharacter ℂ level) (χ' : DirichletCharacter ℂ level')
    (m m' : ZMod N → ℕ) (t u v w u' v' w' : ℝ) :
    ‖Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
        (arithmeticHamiltonian N level χ m t u v w) -
      Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
        (arithmeticHamiltonian N level' χ' m' t u' v' w')‖ =
      ‖arithmeticPotential N level χ m u v w -
        arithmeticPotential N level' χ' m' u' v' w'‖ :=
  operator_norm_sub_eq N t (arithmeticPotential N level χ m u v w)
    (arithmeticPotential N level' χ' m' u' v' w')

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
