# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variante7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33a2e4558232bbdcd139e43c5d2114bf5eb8e860` · SHA-256 `e7cd97ab9cac381f89f545aa81a208c60c3b3c7f029b497191e5b3c9f976cb47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface.Legacy

abbrev Matrix (α β γ : Type) := α -> β -> γ

structure BinaryLogicMatrix (rows cols : Nat) where
  cell : Fin rows -> Fin cols -> Bool

namespace BinaryLogicMatrix

@[ext]
theorem ext {A B : BinaryLogicMatrix rows cols}
    (h : ∀ i j, A.cell i j = B.cell i j) : A = B := by
  cases A with
  | mk ac =>
    cases B with
    | mk bc =>
      have hcell : ac = bc := by
        funext i j
        exact h i j
      simp [hcell]

theorem blm_ext {A B : BinaryLogicMatrix rows cols}
    (h : ∀ i j, A.cell i j = B.cell i j) : A = B := by
  apply ext
  intro i j
  exact h i j

def get (M : BinaryLogicMatrix rows cols) (i : Fin rows) (j : Fin cols) : Bool :=
  M.cell i j

def zero (rows cols : Nat) : BinaryLogicMatrix rows cols where
  cell := fun _ _ => false

def identity (n : Nat) : BinaryLogicMatrix n n where
  cell := fun i j => decide (i = j)

def set (M : BinaryLogicMatrix rows cols) (i : Fin rows) (j : Fin cols) (value : Bool) :
    BinaryLogicMatrix rows cols where
  cell := fun r c =>
    if r = i then
      if c = j then value else M.cell r c
    else
      M.cell r c

def transpose (M : BinaryLogicMatrix rows cols) : BinaryLogicMatrix cols rows where
  cell := fun i j => M.cell j i

def xorAdd (A B : BinaryLogicMatrix rows cols) : BinaryLogicMatrix rows cols where
  cell := fun i j => Bool.xor (A.cell i j) (B.cell i j)

def boolAnd (A B : BinaryLogicMatrix rows cols) : BinaryLogicMatrix rows cols where
  cell := fun i j => A.cell i j && B.cell i j

def boolOr (A B : BinaryLogicMatrix rows cols) : BinaryLogicMatrix rows cols where
  cell := fun i j => A.cell i j || B.cell i j

def boolNot (A : BinaryLogicMatrix rows cols) : BinaryLogicMatrix rows cols where
  cell := fun i j => !(A.cell i j)

def pointwiseEq (A B : BinaryLogicMatrix rows cols) : Prop :=
  ∀ i j, A.cell i j = B.cell i j

def pointwiseComparison (A B : BinaryLogicMatrix rows cols) : BinaryLogicMatrix rows cols where
  cell := fun i j => decide (A.cell i j ≠ B.cell i j)

def rowMajorBits (M : BinaryLogicMatrix rows cols) : List Bool :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).map fun j => M.cell i j

def finiteSupport (M : BinaryLogicMatrix rows cols) : List (Fin rows × Fin cols) :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).filterMap fun j =>
      if M.cell i j then some (i, j) else none

def countTrue (M : BinaryLogicMatrix rows cols) : Nat :=
  (rowMajorBits M).filter (fun b => b = true) |>.length

def fromBoolList (rows cols : Nat) (bits : List Bool) : BinaryLogicMatrix rows cols where
  cell := fun i j => bits.getD (i.val * cols + j.val) false

def relComp (A : BinaryLogicMatrix rows mid) (B : BinaryLogicMatrix mid cols) :
    BinaryLogicMatrix rows cols where
  cell := fun i k =>
    decide (∃ j : Fin mid, A.cell i j = true ∧ B.cell j k = true)

def gf2Mul (A : BinaryLogicMatrix rows mid) (B : BinaryLogicMatrix mid cols) :
    BinaryLogicMatrix rows cols :=
  relComp A B

@[simp]
theorem get_zero (i : Fin rows) (j : Fin cols) :
    get (zero rows cols) i j = false := by
  rfl

@[simp]
theorem get_transpose (M : BinaryLogicMatrix rows cols) (i : Fin cols) (j : Fin rows) :
    get (transpose M) i j = get M j i := by
  rfl

@[simp]
theorem get_set_same (M : BinaryLogicMatrix rows cols) (i : Fin rows) (j : Fin cols)
    (value : Bool) :
    get (set M i j value) i j = value := by
  simp [get, set]

theorem countTrue_nonneg (M : BinaryLogicMatrix rows cols) :
    0 <= countTrue M := by
  exact Nat.zero_le _

theorem countTrue_zero :
    countTrue (zero rows cols) = 0 := by
  simp [countTrue, rowMajorBits, zero]

theorem transpose_transpose (A : BinaryLogicMatrix rows cols) :
    transpose (transpose A) = A := by
  apply ext
  intro i j
  rfl

theorem boolOr_comm (A B : BinaryLogicMatrix rows cols) :
    boolOr A B = boolOr B A := by
  apply ext
  intro i j
  cases hA : A.cell i j <;> cases hB : B.cell i j <;>
    simp [boolOr, hA, hB]

theorem boolAnd_comm (A B : BinaryLogicMatrix rows cols) :
    boolAnd A B = boolAnd B A := by
  apply ext
  intro i j
  cases hA : A.cell i j <;> cases hB : B.cell i j <;>
    simp [boolAnd, hA, hB]

theorem xorAdd_comm (A B : BinaryLogicMatrix rows cols) :
    xorAdd A B = xorAdd B A := by
  apply ext
  intro i j
  cases hA : A.cell i j <;> cases hB : B.cell i j <;>
    simp [xorAdd, hA, hB]

theorem rowMajor_length (M : BinaryLogicMatrix rows cols) :
    (rowMajorBits M).length = (rowMajorBits M).length := by
  rfl

end BinaryLogicMatrix

end Surface.Legacy
```
