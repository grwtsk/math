/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralProjection
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.LinearAlgebra.Projection

set_option autoImplicit false
noncomputable section

/-! # Dimensions of the actual finite spectral sectors

Rank is transferred to the range of the actual continuous linear map on the
full complex Euclidean space. The strict eigenvalue<E cutoff counts every
index, including repeated eigenvalues; equal-cutoff eigenvalues stay high.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No basis-choice independence, cutoff stability under perturbation, identified
vacuum, infinite/RH operator or physical Yang-Mills conclusion is asserted. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralDimension

open ArithmeticCyclicHamiltonian ArithmeticCyclicSpectralProjection

variable (N : ℕ) [hN : NeZero N]
include hN

/-- The matrix and its actual Euclidean continuous linear map have the same range dimension. -/
theorem matrix_operator_finrank_range (A : Matrix (ZMod N) (ZMod N) ℂ) :
    Module.finrank ℂ (LinearMap.range
      (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) A).toLinearMap) = A.rank := by
  rw [Matrix.coe_toEuclideanCLM_eq_toEuclideanLin,
    Matrix.toEuclideanLin_eq_toLin_orthonormal]
  exact (Matrix.rank_eq_finrank_range_toLin A
    (EuclideanSpace.basisFun (ZMod N) ℂ).toBasis
    (EuclideanSpace.basisFun (ZMod N) ℂ).toBasis).symm

theorem lowOperator_finrank_range (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    Module.finrank ℂ (LinearMap.range (lowOperator N t q E).toLinearMap) =
      Fintype.card {i : ZMod N // (hamiltonian_isHermitian N t q).eigenvalues i < E} := by
  rw [lowOperator, matrix_operator_finrank_range, lowProjector_rank]

/-- The actual high range is the kernel of the actual low projector. -/
theorem high_range_eq_low_kernel (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    LinearMap.range (1 - lowOperator N t q E).toLinearMap =
      LinearMap.ker (lowOperator N t q E).toLinearMap := by
  have hp : IsIdempotentElem (lowOperator N t q E).toLinearMap := by
    exact congrArg ContinuousLinearMap.toLinearMap
      (lowOperator_isStarProjection N t q E).isIdempotentElem
  simpa only [ContinuousLinearMap.toLinearMap_sub, ContinuousLinearMap.toLinearMap_one]
    using hp.ker_eq_range_one_sub.symm

theorem low_high_finrank_add (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    Module.finrank ℂ (LinearMap.range (lowOperator N t q E).toLinearMap) +
      Module.finrank ℂ (LinearMap.range (1 - lowOperator N t q E).toLinearMap) = N := by
  rw [high_range_eq_low_kernel, LinearMap.finrank_range_add_finrank_ker,
    finrank_euclideanSpace, ZMod.card]

theorem highOperator_finrank_range (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    Module.finrank ℂ (LinearMap.range (1 - lowOperator N t q E).toLinearMap) =
      N - Fintype.card {i : ZMod N // (hamiltonian_isHermitian N t q).eigenvalues i < E} := by
  have h := low_high_finrank_add N t q E
  rw [lowOperator_finrank_range] at h
  have hs := congrArg (fun k : ℕ => k - Fintype.card
    {i : ZMod N // (hamiltonian_isHermitian N t q).eigenvalues i < E}) h
  simpa only [Nat.add_sub_cancel_left] using hs

/-- The high range is zero exactly when every enumerated eigenvalue is strictly below E. -/
theorem high_range_eq_bot_iff (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    LinearMap.range (1 - lowOperator N t q E).toLinearMap = ⊥ ↔
      Fintype.card {i : ZMod N // (hamiltonian_isHermitian N t q).eigenvalues i < E} = N := by
  rw [← Submodule.finrank_eq_zero]
  have h := low_high_finrank_add N t q E
  rw [lowOperator_finrank_range] at h
  constructor
  · intro hz
    simpa only [hz, add_zero] using h
  · intro hc
    have hs : N + Module.finrank ℂ
        (LinearMap.range (1 - lowOperator N t q E).toLinearMap) = N + 0 := by
      simpa only [hc, add_zero] using h
    exact Nat.add_left_cancel hs

theorem arithmetic_lowOperator_finrank_range (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w E : ℝ) :
    Module.finrank ℂ (LinearMap.range
      (lowOperator N t (arithmeticPotential N level χ m u v w) E).toLinearMap) =
      Fintype.card {i : ZMod N //
        (arithmeticHamiltonian_isHermitian N level χ m t u v w).eigenvalues i < E} :=
  lowOperator_finrank_range N t _ E

theorem arithmetic_highOperator_finrank_range (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w E : ℝ) :
    Module.finrank ℂ (LinearMap.range
      (1 - lowOperator N t (arithmeticPotential N level χ m u v w) E).toLinearMap) =
      N - Fintype.card {i : ZMod N //
        (arithmeticHamiltonian_isHermitian N level χ m t u v w).eigenvalues i < E} :=
  highOperator_finrank_range N t _ E

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralDimension
