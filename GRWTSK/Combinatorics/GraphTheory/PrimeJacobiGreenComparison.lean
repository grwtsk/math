/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiGreen
import GRWTSK.Combinatorics.GraphTheory.PrimeKnotJacobiArithmetic

/-!
# The prime Green matrix in the original Jacobi coordinates

Parity orders the sites of an even principal section in two classes. The
entries connecting the classes give precisely the lower bidiagonal block
used by the Green formula.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiGreen

open PrimeKnotJacobiArithmetic

/-- Even sites form the left summand and odd sites the right summand. -/
def paritySites (m : ℕ) : Fin m ⊕ Fin m ≃ Fin (2 * m) where
  toFun
    | .inl i => ⟨2 * i.val, by omega⟩
    | .inr i => ⟨2 * i.val + 1, by omega⟩
  invFun k :=
    if k.val % 2 = 0 then .inl ⟨k.val / 2, by omega⟩ else .inr ⟨k.val / 2, by omega⟩
  left_inv := by
    rintro (i | i)
    · simp
    · simp
      apply Fin.ext
      dsimp
      omega
  right_inv := by
    intro k
    dsimp only
    split_ifs <;> apply Fin.ext <;> dsimp <;> omega

private theorem knotWeight_even_odd {m : ℕ} (i j : Fin m) :
    knotWeight (paritySites m (.inl i)) (paritySites m (.inr j)) = lowerBlock bond m i j := by
  change (if Nat.dist (2 * i.val) (2 * j.val + 1) = 1
          then bond (min (2 * i.val) (2 * j.val + 1)) else 0) = _
  unfold lowerBlock
  by_cases hsame : j = i
  · subst j
    have hadj : Nat.dist (2 * i.val) (2 * i.val + 1) = 1 := by unfold Nat.dist; omega
    simp only [hadj, ite_true, min_eq_left (by omega : 2 * i.val ≤ 2 * i.val + 1)]
    by_cases hpos : 0 < i.val
    · have hprev : i ≠ ⟨i.val - 1, Nat.lt_of_le_of_lt (Nat.sub_le _ _) i.isLt⟩ := by
        intro h
        have := congrArg Fin.val h
        dsimp at this
        omega
      simp [hpos, hprev]
    · simp [hpos]
  · by_cases hnext : j.val + 1 = i.val
    · have hadj : Nat.dist (2 * i.val) (2 * j.val + 1) = 1 := by unfold Nat.dist; omega
      have hmin : 2 * j.val + 1 ≤ 2 * i.val := by omega
      have hpos : 0 < i.val := by omega
      have hprev : i.val - 1 = j.val := by omega
      simp [hadj, hsame, hpos, hprev, min_eq_right hmin]
    · have hfar : Nat.dist (2 * i.val) (2 * j.val + 1) ≠ 1 := by unfold Nat.dist; omega
      by_cases hpos : 0 < i.val
      · have hprev : j ≠ ⟨i.val - 1, Nat.lt_of_le_of_lt (Nat.sub_le _ _) i.isLt⟩ := by
          intro h
          have := congrArg Fin.val h
          dsimp at this
          omega
        simp [hfar, hsame, hpos, hprev]
      · simp [hfar, hsame, hpos]

/-- Exact reindexing of the positive-size and empty even principal sections. -/
theorem reindex_jacobiMatrix_by_parity (m : ℕ) :
    (jacobiMatrix (2 * m)).submatrix (paritySites m) (paritySites m) =
      Matrix.fromBlocks 0 (lowerBlock bond m) (lowerBlock bond m).transpose 0 := by
  ext (i | i) (j | j)
  · change (if Nat.dist (2 * i.val) (2 * j.val) = 1 then _ else 0) = 0
    have h : Nat.dist (2 * i.val) (2 * j.val) ≠ 1 := by unfold Nat.dist; omega
    simp [h]
  · exact knotWeight_even_odd i j
  · exact (knotWeight_symmetric _ _).trans (knotWeight_even_odd j i)
  · change (if Nat.dist (2 * i.val + 1) (2 * j.val + 1) = 1 then _ else 0) = 0
    have h : Nat.dist (2 * i.val + 1) (2 * j.val + 1) ≠ 1 := by unfold Nat.dist; omega
    simp [h]

/-- In these coordinates the inverse of the original successive-prime
Jacobi section has precisely the two Green blocks. -/
theorem reindexed_primeJacobi_inverse (m : ℕ) :
    ((jacobiMatrix (2 * m)).submatrix (paritySites m) (paritySites m))⁻¹ =
      Matrix.fromBlocks 0 (greenBlock bond m).transpose (greenBlock bond m) 0 := by
  rw [reindex_jacobiMatrix_by_parity]
  exact evenSection_inverse bond (fun k => (bond_pos (2 * k)).ne') m

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiGreen
