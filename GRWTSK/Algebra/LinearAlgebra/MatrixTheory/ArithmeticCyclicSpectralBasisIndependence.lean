/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralSector

set_option autoImplicit false
noncomputable section

/-! # Independence of the actual finite cutoff projector from diagonalizing basis

Alternative bases must be COMPLETE orthonormal bases, with the displayed
real eigenvalues satisfying EVERY eigenvector equation for the ORIGINAL
Hamiltonian. No selected modes or independent replacement operator is used.
The strict eigenvalue<E cutoff retains equal-cutoff values in the high sector.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No cutoff stability under perturbation, identified vacuum, infinite/RH operator
or physical Yang-Mills conclusion is asserted. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralBasisIndependence

open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability
open ArithmeticCyclicSpectralProjection ArithmeticCyclicSpectralSector

variable (N : ℕ) [hN : NeZero N]
include hN

/-- The actual cutoff acts by its scalar mask on every genuine eigenvector,
without requiring that vector to be a member of the chosen eigenbasis. -/
theorem lowOperator_action_of_eigenvector (t : ℝ) (q : ZMod N → ℝ) (E μ : ℝ)
    (x : EuclideanSpace ℂ (ZMod N)) (hx : hamiltonianOperator N t q x = (μ : ℂ) • x) :
    lowOperator N t q E x = (if μ < E then (1 : ℂ) else 0) • x := by
  let b := (hamiltonian_isHermitian N t q).eigenvectorBasis
  apply b.repr.injective
  ext i
  rw [low_basis_coordinates, map_smul]
  change cutMask N t q E i * b.repr x i =
    (if μ < E then (1 : ℂ) else 0) * b.repr x i
  have hc : ((hamiltonian_isHermitian N t q).eigenvalues i : ℂ) * b.repr x i =
      (μ : ℂ) * b.repr x i := by
    have h := congrArg (fun y => b.repr y i) hx
    rw [hamiltonian_basis_coordinates] at h
    simpa only [map_smul, PiLp.smul_apply, smul_eq_mul] using h
  rcases mul_eq_mul_right_iff.mp hc with hμ | hz
  · have hr : (hamiltonian_isHermitian N t q).eigenvalues i = μ :=
      Complex.ofReal_inj.mp hμ
    simp only [cutMask, hr]
  · simp only [hz, mul_zero]

/-- Every complete orthonormal diagonalization of the original H gives this same operator. -/
theorem lowOperator_basis_representation (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (b : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N))) (μ : ZMod N → ℝ)
    (hdiag : ∀ i, hamiltonianOperator N t q (b i) = (μ i : ℂ) • b i)
    (x : EuclideanSpace ℂ (ZMod N)) :
    lowOperator N t q E x = b.repr.symm (WithLp.toLp 2
      (fun i => (if μ i < E then (1 : ℂ) else 0) * b.repr x i)) :=
  basis_diagonal_action N (lowOperator N t q E) b
    (fun i => if μ i < E then (1 : ℂ) else 0)
    (fun i => lowOperator_action_of_eigenvector N t q E (μ i) (b i) (hdiag i)) x

theorem highOperator_basis_representation (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (b : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N))) (μ : ZMod N → ℝ)
    (hdiag : ∀ i, hamiltonianOperator N t q (b i) = (μ i : ℂ) • b i)
    (x : EuclideanSpace ℂ (ZMod N)) :
    (1 - lowOperator N t q E) x = b.repr.symm (WithLp.toLp 2
      (fun i => (if μ i < E then (0 : ℂ) else 1) * b.repr x i)) := by
  apply basis_diagonal_action N (1 - lowOperator N t q E) b
    (fun i => if μ i < E then (0 : ℂ) else 1) ?_ x
  intro i
  change b i - lowOperator N t q E (b i) = _
  rw [lowOperator_action_of_eigenvector N t q E (μ i) (b i) (hdiag i)]
  by_cases hi : μ i < E <;> simp [hi]

/-- Both full bases diagonalize the SAME actual Hamiltonian; repeated eigenvalues may mix. -/
theorem filtered_basis_reconstructions_eq (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (b c : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N)))
    (μ ν : ZMod N → ℝ)
    (hb : ∀ i, hamiltonianOperator N t q (b i) = (μ i : ℂ) • b i)
    (hc : ∀ i, hamiltonianOperator N t q (c i) = (ν i : ℂ) • c i)
    (x : EuclideanSpace ℂ (ZMod N)) :
    b.repr.symm (WithLp.toLp 2 (fun i => (if μ i < E then (1 : ℂ) else 0) * b.repr x i)) =
      c.repr.symm (WithLp.toLp 2 (fun i => (if ν i < E then (1 : ℂ) else 0) * c.repr x i)) :=
  (lowOperator_basis_representation N t q E b μ hb x).symm.trans
    (lowOperator_basis_representation N t q E c ν hc x)

/-- Uniqueness keeps BOTH the actual H-eigenvector and complete T-action hypotheses. -/
theorem lowOperator_eq_of_basis_action (t : ℝ) (q : ZMod N → ℝ) (E : ℝ)
    (b : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N))) (μ : ZMod N → ℝ)
    (hdiag : ∀ i, hamiltonianOperator N t q (b i) = (μ i : ℂ) • b i)
    (T : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (hT : ∀ i, T (b i) = (if μ i < E then (1 : ℂ) else 0) • b i) :
    T = lowOperator N t q E := by
  apply ContinuousLinearMap.ext
  intro x
  exact (basis_diagonal_action N T b (fun i => if μ i < E then (1 : ℂ) else 0) hT x).trans
    (lowOperator_basis_representation N t q E b μ hdiag x).symm

theorem arithmetic_lowOperator_basis_representation (level : ℕ)
    (χ : DirichletCharacter ℂ level) (m : ZMod N → ℕ) (t u v w E : ℝ)
    (b : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N))) (μ : ZMod N → ℝ)
    (hdiag : ∀ i, Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w) (b i) = (μ i : ℂ) • b i)
    (x : EuclideanSpace ℂ (ZMod N)) :
    lowOperator N t (arithmeticPotential N level χ m u v w) E x =
      b.repr.symm (WithLp.toLp 2
        (fun i => (if μ i < E then (1 : ℂ) else 0) * b.repr x i)) :=
  lowOperator_basis_representation N t _ E b μ hdiag x

theorem arithmetic_highOperator_basis_representation (level : ℕ)
    (χ : DirichletCharacter ℂ level) (m : ZMod N → ℕ) (t u v w E : ℝ)
    (b : OrthonormalBasis (ZMod N) ℂ (EuclideanSpace ℂ (ZMod N))) (μ : ZMod N → ℝ)
    (hdiag : ∀ i, Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
      (arithmeticHamiltonian N level χ m t u v w) (b i) = (μ i : ℂ) • b i)
    (x : EuclideanSpace ℂ (ZMod N)) :
    (1 - lowOperator N t (arithmeticPotential N level χ m u v w) E) x =
      b.repr.symm (WithLp.toLp 2
        (fun i => (if μ i < E then (0 : ℂ) else 1) * b.repr x i)) :=
  highOperator_basis_representation N t _ E b μ hdiag x

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralBasisIndependence
