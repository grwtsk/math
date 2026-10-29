import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Exact finite permutation matrices

For a fixed index type, a permutation has a canonical square `0/1` matrix over
`ZMod 2`.  This module provides both the original representation retaining its
semantic generator and a generator-free subtype of matrices satisfying
explicit exactly-one-row and exactly-one-column predicates.  Choice of the
unique `1` in each row reconstructs the permutation, while the column predicate
proves that reconstruction is bijective.  The resulting equivalence is thus an
actual equivalence with a subtype of `Matrix X X (ZMod 2)`, rather than an
equivalence with a record that already stores the permutation.

Retaining the generating permutation is intentional: determinant reduction
modulo two is not used to reconstruct integral permutation parity.
-/

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The `ZMod 2` graph matrix of a finite permutation. -/
def permutationMatrix
    {X : Type u}
    [DecidableEq X]
    (permutation : Equiv.Perm X) :
    Matrix X X (ZMod 2) :=
  fun i j => if permutation i = j then 1 else 0

/-- Every row of `matrix` has exactly one entry equal to `1`. -/
def ExactlyOneInEveryRow
    {X : Type u}
    (matrix : Matrix X X (ZMod 2)) :
    Prop :=
  ∀ i : X, ∃! j : X, matrix i j = 1

/-- Every column of `matrix` has exactly one entry equal to `1`. -/
def ExactlyOneInEveryColumn
    {X : Type u}
    (matrix : Matrix X X (ZMod 2)) :
    Prop :=
  ∀ j : X, ∃! i : X, matrix i j = 1

/-- The intrinsic one-hot predicate used to recognize permutation matrices. -/
def IsOneHotPermutationMatrix
    {X : Type u}
    (matrix : Matrix X X (ZMod 2)) :
    Prop :=
  ExactlyOneInEveryRow matrix ∧ ExactlyOneInEveryColumn matrix

