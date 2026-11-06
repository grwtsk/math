/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoStageReturn

/-!
# Trial upper from the head and literal overlap rows

Split the trial coordinates into the retained head, including the scalar
pole, and the physical modes 65 through 512. Symmetry moves the head to
middle term to the observed rows. The trial quadratic is the head value
plus the middle pairing with the head columns and with the full overlap
rows. The same shifted overlap entries therefore serve both the trial
upper and the residual Gram. Independent analytical review is pending.
-/

set_option autoImplicit false
set_option maxRecDepth 4096
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoTrialProjection

open Matrix
open RadiusTwoCandidateEntries RadiusTwoStageReturn OddSchurAccounting
open OddResidualSourceComparison OddTrialResidualMatrix OddRootProjection
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- The retained physical modes and pole in the trial coordinates. -/
def headSlot : Head → Trial
  | .inl i => .inl (Fin.castAdd 448 i)
  | .inr _ => .inr ()

/-- The middle physical modes of the trial. -/
def overlapSlot (i : Fin 448) : Trial := .inl (Fin.natAdd 64 i)

/-- The overlap is the first 448 rows of the observed residual. -/
def overlapRow (i : Fin 448) : ResidualRows := Fin.castLE (by decide) i

private abbrev source (P : ℕ) : Matrix (Fin P ⊕ Unit) (Fin P ⊕ Unit) ℝ :=
  shiftedBlock (borderedSourceMatrix 2 P) poleShiftMetric (-1 / 2)

private abbrev residual : Matrix ResidualRows Trial ℝ :=
  literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048

/-- The head columns of the overlap block of the literal source. -/
def overlapHead : Matrix (Fin 448) Head ℝ :=
  fun i j => residual (overlapRow i) (headSlot j)

private theorem sum_trial_split (f : Trial → ℝ) :
    (∑ i, f i) = (∑ i : Head, f (headSlot i)) + ∑ i : Fin 448, f (overlapSlot i) := by
  rw [Fintype.sum_sum_type (f := f), Fin.sum_univ_add (a := 64) (b := 448),
    Fintype.sum_sum_type (f := fun i : Head => f (headSlot i))]
  simp only [headSlot, overlapSlot, Fintype.sum_unique]
  ring

private theorem literalCoreEntry_symm (m n : ℕ) : literalCoreEntry 2 m n = literalCoreEntry 2 n m := by
  have hArch : sineArchimedeanEntry 2 (OddRootProjection.gammaConstant 1 0) 0 m n =
      sineArchimedeanEntry 2 (OddRootProjection.gammaConstant 1 0) 0 n m := by
    unfold sineArchimedeanEntry
    congr 1
    · congr 1
      apply MeasureTheory.integral_congr_ae
      exact Filter.Eventually.of_forall fun _ => mul_comm _ _
    · apply MeasureTheory.integral_congr_ae
      refine Filter.Eventually.of_forall fun r => ?_
      dsimp only
      congr 1
      apply MeasureTheory.integral_congr_ae
      exact Filter.Eventually.of_forall fun _ => mul_comm _ _
  unfold literalCoreEntry
  rw [hArch]
  simp_rw [sineShiftEntry_symmetric 2 m n]

private theorem source_symm (i j : Trial) : source 512 i j = source 512 j i := by
  unfold source
  rcases i with i | u <;> rcases j with j | w
  · rw [shiftedBordered_physicalEntry 2 (by norm_num), shiftedBordered_physicalEntry 2 (by norm_num),
      literalCoreEntry_symm]
    by_cases h : i = j
    · rw [ite_eq_left h, ite_eq_left h.symm]
    · rw [ite_eq_right h, ite_eq_right (Ne.symm h)]
  · rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
    rfl
  · rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
    rfl
  · rfl

private theorem source_head (i j : Head) : source 512 (headSlot i) (headSlot j) = source 64 i j := by
  unfold source
  rcases i with i | u <;> rcases j with j | w
  · rw [headSlot, headSlot, shiftedBordered_physicalEntry 2 (by norm_num),
      shiftedBordered_physicalEntry 2 (by norm_num)]
    have hcast : Fin.castAdd 448 i = Fin.castAdd 448 j ↔ i = j :=
      ⟨fun h => Fin.ext (congrArg (fun k : Fin 512 => k.val) h), congrArg (Fin.castAdd 448)⟩
    simp only [Fin.val_castAdd, hcast]
  · cases w
    simp only [headSlot, shiftedBordered_poleColumn, Fin.val_castAdd]
  · cases u
    simp only [headSlot, borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
    rfl
  · simp only [headSlot, borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
    rfl

/-- Every physical overlap row has the trial's diagonal shift and the
same scalar pole coefficient. -/
theorem source_overlap (i : Fin 448) (j : Trial) :
    source 512 (overlapSlot i) j = residual (overlapRow i) j := by
  have hMode : (Fin.natAdd 64 i).val + 1 = 64 + 1 + (overlapRow i).val := by
    simp only [Fin.val_natAdd, overlapRow, Fin.val_castLE]
    omega
  unfold source
  rcases j with j | u
  · rw [overlapSlot, shiftedBordered_physicalEntry 2 (by norm_num)]
    simp only [literalTrialResidualMatrix, Sum.elim_inl, hMode]
    have hij : Fin.natAdd 64 i = j ↔ 64 + 1 + (overlapRow i).val = j.val + 1 := by
      rw [← hMode, Nat.add_right_cancel_iff, Fin.ext_iff]
    by_cases h : Fin.natAdd 64 i = j
    · rw [ite_eq_left h, ite_eq_left (hij.mp h)]
    · rw [ite_eq_right h, ite_eq_right (fun he => h (hij.mpr he))]
  · cases u
    simp only [overlapSlot, shiftedBordered_poleColumn, literalTrialResidualMatrix, Sum.elim_inr, hMode]

/-- The trial upper uses only the head entries and the overlap rows of the
same literal residual matrix. -/
theorem quadratic_trialUpper_eq_overlap (X : Matrix Trial Head ℝ) (v : Head → ℝ)
    (hmatch : ∀ i : Head, X.mulVec v (headSlot i) = v i) :
    let x := X.mulVec v
    quadratic (trialUpper X) v = quadratic (source 64) v +
      (∑ k : Fin 448, x (overlapSlot k) * overlapHead.mulVec v k) +
      ∑ k : Fin 448, x (overlapSlot k) * residual.mulVec x (overlapRow k) := by
  dsimp only
  let x := X.mulVec v
  have hLow (i : Head) : (source 512).mulVec x (headSlot i) = (source 64).mulVec v i +
      ∑ k : Fin 448, overlapHead k i * x (overlapSlot k) := by
    change (∑ j, source 512 (headSlot i) j * x j) = _
    rw [sum_trial_split]
    congr 1
    · simp only [source_head, x, hmatch, Matrix.mulVec, dotProduct]
    · apply Finset.sum_congr rfl
      intro k _
      rw [source_symm (headSlot i), source_overlap]
      rfl
  have hMid (k : Fin 448) : (source 512).mulVec x (overlapSlot k) = residual.mulVec x (overlapRow k) := by
    simp only [Matrix.mulVec, dotProduct, source_overlap]
  rw [trialUpper, quadratic_congruence]
  change (∑ i : Trial, x i * (source 512).mulVec x i) = _
  rw [sum_trial_split]
  simp_rw [show ∀ i, x (headSlot i) = v i from hmatch, hLow, hMid, mul_add, Finset.sum_add_distrib]
  congr 1
  rw [quadratic]
  congr 1
  simp only [Matrix.mulVec, dotProduct, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro i _
  simp only [x, Matrix.mulVec, dotProduct]
  ring

/-- Assemble the trial comparison from the head and the first 448 rows of
the source residual. -/
def splitTrialUpper (X : Matrix Trial Head ℝ) : Matrix Head Head ℝ :=
  let y := X.submatrix overlapSlot id
  let r := residual.submatrix overlapRow id
  source 64 + overlapHead.transpose * y + y.transpose * (r * X)

/-- The split matrix represents the exact trial quadratic. Its two cross
matrices can be symmetrized when a symmetric entry comparison is needed. -/
theorem quadratic_splitTrialUpper (X : Matrix Trial Head ℝ) (v : Head → ℝ)
    (hmatch : ∀ i : Head, X.mulVec v (headSlot i) = v i) :
    quadratic (splitTrialUpper X) v = quadratic (trialUpper X) v := by
  rw [quadratic_trialUpper_eq_overlap X v hmatch]
  dsimp only [splitTrialUpper]
  rw [quadratic_add, quadratic_add]
  simp only [quadratic, ← Matrix.mulVec_mulVec, Matrix.dotProduct_transpose_mulVec]
  have hy (k : Fin 448) : (X.submatrix overlapSlot id).mulVec v k = X.mulVec v (overlapSlot k) := by
    rfl
  have hr (k : Fin 448) : (residual.submatrix overlapRow id).mulVec (X.mulVec v) k =
      residual.mulVec (X.mulVec v) (overlapRow k) := by
    rfl
  simp only [dotProduct, hy, hr]
  congr 1
  apply Finset.sum_congr rfl
  intro k _
  exact mul_comm _ _

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoTrialProjection
