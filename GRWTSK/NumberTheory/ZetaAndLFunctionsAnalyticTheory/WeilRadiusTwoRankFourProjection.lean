/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import Batteries.Tactic.OpenPrivate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstruction

/-!
# Exact observation projection through the radius-two rank-four trial

The actual reconstruction inserts the retained physical head and scalar pole
as identity rows. Its remaining 448 rows are the product of the maintained
integer factors, each divided by 2^12. Splitting a complete trial-coordinate
sum therefore gives C*X = C_head + (C_middle*L)*R for every rational row table.
This compares the actual reconstruction, not an independently copied array.

The consumer is the observed-centre product and overlap products in the
radius-two paid interval return. It permits integer certificates to check
1984-by-4 intermediate products before the final four-coordinate product.
The retained-column term has coefficient one in this rational identity; on
the integer reconstruction grid it has coefficient 2^24. The scalar pole is
one of those retained columns and is not discarded.

Absolute entry radii cannot in general use the same factorization: cancellation
in L*R prevents replacing abs(L*R) by abs(L)*abs(R) as an equality. The fixed
paid packet still needs its exact absolute reconstruction coefficients. No
product certificate, observation enclosure, remote comparison, high floor or
window positivity follows merely from the algebra below. The argument shares
the maintained reconstruction definitions; independent analytic review and
novelty assessment remain pending. Formal assurance is recorded separately by
grwtsk/noeaaeue.
-/

set_option autoImplicit false
set_option maxRecDepth 10000
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourProjection

open Matrix RadiusTwoCandidateEntries RadiusTwoTrialProjection
open RadiusTwoSchurPaidReconstruction
  (reconstructionQ reconstructionScale reconstructionQ_head_entry)
open private leftWord rightWord middleNumerator from
  GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurPaidReconstruction

/-- The actual first factor on its 12-bit rational grid. -/
def leftFactor : Matrix (Fin 448) (Fin 4) ℚ := fun i k =>
  (leftWord i k : ℚ) / reconstructionScale

/-- The actual second factor, including the retained pole column. -/
def rightFactor : Matrix (Fin 4) Head ℚ := fun k j =>
  (rightWord k j : ℚ) / reconstructionScale

/-- Integer words of the actual left factor. -/
def leftNumerator : Matrix (Fin 448) (Fin 4) ℤ := leftWord

/-- Integer words of the actual right factor, including its pole column. -/
def rightNumerator : Matrix (Fin 4) Head ℤ := rightWord

/-- The middle part of the actual trial is exactly the product of its factors. -/
theorem reconstructionQ_overlap (i : Fin 448) (j : Head) :
    reconstructionQ (overlapSlot i) j = (leftFactor * rightFactor) i j := by
  have hnot : ¬ 64 + i.val < 64 := by omega
  have hrow : reconstructionQ (overlapSlot i) j =
      (middleNumerator i j : ℚ) / reconstructionScale ^ 2 := by
    rcases j with j | ⟨⟩ <;>
      simp only [overlapSlot, reconstructionQ, Fin.val_natAdd, hnot,
        ↓reduceDIte, Nat.add_sub_cancel_left]
  rw [hrow]
  simp only [middleNumerator, Matrix.mul_apply, leftFactor, rightFactor,
    Int.cast_sum, Int.cast_mul, div_mul_div_comm, pow_two, Finset.sum_div]

/-- Complete rational sums retain both the physical head and the scalar pole. -/
theorem sum_trial_split (f : Trial → ℚ) :
    (∑ i, f i) = (∑ i : Head, f (headSlot i)) +
      ∑ i : Fin 448, f (overlapSlot i) := by
  rw [Fintype.sum_sum_type (f := f), Fin.sum_univ_add (a := 64) (b := 448),
    Fintype.sum_sum_type (f := fun i : Head => f (headSlot i))]
  simp only [headSlot, overlapSlot, Fintype.sum_unique]
  ring

/-- Check the four-coordinate intermediate product without changing the trial
or its retained-column contribution. No assumptions on the observed table. -/
theorem projection {ι : Type*} (C : Matrix ι Trial ℚ) :
    C * reconstructionQ = C.submatrix id headSlot +
      (C.submatrix id overlapSlot * leftFactor) * rightFactor := by
  calc
    C * reconstructionQ = C.submatrix id headSlot +
        C.submatrix id overlapSlot * (leftFactor * rightFactor) := by
      ext i j
      simp only [Matrix.mul_apply, Matrix.add_apply, Matrix.submatrix_apply, id_eq]
      rw [sum_trial_split]
      simp only [reconstructionQ_head_entry, reconstructionQ_overlap,
        Matrix.mul_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
        Finset.mem_univ, ite_true]
    _ = _ := by rw [Matrix.mul_assoc]

/-- On the 24-bit reconstruction grid the retained columns are multiplied by
2^24. The two middle integer factors each contribute their 12-bit scale. -/
theorem numerator_projection {ι : Type*} (C : Matrix ι Trial ℚ) :
    C * ((2 : ℚ)^24 • reconstructionQ) =
      (2 : ℚ)^24 • C.submatrix id headSlot +
        (C.submatrix id overlapSlot * leftNumerator.map (fun z : ℤ => (z : ℚ))) *
          rightNumerator.map (fun z : ℤ => (z : ℚ)) := by
  have hL : leftNumerator.map (fun z : ℤ => (z : ℚ)) = (2 : ℚ)^12 • leftFactor := by
    ext i k
    change (leftWord i k : ℚ) = (2 : ℚ)^12 *
      ((leftWord i k : ℚ) / reconstructionScale)
    norm_num [reconstructionScale, RadiusTwoSchurPaidReconstruction.reconstructionBits]
    ring
  have hR : rightNumerator.map (fun z : ℤ => (z : ℚ)) = (2 : ℚ)^12 • rightFactor := by
    ext k j
    change (rightWord k j : ℚ) = (2 : ℚ)^12 *
      ((rightWord k j : ℚ) / reconstructionScale)
    norm_num [reconstructionScale, RadiusTwoSchurPaidReconstruction.reconstructionBits]
    ring
  rw [hL, hR, Matrix.mul_smul, projection, smul_add]
  simp only [Matrix.mul_smul, Matrix.smul_mul, smul_smul]
  norm_num

/-- A concrete cancellation boundary for absolute-radius factorization. -/
theorem absolute_cancellation :
    |(1 : ℚ) * 1 + 1 * (-1)| < |(1 : ℚ)| * |1| + |1| * |-1| := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRankFourProjection
