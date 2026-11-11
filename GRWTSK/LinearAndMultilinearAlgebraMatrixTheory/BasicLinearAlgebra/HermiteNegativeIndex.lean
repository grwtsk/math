/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.NegativeIndexBounds
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteMomentCertificates

/-!
# Negative-index consumers for the existing Hermite certificates

MSC2020: 15A63, 15A18. Program 3 consumes Program 6 without redefining its
matrix, quadratic evaluator, error budget, or conjugate-pair control.

A matrix enclosure certifies a negative frame only when its upper bound is
strictly negative on EVERY nonzero linear combination. For the literal pair
matrix, observation of the second coefficient has a nonnegative kernel and
therefore gives an upper index bound of one. The existing negative vector gives
the matching lower bound. Positive multiplicity weights preserve this index;
at a real double collision the index is zero, not two.

These are finite real-index results. No identification with an arithmetic zero
divisor, general Hermite converse/inertia theorem, or complex Weil test-domain
index is asserted. Consumers must preserve the scalar field and exact source.
Source baseline: grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94.
Coordination: math#1808 and #1806. Adjacent individual provenance records apply.
FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.LinearAlgebra.HermiteNegativeIndex

open GRWTSK.HermiteMomentCertificates
open GRWTSK.LinearAlgebra.NegativeIndex
open GRWTSK.LinearAlgebra.NegativeIndexBounds

variable {ι : Type*} [Fintype ι]

/-- The existing evaluator vanishes on the zero coefficient vector. -/
theorem quadraticValue_zero (H : Matrix ι ι ℝ) : quadraticValue H 0 = 0 := by
  simp [quadraticValue]

/-- Exact real norm-square homogeneity, needed by the existing index-zero criterion. -/
theorem quadraticValue_smul (H : Matrix ι ι ℝ) (c : ℝ) (v : ι → ℝ) :
    quadraticValue H (c • v) = ‖c‖ ^ 2 * quadraticValue H v := by
  classical
  simp only [quadraticValue, Pi.smul_apply, smul_eq_mul, Real.norm_eq_abs, sq_abs,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Reuse the full entrywise error budget on a whole finite negative frame. -/
theorem hasNegativeFrame_of_matrix_enclosure {n : ℕ}
    (H M E : Matrix ι ι ℝ) (L : (Fin n → ℝ) →ₗ[ℝ] (ι → ℝ))
    (herror : ∀ i j, |H i j - M i j| ≤ E i j)
    (hmargin : ∀ x, x ≠ 0 →
      quadraticValue M (L x) + errorBudget E (L x) < 0) :
    HasNegativeFrame (𝕜 := ℝ) (quadraticValue H) n := by
  apply hasNegativeFrame_of_strict_negative (quadraticValue H) (quadraticValue_zero H) L
  intro x hx
  exact negative_of_errorBudget H M E (L x) herror (hmargin x hx)

/-- The two-point control has exactly one negative direction off the real axis. -/
theorem negativeIndex_pairMatrix (a b : ℝ) (hb : b ≠ 0) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (pairMatrix a b)) = 1 := by
  let observe : (Fin 2 → ℝ) →ₗ[ℝ] ℝ :=
    { toFun := fun v => v 1
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }
  have hkernel : ∀ v, observe v = 0 → 0 ≤ quadraticValue (pairMatrix a b) v := by
    intro v hv
    change v 1 = 0 at hv
    have hvalue : quadraticValue (pairMatrix a b) v = 2 * v 0 ^ 2 := by
      simp [quadraticValue, pairMatrix, Fin.sum_univ_two, hv] <;> ring
    rw [hvalue]
    positivity
  have hframe : HasNegativeFrame (𝕜 := ℝ) (quadraticValue (pairMatrix a b)) 1 :=
    hasNegativeFrame_one_of_neg (quadraticValue_zero (pairMatrix a b))
      (quadraticValue_smul (pairMatrix a b)) (pairMatrix_negative a b hb)
  have hindex := negativeIndex_eq_of_frame_and_observer observe hkernel
    (by simp : Module.finrank ℝ ℝ = 1) hframe
  simpa using hindex

/-- At collision the same literal matrix is nonnegative and has index zero. -/
theorem negativeIndex_pairMatrix_collision (a : ℝ) :
    negativeIndex (𝕜 := ℝ) (quadraticValue (pairMatrix a 0)) = 0 := by
  exact negativeIndex_eq_zero_of_nonneg ((pairMatrix_nonnegative_iff a 0).2 rfl)

/-- Multiplicity is a positive weight, not additional independent evaluation coordinates. -/
theorem negativeIndex_weighted_pairMatrix (a b weight : ℝ)
    (hweight : 0 < weight) (hb : b ≠ 0) :
    negativeIndex (𝕜 := ℝ) (fun v => weight * quadraticValue (pairMatrix a b) v) = 1 := by
  rw [negativeIndex_pos_mul _ weight hweight]
  exact negativeIndex_pairMatrix a b hb

end GRWTSK.LinearAlgebra.HermiteNegativeIndex
