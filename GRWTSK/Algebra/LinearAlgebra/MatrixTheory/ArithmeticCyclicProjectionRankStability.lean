import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralDimension
import Mathlib.Tactic

/-! # Rank stability under an explicit projector-norm bound

Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.

The norm bound below concerns the actual projections, not merely their
Hamiltonians. No estimate converting a potential/hopping perturbation or a
spectral gap into this projector-norm bound is supplied here. Strict cutoffs
retain all eigenvalue indices and their multiplicities, including empty sectors.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicProjectionRankStability

section General

variable {V : Type*} [NormedAddCommGroup V] [NormedSpace ℂ V]

theorem fixed_of_mem_range (A : V →L[ℂ] V) (hA : ∀ x, A (A x) = A x)
    {x : V} (hx : x ∈ LinearMap.range A.toLinearMap) : A x = x := by
  rcases hx with ⟨y, rfl⟩
  exact hA y

/-- A vector fixed by A and killed by B must vanish when the projections are close. -/
theorem zero_of_fixed_of_norm_sub_lt_one (A B : V →L[ℂ] V)
    (hclose : ‖A - B‖ < 1) {x : V} (hAx : A x = x) (hBx : B x = 0) : x = 0 := by
  by_contra hx
  have hnorm : ‖x‖ ≤ ‖A - B‖ * ‖x‖ := by
    simpa only [sub_apply, hAx, hBx, sub_zero] using
      (A - B).le_opNorm x
  have hstrict := mul_lt_mul_of_pos_right hclose (norm_pos_iff.mpr hx)
  nlinarith

/-- B embeds the entire range of A into its own range; no selected basis is used. -/
theorem range_injective_of_norm_sub_lt_one (A B : V →L[ℂ] V)
    (hA : ∀ x, A (A x) = A x) (hclose : ‖A - B‖ < 1) :
    Function.Injective (B.toLinearMap.rangeRestrict.comp
      (LinearMap.range A.toLinearMap).subtype) := by
  intro x y hxy
  have hB : B (x : V) = B (y : V) := by
    exact congrArg (fun z : LinearMap.range B.toLinearMap => (z : V)) hxy
  have hfixed : A ((x : V) - (y : V)) = (x : V) - (y : V) := by
    rw [map_sub, fixed_of_mem_range A hA x.property, fixed_of_mem_range A hA y.property]
  have hzero : B ((x : V) - (y : V)) = 0 := by
    rw [map_sub, hB, sub_self]
  exact Subtype.ext (sub_eq_zero.mp (zero_of_fixed_of_norm_sub_lt_one A B hclose hfixed hzero))

variable [FiniteDimensional ℂ V]

theorem finrank_range_le_of_norm_sub_lt_one (A B : V →L[ℂ] V)
    (hA : ∀ x, A (A x) = A x) (hclose : ‖A - B‖ < 1) :
    Module.finrank ℂ (LinearMap.range A.toLinearMap) ≤
      Module.finrank ℂ (LinearMap.range B.toLinearMap) :=
  LinearMap.finrank_le_finrank_of_injective (range_injective_of_norm_sub_lt_one A B hA hclose)

/-- Equal finite ranks require idempotence on both sides and strict norm distance below one. -/
theorem finrank_range_eq_of_norm_sub_lt_one (A B : V →L[ℂ] V)
    (hA : ∀ x, A (A x) = A x) (hB : ∀ x, B (B x) = B x)
    (hclose : ‖A - B‖ < 1) :
    Module.finrank ℂ (LinearMap.range A.toLinearMap) =
      Module.finrank ℂ (LinearMap.range B.toLinearMap) := by
  apply Nat.le_antisymm (finrank_range_le_of_norm_sub_lt_one A B hA hclose)
  apply finrank_range_le_of_norm_sub_lt_one B A hB
  rw [norm_sub_rev]
  exact hclose

end General

open ArithmeticCyclicHamiltonian ArithmeticCyclicSpectralProjection
open ArithmeticCyclicSpectralDimension

variable (N : ℕ) [hN : NeZero N]
include hN

theorem lowOperator_finrank_eq_of_norm_sub_lt_one (t s : ℝ) (q r : ZMod N → ℝ) (E F : ℝ)
    (hclose : ‖lowOperator N t q E - lowOperator N s r F‖ < 1) :
    Module.finrank ℂ (LinearMap.range (lowOperator N t q E).toLinearMap) =
      Module.finrank ℂ (LinearMap.range (lowOperator N s r F).toLinearMap) := by
  apply finrank_range_eq_of_norm_sub_lt_one _ _ _ _ hclose
  · intro x
    exact congrArg (fun A : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) => A x)
      (lowOperator_isStarProjection N t q E).isIdempotentElem
  · intro x
    exact congrArg (fun A : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) => A x)
      (lowOperator_isStarProjection N s r F).isIdempotentElem

theorem lowProjector_rank_eq_of_norm_sub_lt_one (t s : ℝ) (q r : ZMod N → ℝ) (E F : ℝ)
    (hclose : ‖lowOperator N t q E - lowOperator N s r F‖ < 1) :
    (lowProjector N t q E).rank = (lowProjector N s r F).rank := by
  simpa only [lowOperator, matrix_operator_finrank_range] using
    lowOperator_finrank_eq_of_norm_sub_lt_one N t s q r E F hclose

theorem low_index_count_eq_of_norm_sub_lt_one (t s : ℝ) (q r : ZMod N → ℝ) (E F : ℝ)
    (hclose : ‖lowOperator N t q E - lowOperator N s r F‖ < 1) :
    Fintype.card {i : ZMod N // (hamiltonian_isHermitian N t q).eigenvalues i < E} =
      Fintype.card {i : ZMod N // (hamiltonian_isHermitian N s r).eigenvalues i < F} := by
  simpa only [lowOperator_finrank_range] using
    lowOperator_finrank_eq_of_norm_sub_lt_one N t s q r E F hclose

/-- The two arithmetic potentials may use unrelated characters, levels and natural labels. -/
theorem arithmetic_lowProjector_rank_eq_of_norm_sub_lt_one
    (level level' : ℕ) (χ : DirichletCharacter ℂ level) (χ' : DirichletCharacter ℂ level')
    (m m' : ZMod N → ℕ) (t s u v w u' v' w' E F : ℝ)
    (hclose : ‖lowOperator N t (arithmeticPotential N level χ m u v w) E -
      lowOperator N s (arithmeticPotential N level' χ' m' u' v' w') F‖ < 1) :
    (lowProjector N t (arithmeticPotential N level χ m u v w) E).rank =
      (lowProjector N s (arithmeticPotential N level' χ' m' u' v' w') F).rank :=
  lowProjector_rank_eq_of_norm_sub_lt_one N t s _ _ E F hclose

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicProjectionRankStability
