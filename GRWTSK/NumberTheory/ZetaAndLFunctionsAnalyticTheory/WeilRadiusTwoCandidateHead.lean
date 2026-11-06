/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateEntries
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDL

/-!
# Finite sign consumer for the radius-two retained head

The symmetric interval hull permits different outward endpoints for the
same two orientations. Its rational midpoints and radii give a diagonal
allowance from the maximum radius row sum. A checked dyadic LDL
minorant of the paid midpoint matrix then proves the literal head sign,
including its signed pole column and scalar corner. Independent
mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateHead

open Matrix RadiusTwoCandidateEntries OddInclusionWindow OddSchurAccounting
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.LinearAlgebra.SchurObserver

/-- Symmetric hull of the certified endpoints in the two orientations. -/
def headBoundsHull (bits : ℕ) (t : ScalarTables) (i j : Head) : Bounds :=
  let a := headBoundsFrom bits t i j
  let b := headBoundsFrom bits t j i
  (min a.1 b.1, max a.2 b.2)

theorem headBoundsHull_symmetric (bits : ℕ) (t : ScalarTables) (i j : Head) :
    headBoundsHull bits t i j = headBoundsHull bits t j i := by
  simp only [headBoundsHull, min_comm, max_comm]

theorem headBoundsHull_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound) (i j : Head) :
    Encloses (headBoundsHull bits t i j)
      (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2) i j) := by
  obtain ⟨hLo, hHi⟩ := headBoundsFrom_sound bits ht (by decide : 64 ≤ 512) i j
  simp only [headBoundsHull, Encloses, Rat.cast_min, Rat.cast_max]
  exact ⟨(min_le_left _ _).trans hLo, hHi.trans (le_max_left _ _)⟩

def headCenters (bits : ℕ) (t : ScalarTables) : Matrix Head Head ℚ :=
  fun i j => ((headBoundsHull bits t i j).1 + (headBoundsHull bits t i j).2) / 2

def headRadii (bits : ℕ) (t : ScalarTables) : Matrix Head Head ℚ :=
  fun i j => ((headBoundsHull bits t i j).2 - (headBoundsHull bits t i j).1) / 2

theorem headRadii_symmetric (bits : ℕ) (t : ScalarTables) (i j : Head) :
    headRadii bits t i j = headRadii bits t j i := by
  unfold headRadii
  rw [headBoundsHull_symmetric bits t i j]

theorem headEntryAbs_le (bits : ℕ) {t : ScalarTables} (ht : t.Sound) (i j : Head) :
    |shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2) i j -
        (headCenters bits t i j : ℝ)| ≤ (headRadii bits t i j : ℝ) := by
  obtain ⟨hLo, hHi⟩ := headBoundsHull_sound bits ht i j
  rw [abs_le]
  push_cast [headCenters, headRadii]
  exact ⟨by linarith only [hLo], by linarith only [hHi]⟩

/-- The rational midpoint matrix after the diagonal price for source radii. -/
def headPaidMatrix (bits : ℕ) (t : ScalarTables) (sourceMargin : ℚ) : Matrix Head Head ℚ :=
  headCenters bits t - sourceMargin • 1

/-- Pay both the outward source observation and the dyadic comparison, then
return the sign to the actual radius-two shifted bordered head. -/
theorem quadratic_head_nonneg_of_dyadicLDL (bits targetBits : ℕ)
    {t : ScalarTables} (ht : t.Sound) (sourceMargin comparisonMargin : ℚ)
    (target factor : Matrix Head Head ℤ) (pivots : Head → ℤ)
    (hRow : ∀ i, ∑ j, headRadii bits t i j ≤ sourceMargin)
    (hLDL : check target factor pivots = true)
    (hMinorant : checkMinorant (headPaidMatrix bits t sourceMargin)
      (targetValue targetBits target) comparisonMargin = true) (v : Head → ℝ) :
    0 ≤ quadratic (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2)) v := by
  let paid := (headPaidMatrix bits t sourceMargin).map (Rat.castHom ℝ)
  let radius := (headRadii bits t).map (Rat.castHom ℝ)
  have hPaid : ∀ w, 0 ≤ quadratic paid w := by
    obtain ⟨hEntry, hSymm, hSum⟩ := checkMinorant_sound hMinorant
    exact fun w => quadratic_nonneg_of_minorant _ _ _ _ hEntry hSymm hSum
      (check_quadratic_nonneg targetBits hLDL) w
  have hCast : paid = (headCenters bits t).map (Rat.castHom ℝ) - (sourceMargin : ℝ) • 1 := by
    ext i j
    by_cases hij : i = j <;> simp [paid, headPaidMatrix, hij]
  refine quadratic_nonneg_of_minorant _ paid radius (sourceMargin : ℝ) ?_ ?_ ?_ hPaid v
  · intro i j
    rw [hCast]
    simp only [Matrix.sub_apply, sub_sub_sub_cancel_right]
    exact headEntryAbs_le bits ht i j
  · intro i j
    exact congrArg (fun q : ℚ => (q : ℝ)) (headRadii_symmetric bits t i j)
  · intro i
    change ∑ j, (headRadii bits t i j : ℝ) ≤ (sourceMargin : ℝ)
    exact_mod_cast hRow i

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateHead
