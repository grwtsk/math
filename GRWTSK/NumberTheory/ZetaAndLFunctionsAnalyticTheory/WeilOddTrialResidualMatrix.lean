/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow

/-!
# Literal rectangular residual of a finite reconstructed odd trial

Local attribution is to grwtsk contributors.

Read the physical rows from mode `N+1` through mode `L` and the
physical columns from mode one through the trial cutoff `M`. A row
that overlaps the trial support can meet its own column and receives
the physical diagonal shift. The last column retains the signed pole.
Expanding the matrix-vector product in these coordinates gives the
literal augmented row, including the scalar term.

The rectangular entry-radius inequality pays the squared error across
the entire observed range. Multiplying the radius matrix by the
absolute reconstruction entries bounds each error in the reconstructed
readout. The same squared-error inequality then applies in the input
coordinates. The remote allowance and the high floor remain separate
inputs to the lower-matrix return. Independent mathematical review
and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddTrialResidualMatrix

open Matrix
open OddResidualSourceComparison OddConcreteResidual OddInclusionWindow

/-- The finite residual has every observed row and every trial coordinate. -/
def literalTrialResidualMatrix (T β : ℝ) (N M L : ℕ) :
    Matrix (Fin (L - N)) (Fin M ⊕ Unit) ℝ :=
  fun i => Sum.elim
    (fun j => literalCoreEntry T (N + 1 + i.val) (j.val + 1) -
      (if N + 1 + i.val = j.val + 1 then β else 0))
    (fun _ => literalPoleEntry T (N + 1 + i.val))

/-- Inclusion trials have no physical diagonal in the residual range. -/
theorem literalTrialResidualMatrix_eq_inclusion (T β : ℝ) (N L : ℕ) :
    literalTrialResidualMatrix T β N N L = literalResidualMatrix T N L := by
  ext i j
  rcases j with j | j
  · have hj := j.isLt
    simp [literalTrialResidualMatrix, literalResidualMatrix,
      show N + 1 + i.val ≠ j.val + 1 by omega]
  · rfl

/-- Applying the literal rectangular matrix reads the actual augmented row. -/
theorem literalTrialResidualMatrix_mulVec (T β : ℝ) {N M L : ℕ}
    (v : Fin M ⊕ Unit → ℝ) (i : Fin (L - N)) :
    (literalTrialResidualMatrix T β N M L).mulVec v i =
      literalAugmentedRow M T (inclusionTrial (v ∘ Sum.inl)) (v (Sum.inr ())) β
        (N + 1 + i.val) := by
  unfold literalAugmentedRow
  rw [← sum_fin_succ_eq_sum_Icc]
  simp only [literalTrialResidualMatrix, Matrix.mulVec, dotProduct, Fintype.sum_sum_type,
    Sum.elim_inl, Sum.elim_inr, Fintype.sum_unique, inclusionTrial_succ, Function.comp_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Outward entry radii pay all observed squared residual errors on the trial vector. -/
theorem literalTrialResidualErrorSq_le (T β : ℝ) {N M L : ℕ}
    (observed radius : Matrix (Fin (L - N)) (Fin M ⊕ Unit) ℝ) (v : Fin M ⊕ Unit → ℝ)
    (hentry : ∀ i j, |literalTrialResidualMatrix T β N M L i j - observed i j| ≤ radius i j) :
    (∑ i : Fin (L - N),
      (literalAugmentedRow M T (inclusionTrial (v ∘ Sum.inl)) (v (Sum.inr ())) β
        (N + 1 + i.val) - observed.mulVec v i) ^ 2) ≤
      (∑ i, ∑ j, (radius i j) ^ 2) * (∑ j, (v j) ^ 2) := by
  simpa only [literalTrialResidualMatrix_mulVec] using
    residualObservationErrorSq_le (literalTrialResidualMatrix T β N M L) observed radius v hentry

/-- The absolute reconstruction entries propagate the literal entry radii
to the reconstructed readout. -/
theorem literalTrialResidual_mul_entry_radius (T β : ℝ) {N M L : ℕ}
    {ι : Type*} (X : Matrix (Fin M ⊕ Unit) ι ℝ)
    (observed radius : Matrix (Fin (L - N)) (Fin M ⊕ Unit) ℝ)
    (hentry : ∀ i j, |literalTrialResidualMatrix T β N M L i j - observed i j| ≤ radius i j)
    (i : Fin (L - N)) (j : ι) :
    |(literalTrialResidualMatrix T β N M L * X) i j - (observed * X) i j| ≤
      (radius * Matrix.of (fun k l => |X k l|)) i j := by
  simp only [Matrix.mul_apply, ← Finset.sum_sub_distrib, ← sub_mul, Matrix.of_apply]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum (fun k _ => ?_))
  rw [abs_mul]
  exact mul_le_mul_of_nonneg_right (hentry i k) (abs_nonneg _)

/-- Bounds on the reconstructed readout entries pay the error in the input coordinates. -/
theorem literalTrialResidualErrorSq_reconstruction_le (T β : ℝ) {N M L : ℕ}
    {ι : Type*} [Fintype ι] (X : Matrix (Fin M ⊕ Unit) ι ℝ)
    (observed radius : Matrix (Fin (L - N)) ι ℝ) (v : ι → ℝ)
    (hentry : ∀ i j, |(literalTrialResidualMatrix T β N M L * X) i j - observed i j| ≤ radius i j) :
    (∑ i : Fin (L - N),
      (literalAugmentedRow M T (inclusionTrial (X.mulVec v ∘ Sum.inl))
        (X.mulVec v (Sum.inr ())) β (N + 1 + i.val) - observed.mulVec v i) ^ 2) ≤
      (∑ i, ∑ j, (radius i j) ^ 2) * (∑ j, (v j) ^ 2) := by
  simpa only [← Matrix.mulVec_mulVec, literalTrialResidualMatrix_mulVec] using
    residualObservationErrorSq_le
      (literalTrialResidualMatrix T β N M L * X) observed radius v hentry

end GRWTSK.NumberTheory.WeilQuadraticForm.OddTrialResidualMatrix