/-- Square matrices whose rows and columns each contain exactly one `1`. -/
abbrev OneHotPermutationMatrix (X : Type u) :=
  {matrix : Matrix X X (ZMod 2) // IsOneHotPermutationMatrix matrix}

/-- A one-hot matrix together with its exact, unique semantic generator. -/
structure ExactPermutationMatrix
    (X : Type u)
    [DecidableEq X] where
  matrix : Matrix X X (ZMod 2)
  permutation : Equiv.Perm X
  matrix_eq : matrix = permutationMatrix permutation

namespace ExactPermutationMatrix

variable {X : Type u} [DecidableEq X]

/-- Extensionality is controlled by the semantic permutation. -/
@[ext]
theorem ext
    {left right : ExactPermutationMatrix X}
    (h : left.permutation = right.permutation) :
    left = right := by
  cases left with
  | mk leftMatrix leftPerm leftEq =>
      cases right with
      | mk rightMatrix rightPerm rightEq =>
          dsimp at h
          subst rightPerm
          subst leftMatrix
          subst rightMatrix
          rfl

/-- Construct the exact one-hot representation of a permutation. -/
def ofPerm (permutation : Equiv.Perm X) :
    ExactPermutationMatrix X where
  matrix := permutationMatrix permutation
  permutation := permutation
  matrix_eq := rfl

@[simp]
theorem ofPerm_matrix
    (permutation : Equiv.Perm X) :
    (ofPerm permutation).matrix = permutationMatrix permutation :=
  rfl

@[simp]
theorem ofPerm_permutation
    (permutation : Equiv.Perm X) :
    (ofPerm permutation).permutation = permutation :=
  rfl

/-- Every row contains exactly one coefficient equal to one. -/
theorem existsUnique_one_in_row
    (representation : ExactPermutationMatrix X)
    (i : X) :
    ∃! j : X, representation.matrix i j = 1 := by
  refine ⟨representation.permutation i, ?_, ?_⟩
  · rw [representation.matrix_eq]
    simp [permutationMatrix]
  · intro j hj
    rw [representation.matrix_eq] at hj
    have hImage : representation.permutation i = j := by
      by_contra hne
      simp [permutationMatrix, hne] at hj
    exact hImage.symm

/-- Every column contains exactly one coefficient equal to one. -/
theorem existsUnique_one_in_column
    (representation : ExactPermutationMatrix X)
    (j : X) :
    ∃! i : X, representation.matrix i j = 1 := by
  refine ⟨representation.permutation.symm j, ?_, ?_⟩
  · rw [representation.matrix_eq]
    simp [permutationMatrix]
  · intro i hi
    rw [representation.matrix_eq] at hi
    have hImage : representation.permutation i = j := by
      by_contra hne
      simp [permutationMatrix, hne] at hi
    exact representation.permutation.injective <| by
      simpa using hImage

/-- Permutations are exactly the retained exact one-hot representations. -/
def permEquivExactPermutationMatrix :
    Equiv.Perm X ≃ ExactPermutationMatrix X where
  toFun := ofPerm
  invFun := ExactPermutationMatrix.permutation
  left_inv := fun _ => rfl
  right_inv := fun representation => by
    apply ext
    rfl

@[simp]
theorem permEquiv_apply
    (permutation : Equiv.Perm X) :
    permEquivExactPermutationMatrix permutation = ofPerm permutation :=
  rfl

@[simp]
theorem permEquiv_symm_apply
    (representation : ExactPermutationMatrix X) :
    permEquivExactPermutationMatrix.symm representation =
      representation.permutation :=
  rfl

end ExactPermutationMatrix

namespace OneHotPermutationMatrix

variable {X : Type u} [DecidableEq X]

/-- The graph matrix of a permutation satisfies the intrinsic row predicate. -/
theorem permutationMatrix_exactlyOneInEveryRow
    (permutation : Equiv.Perm X) :
    ExactlyOneInEveryRow (permutationMatrix permutation) := by
  intro i
  simpa using
    ExactPermutationMatrix.existsUnique_one_in_row
      (ExactPermutationMatrix.ofPerm permutation) i

/-- The graph matrix of a permutation satisfies the intrinsic column predicate. -/
theorem permutationMatrix_exactlyOneInEveryColumn
    (permutation : Equiv.Perm X) :
    ExactlyOneInEveryColumn (permutationMatrix permutation) := by
  intro j
  simpa using
    ExactPermutationMatrix.existsUnique_one_in_column
      (ExactPermutationMatrix.ofPerm permutation) j

/-- Regard a permutation's graph matrix as an intrinsic one-hot matrix. -/
def ofPerm (permutation : Equiv.Perm X) :
    OneHotPermutationMatrix X :=
  ⟨permutationMatrix permutation,
    permutationMatrix_exactlyOneInEveryRow permutation,
    permutationMatrix_exactlyOneInEveryColumn permutation⟩

@[simp]
theorem ofPerm_val
    (permutation : Equiv.Perm X) :
    (ofPerm permutation : Matrix X X (ZMod 2)) =
      permutationMatrix permutation :=
  rfl

/-- The unique output coordinate selected by row `i`. -/
noncomputable def rowIndex
    (representation : OneHotPermutationMatrix X)
    (i : X) :
    X :=
  Classical.choose (representation.property.1 i)

omit [DecidableEq X] in
/-- The selected row coordinate really contains a `1`. -/
theorem rowIndex_spec
    (representation : OneHotPermutationMatrix X)
    (i : X) :
    representation.1 i (rowIndex representation i) = 1 :=
  (Classical.choose_spec (representation.property.1 i)).1

omit [DecidableEq X] in
/-- A `1` in row `i` must occur at its selected coordinate. -/
theorem rowIndex_eq_of_entry_one
    (representation : OneHotPermutationMatrix X)
    {i j : X}
    (hentry : representation.1 i j = 1) :
    rowIndex representation i = j :=
  (representation.property.1 i).unique
    (rowIndex_spec representation i) hentry

/-- The unique input coordinate selected by column `j`. -/
noncomputable def columnIndex
    (representation : OneHotPermutationMatrix X)
    (j : X) :
    X :=
  Classical.choose (representation.property.2 j)

omit [DecidableEq X] in
/-- The selected column coordinate really contains a `1`. -/
theorem columnIndex_spec
    (representation : OneHotPermutationMatrix X)
    (j : X) :
    representation.1 (columnIndex representation j) j = 1 :=
  (Classical.choose_spec (representation.property.2 j)).1

omit [DecidableEq X] in
/-- A `1` in column `j` must occur at its selected coordinate. -/
theorem columnIndex_eq_of_entry_one
    (representation : OneHotPermutationMatrix X)
    {i j : X}
    (hentry : representation.1 i j = 1) :
    columnIndex representation j = i :=
  (representation.property.2 j).unique
    (columnIndex_spec representation j) hentry

/-- Reconstruct the unique permutation encoded by an intrinsic one-hot matrix. -/
noncomputable def toPerm
    (representation : OneHotPermutationMatrix X) :
    Equiv.Perm X where
  toFun := rowIndex representation
  invFun := columnIndex representation
  left_inv := fun i =>
    columnIndex_eq_of_entry_one representation
      (rowIndex_spec representation i)
  right_inv := fun j =>
    rowIndex_eq_of_entry_one representation
      (columnIndex_spec representation j)

omit [DecidableEq X] in
@[simp]
theorem toPerm_apply
    (representation : OneHotPermutationMatrix X)
    (i : X) :
    toPerm representation i = rowIndex representation i :=
  rfl

omit [DecidableEq X] in
@[simp]
theorem toPerm_symm_apply
    (representation : OneHotPermutationMatrix X)
    (j : X) :
    (toPerm representation).symm j = columnIndex representation j :=
  rfl

/-- Every coefficient of `ZMod 2` is either zero or one. -/
private theorem zmodTwo_eq_zero_or_one
    (coefficient : ZMod 2) :
    coefficient = 0 ∨ coefficient = 1 := by
  have hlt : coefficient.val < 2 := ZMod.val_lt coefficient
  have hval : coefficient.val = 0 ∨ coefficient.val = 1 := by
    omega
  rcases hval with hzero | hone
  · exact Or.inl ((ZMod.val_eq_zero coefficient).mp hzero)
  · right
    apply ZMod.val_injective 2
    rw [hone]
    rfl

/-- The matrix reconstructed from the selected rows is the original matrix. -/
theorem matrix_eq_permutationMatrix_toPerm
    (representation : OneHotPermutationMatrix X) :
    representation.1 = permutationMatrix (toPerm representation) := by
  ext i j
  by_cases hselected : toPerm representation i = j
  · have hentry : representation.1 i j = 1 := by
      rw [← hselected]
      exact rowIndex_spec representation i
    simp [permutationMatrix, hselected, hentry]
  · have hnotOne : representation.1 i j ≠ 1 := by
      intro hentry
      exact hselected (rowIndex_eq_of_entry_one representation hentry)
    have hzero : representation.1 i j = 0 :=
      (zmodTwo_eq_zero_or_one (representation.1 i j)).resolve_right hnotOne
    have hrow : rowIndex representation i ≠ j := by
      simpa using hselected
    simp [permutationMatrix, hrow, hzero]

/-- Reconstructing a permutation from its graph matrix returns that permutation. -/
theorem toPerm_ofPerm
    (permutation : Equiv.Perm X) :
    toPerm (ofPerm permutation) = permutation := by
  apply Equiv.ext
  intro i
  exact rowIndex_eq_of_entry_one (ofPerm permutation) (by
    simp [permutationMatrix])

/--
Permutations are exactly square `ZMod 2` matrices satisfying the explicit
one-hot row and column predicates.
-/
noncomputable def permEquivOneHotPermutationMatrix :
    Equiv.Perm X ≃ OneHotPermutationMatrix X where
  toFun := ofPerm
  invFun := toPerm
  left_inv := toPerm_ofPerm
  right_inv := fun representation => by
    apply Subtype.ext
    exact (matrix_eq_permutationMatrix_toPerm representation).symm

@[simp]
theorem permEquivOneHot_apply
    (permutation : Equiv.Perm X) :
    permEquivOneHotPermutationMatrix permutation = ofPerm permutation :=
  rfl

@[simp]
theorem permEquivOneHot_symm_apply
    (representation : OneHotPermutationMatrix X) :
    permEquivOneHotPermutationMatrix.symm representation =
      toPerm representation :=
  rfl

@[simp]
theorem permEquivOneHot_symm_apply_apply
    (permutation : Equiv.Perm X) :
    permEquivOneHotPermutationMatrix.symm
        (permEquivOneHotPermutationMatrix permutation) =
      permutation :=
  Equiv.symm_apply_apply _ _

@[simp]
theorem permEquivOneHot_apply_symm_apply
    (representation : OneHotPermutationMatrix X) :
    permEquivOneHotPermutationMatrix
        (permEquivOneHotPermutationMatrix.symm representation) =
      representation :=
  Equiv.apply_symm_apply _ _

end OneHotPermutationMatrix

end DAF.Integration.WorldModelPrototype
