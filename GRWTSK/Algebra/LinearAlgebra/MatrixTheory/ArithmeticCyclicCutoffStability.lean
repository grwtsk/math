/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicSpectralProjection

set_option autoImplicit false
noncomputable section

/-! # Nesting and stability of actual finite spectral cutoffs

The Hamiltonian is fixed. Increasing a strict cutoff nests its actual low
range. The low projector and its rank are unchanged if the full actual
eigenvalue enumeration avoids [E,F): the lower endpoint is included and the
upper endpoint excluded. Repeated eigenvalues are all retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No gap supplier, perturbation stability, nonzero high sector, distinguished
vacuum, infinite/RH operator or physical Yang-Mills conclusion is asserted. -/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCutoffStability

open ArithmeticCyclicHamiltonian ArithmeticCyclicSpectralProjection

variable (N : ℕ) [hN : NeZero N]
include hN

theorem lowProjector_mul_of_le (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ) (hEF : E ≤ F) :
    lowProjector N t q E * lowProjector N t q F = lowProjector N t q E := by
  let hA := hamiltonian_isHermitian N t q
  let f := conjStarAlgAut ℂ _ hA.eigenvectorUnitary
  change f (Matrix.diagonal (cutMask N t q E)) *
      f (Matrix.diagonal (cutMask N t q F)) = f (Matrix.diagonal (cutMask N t q E))
  rw [← map_mul]
  apply congrArg f
  rw [Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  by_cases hi : (hamiltonian_isHermitian N t q).eigenvalues i < E
  · have hf := lt_of_lt_of_le hi hEF
    simp [cutMask, hi, hf]
  · simp [cutMask, hi]

theorem lowOperator_mul_of_le (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ) (hEF : E ≤ F) :
    lowOperator N t q E * lowOperator N t q F = lowOperator N t q E := by
  change Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (lowProjector N t q E) *
      Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ) (lowProjector N t q F) = _
  rw [← map_mul, lowProjector_mul_of_le N t q E F hEF]

theorem lowOperator_reverse_mul_of_le (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ)
    (hEF : E ≤ F) :
    lowOperator N t q F * lowOperator N t q E = lowOperator N t q E := by
  have hs := congrArg star (lowOperator_mul_of_le N t q E F hEF)
  simpa only [star_mul, (lowOperator_isStarProjection N t q E).isSelfAdjoint.star_eq,
    (lowOperator_isStarProjection N t q F).isSelfAdjoint.star_eq] using hs

theorem low_range_mono (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ) (hEF : E ≤ F) :
    LinearMap.range (lowOperator N t q E).toLinearMap ≤
      LinearMap.range (lowOperator N t q F).toLinearMap := by
  rintro y ⟨x, rfl⟩
  refine ⟨lowOperator N t q E x, ?_⟩
  exact congrArg
    (fun T : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) => T x)
    (lowOperator_reverse_mul_of_le N t q E F hEF)

/-- Every actual eigenvalue index is excluded from the half-open interval. -/
theorem lowProjector_eq_of_no_crossing (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ)
    (hEF : E ≤ F)
    (hgap : ∀ i, ¬ (E ≤ (hamiltonian_isHermitian N t q).eigenvalues i ∧
      (hamiltonian_isHermitian N t q).eigenvalues i < F)) :
    lowProjector N t q E = lowProjector N t q F := by
  have hm : cutMask N t q E = cutMask N t q F := by
    funext i
    by_cases hi : (hamiltonian_isHermitian N t q).eigenvalues i < E
    · have hf := lt_of_lt_of_le hi hEF
      simp [cutMask, hi, hf]
    · have hf : ¬ (hamiltonian_isHermitian N t q).eigenvalues i < F :=
        fun h => hgap i ⟨le_of_not_gt hi, h⟩
      simp [cutMask, hi, hf]
  unfold lowProjector
  rw [hm]

theorem lowOperator_eq_of_no_crossing (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ)
    (hEF : E ≤ F)
    (hgap : ∀ i, ¬ (E ≤ (hamiltonian_isHermitian N t q).eigenvalues i ∧
      (hamiltonian_isHermitian N t q).eigenvalues i < F)) :
    lowOperator N t q E = lowOperator N t q F := by
  unfold lowOperator
  rw [lowProjector_eq_of_no_crossing N t q E F hEF hgap]

theorem lowProjector_rank_eq_of_no_crossing (t : ℝ) (q : ZMod N → ℝ) (E F : ℝ)
    (hEF : E ≤ F)
    (hgap : ∀ i, ¬ (E ≤ (hamiltonian_isHermitian N t q).eigenvalues i ∧
      (hamiltonian_isHermitian N t q).eigenvalues i < F)) :
    (lowProjector N t q E).rank = (lowProjector N t q F).rank :=
  congrArg (fun A : Matrix (ZMod N) (ZMod N) ℂ => A.rank)
    (lowProjector_eq_of_no_crossing N t q E F hEF hgap)

theorem arithmetic_lowOperator_eq_of_no_crossing (level : ℕ)
    (χ : DirichletCharacter ℂ level) (m : ZMod N → ℕ) (t u v w E F : ℝ)
    (hEF : E ≤ F)
    (hgap : ∀ i, ¬ (E ≤
      (arithmeticHamiltonian_isHermitian N level χ m t u v w).eigenvalues i ∧
      (arithmeticHamiltonian_isHermitian N level χ m t u v w).eigenvalues i < F)) :
    lowOperator N t (arithmeticPotential N level χ m u v w) E =
      lowOperator N t (arithmeticPotential N level χ m u v w) F :=
  lowOperator_eq_of_no_crossing N t _ E F hEF hgap

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCutoffStability
