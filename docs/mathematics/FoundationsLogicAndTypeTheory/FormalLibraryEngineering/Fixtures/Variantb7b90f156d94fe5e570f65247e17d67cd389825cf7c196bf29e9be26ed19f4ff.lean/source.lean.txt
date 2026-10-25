import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import Mathlib.Tactic.NormNum

/-!
# Exact positive, boundary, and sign-loss fixtures

All examples use exact arithmetic. They distinguish coordinate compatibility,
ordered-minor positivity, positive Gram energy, and information lost by squaring.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

/-- The positive chart with matrix rows (1,0,-1,-2) and (0,1,1,1). -/
def positiveFixture24 : Chart24 := ⟨1, 1, 1, 2⟩

theorem positiveFixture24_coordinates :
    positiveFixture24.coordinates = ⟨1, 1, 1, 1, 2, 1⟩ := by
  rw [Chart24.coordinates_eq]
  norm_num [positiveFixture24]

theorem positiveFixture24_positive : positiveFixture24.Positive := by
  norm_num [Chart24.Positive, positiveFixture24]

theorem positiveFixture24_ordered_minors :
    AllOrderedMinorsPos positiveFixture24.matrix := by
  apply PluckerCoordinates24.allOrderedMinorsPos_of_strictlyPositive
  exact (Chart24.coordinates_strictlyPositive_iff _).mpr positiveFixture24_positive

theorem positiveFixture24_pivot : columnMinor positiveFixture24.matrix ![0, 1] = 1 :=
  Chart24.pivot_eq_one _

/-- A nonnegative boundary chart with a zero (3,4) minor and a nonzero pivot. -/
def boundaryFixture24 : Chart24 := ⟨1, 1, 1, 1⟩

theorem boundaryFixture24_coordinates :
    boundaryFixture24.coordinates = ⟨1, 1, 1, 1, 1, 0⟩ := by
  rw [Chart24.coordinates_eq]
  norm_num [boundaryFixture24]

theorem boundaryFixture24_ordered_minors :
    AllOrderedMinorsNonneg boundaryFixture24.matrix := by
  apply PluckerCoordinates24.allOrderedMinorsNonneg_of_nonnegative
  change boundaryFixture24.coordinates.Nonnegative
  rw [boundaryFixture24_coordinates]
  norm_num [PluckerCoordinates24.Nonnegative]

theorem boundaryFixture24_not_positive : ¬ boundaryFixture24.Positive := by
  norm_num [Chart24.Positive, boundaryFixture24]

theorem boundaryFixture24_pivot : columnMinor boundaryFixture24.matrix ![0, 1] = 1 :=
  Chart24.pivot_eq_one _

/-- Positive numbers alone need not satisfy the Pluecker relation. -/
def incompatibleOnes24 : PluckerCoordinates24 := ⟨1, 1, 1, 1, 1, 1⟩

theorem incompatibleOnes24_positive : incompatibleOnes24.StrictlyPositive := by
  norm_num [PluckerCoordinates24.StrictlyPositive, incompatibleOnes24]

theorem incompatibleOnes24_not_compatible : ¬ incompatibleOnes24.Compatible := by
  norm_num [PluckerCoordinates24.Compatible, incompatibleOnes24]

/-- No real matrix has all six of these claimed maximal minors. -/
theorem incompatibleOnes24_not_matrix :
    ¬ ∃ A : Matrix (Fin 2) (Fin 4) ℝ,
      PluckerCoordinates24.ofMatrix A = incompatibleOnes24 := by
  rintro ⟨A, hA⟩
  have h := PluckerCoordinates24.ofMatrix_compatible A
  rw [hA] at h
  exact incompatibleOnes24_not_compatible h

/-- Two rank-one rows with different signs but the same squared coordinates. -/
def positiveRow : Fin 2 → ℝ := ![1, 1]

/-- The row (1,-1), whose two entries have opposite signs. -/
def mixedSignRow : Fin 2 → ℝ := ![1, -1]

theorem rows_same_squares (i : Fin 2) : positiveRow i ^ 2 = mixedSignRow i ^ 2 := by
  fin_cases i <;> norm_num [positiveRow, mixedSignRow]

/-- They are not proportional even if an arbitrary real scalar is allowed. -/
theorem rows_not_proportional :
    ¬ ∃ t : ℝ, ∀ i : Fin 2, mixedSignRow i = t * positiveRow i := by
  rintro ⟨t, ht⟩
  have h0 := ht 0
  have h1 := ht 1
  norm_num [positiveRow, mixedSignRow] at h0 h1
  linarith

/-- Positive Gram energy does not imply equal signs of the rank-one minors. -/
theorem mixedSignRow_positive_gram_and_mixed_signs :
    0 < mixedSignRow 0 ^ 2 + mixedSignRow 1 ^ 2 ∧
      0 < mixedSignRow 0 ∧ mixedSignRow 1 < 0 := by
  norm_num [mixedSignRow]

end

end FormalResearch.PositiveAtlas.Grassmannian
