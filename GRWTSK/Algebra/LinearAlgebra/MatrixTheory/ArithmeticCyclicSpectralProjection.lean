/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Algebra.Star.StarProjection

set_option autoImplicit false
noncomputable section

/-! # Actual finite spectral cutoff projectors

The cutoff is strict: eigenvalues equal to E are excluded from the low sector.
The projector is conjugated by the actual Hamiltonian's full eigenvector
unitary. Rank counts the complete actual eigenvalue enumeration, including
multiplicities, rather than a selected list of modes or distinct values.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No complementary coercivity, rank stability under perturbation, distinguished
vacuum, infinite/RH operator or physical Yang-Mills conclusion is asserted. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralProjection

open ArithmeticCyclicHamiltonian ArithmeticCyclicOperatorStability

variable (N : ℕ) [hN : NeZero N]
include hN

/-- One coefficient for every actual eigenbasis vector, with a strict cutoff. -/
def cutMask (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) (i : ZMod N) : ℂ :=
  if (hamiltonian_isHermitian N t q).eigenvalues i < E then 1 else 0

def lowProjector (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    Matrix (ZMod N) (ZMod N) ℂ :=
  conjStarAlgAut ℂ _ (hamiltonian_isHermitian N t q).eigenvectorUnitary
    (Matrix.diagonal (cutMask N t q E))

def lowOperator (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (lowProjector N t q E)

theorem lowProjector_isStarProjection (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    IsStarProjection (lowProjector N t q E) := by
  have hd : IsStarProjection (Matrix.diagonal (cutMask N t q E)) := by
    apply isStarProjection_iff'.mpr
    constructor
    · rw [Matrix.diagonal_mul_diagonal]
      congr 1
      funext i
      by_cases hi : (hamiltonian_isHermitian N t q).eigenvalues i < E <;>
        simp [cutMask, hi]
    · have hh : (Matrix.diagonal (cutMask N t q E)).IsHermitian := by
        apply Matrix.isHermitian_diagonal_iff.mpr
        intro i
        change star (cutMask N t q E i) = cutMask N t q E i
        by_cases hi : (hamiltonian_isHermitian N t q).eigenvalues i < E <;>
          simp [cutMask, hi]
      exact hh.star_eq
  exact hd.map (conjStarAlgAut ℂ _ (hamiltonian_isHermitian N t q).eigenvectorUnitary)

theorem lowOperator_isStarProjection (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    IsStarProjection (lowOperator N t q E) :=
  (lowProjector_isStarProjection N t q E).map
    (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ))

theorem lowProjector_commutes (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    Commute (lowProjector N t q E) (hamiltonian N t q) := by
  let hA := hamiltonian_isHermitian N t q
  let f := conjStarAlgAut ℂ _ hA.eigenvectorUnitary
  let D := Matrix.diagonal (cutMask N t q E)
  let V := Matrix.diagonal (RCLike.ofReal ∘ hA.eigenvalues)
  have hH : hamiltonian N t q = f V := hA.spectral_theorem
  change f D * hamiltonian N t q = hamiltonian N t q * f D
  calc
    _ = f D * f V := congrArg (fun A => f D * A) hH
    _ = f (D * V) := (map_mul f D V).symm
    _ = f (V * D) := congrArg f (Matrix.commute_diagonal _ _).eq
    _ = f V * f D := map_mul f V D
    _ = _ := congrArg (fun A => A * f D) hH.symm

theorem lowOperator_commutes (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    Commute (lowOperator N t q E) (hamiltonianOperator N t q) := by
  change Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (lowProjector N t q E) *
      Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (hamiltonian N t q) = _
  rw [← map_mul, ← map_mul, (lowProjector_commutes N t q E).eq]

theorem complement_isStarProjection (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    IsStarProjection (1 - lowOperator N t q E) :=
  (lowOperator_isStarProjection N t q E).one_sub

theorem low_mul_complement (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    lowOperator N t q E * (1 - lowOperator N t q E) = 0 :=
  (lowOperator_isStarProjection N t q E).mul_one_sub_self

theorem complement_mul_low (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    (1 - lowOperator N t q E) * lowOperator N t q E = 0 :=
  (lowOperator_isStarProjection N t q E).one_sub_mul_self

theorem lowProjector_rank (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) :
    (lowProjector N t q E).rank =
      Fintype.card {i : ZMod N // (hamiltonian_isHermitian N t q).eigenvalues i < E} := by
  classical
  have hr : (lowProjector N t q E).rank =
      (Matrix.diagonal (cutMask N t q E)).rank := by
    rw [lowProjector, conjStarAlgAut_apply, ← Unitary.coe_star]
    simp [-isUnit_iff_ne_zero, -Unitary.coe_star, Matrix.rank_diagonal]
  rw [hr, Matrix.rank_diagonal]
  apply Fintype.card_congr
  apply Equiv.subtypeEquivRight
  intro i
  by_cases hi : (hamiltonian_isHermitian N t q).eigenvalues i < E <;>
    simp [cutMask, hi]

/-- Every basis vector is tested, including every repeated eigenvalue. -/
theorem lowProjector_eigenvector_action (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) (j : ZMod N) :
    (lowProjector N t q E).mulVec
        (WithLp.ofLp ((hamiltonian_isHermitian N t q).eigenvectorBasis j)) =
      cutMask N t q E j •
        WithLp.ofLp ((hamiltonian_isHermitian N t q).eigenvectorBasis j) := by
  let hA := hamiltonian_isHermitian N t q
  rw [lowProjector, conjStarAlgAut_apply, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    hA.star_eigenvectorUnitary_mulVec, Matrix.diagonal_mulVec_single, mul_one]
  have hs : Pi.single j (cutMask N t q E j) =
      cutMask N t q E j • Pi.single j (1 : ℂ) := by
    funext i
    by_cases hij : i = j
    · subst i
      simp
    · simp [Pi.single_apply, hij, Ne.symm hij]
  rw [hs, Matrix.mulVec_smul, hA.eigenvectorUnitary_mulVec]

theorem lowOperator_eigenvector_action (t : ℝ) (q : ZMod N → ℝ) (E : ℝ) (j : ZMod N) :
    lowOperator N t q E ((hamiltonian_isHermitian N t q).eigenvectorBasis j) =
      cutMask N t q E j • (hamiltonian_isHermitian N t q).eigenvectorBasis j := by
  ext i
  change (lowProjector N t q E).mulVec
      (WithLp.ofLp ((hamiltonian_isHermitian N t q).eigenvectorBasis j)) i = _
  exact congrFun (lowProjector_eigenvector_action N t q E j) i

theorem arithmetic_lowOperator_commutes (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w E : ℝ) :
    Commute (lowOperator N t (arithmeticPotential N level χ m u v w) E)
      (Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
        (arithmeticHamiltonian N level χ m t u v w)) :=
  lowOperator_commutes N t _ E

theorem arithmetic_lowProjector_rank (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t u v w E : ℝ) :
    (lowProjector N t (arithmeticPotential N level χ m u v w) E).rank =
      Fintype.card {i : ZMod N //
        (arithmeticHamiltonian_isHermitian N level χ m t u v w).eigenvalues i < E} :=
  lowProjector_rank N t _ E

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralProjection
