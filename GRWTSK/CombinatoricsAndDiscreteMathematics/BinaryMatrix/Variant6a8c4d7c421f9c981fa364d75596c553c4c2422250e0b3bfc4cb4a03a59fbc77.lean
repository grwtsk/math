import Folder.Carrier.Bit

/-!
# Folder.Carrier.BinaryMatrix

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: bm.binary_matrix
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/


namespace Folder
namespace Carrier

structure BinaryMatrix where
  m : Nat
  n : Nat
  A : Fin m → Fin n → Bit

namespace BinaryMatrix

def ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit) :
    BinaryMatrix where
  m := m
  n := n
  A := A

@[simp]
def rows (M : BinaryMatrix) : Nat :=
  M.m

@[simp]
def cols (M : BinaryMatrix) : Nat :=
  M.n

@[simp]
def get (M : BinaryMatrix) (i : Fin M.m) (j : Fin M.n) : Bit :=
  M.A i j

def constant (m n : Nat) (b : Bit) : BinaryMatrix :=
  ofFunction m n (fun _ _ => b)

def zero (m n : Nat) : BinaryMatrix :=
  constant m n 0

def map (f : Bit → Bit) (M : BinaryMatrix) : BinaryMatrix :=
  ofFunction M.m M.n (fun i j => f (M.get i j))

def zipWith (f : Bit → Bit → Bit) (M N : BinaryMatrix) : BinaryMatrix :=
  ofFunction M.m M.n
    (fun i j =>
      if hi : i.val < N.m then
        if hj : j.val < N.n then
          f (M.get i j) (N.get ⟨i.val, hi⟩ ⟨j.val, hj⟩)
        else
          f (M.get i j) 0
      else
        f (M.get i j) 0)

def complement (M : BinaryMatrix) : BinaryMatrix :=
  map Bit.flip M

def transpose (M : BinaryMatrix) : BinaryMatrix :=
  ofFunction M.n M.m (fun i j => M.get j i)

def cellCount (M : BinaryMatrix) : Nat :=
  M.m * M.n

def IsCheckerboardPattern (M : BinaryMatrix) : Prop :=
  ∀ i j, M.get i j = ((i.val + j.val : Nat) : Bit)

def actualCount (M : BinaryMatrix) (b : Bit) : Nat :=
  (Finset.univ.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = b)).card

def countOnes (M : BinaryMatrix) : Nat :=
  actualCount M 1

def countZeros (M : BinaryMatrix) : Nat :=
  actualCount M 0

theorem bit_eq_zero_or_one (b : Bit) :
    b = 0 ∨ b = 1 := by
  fin_cases b
  · left
    rfl
  · right
    rfl

theorem bit_eq_zero_iff_not_eq_one (b : Bit) :
    b = 0 ↔ ¬ b = 1 := by
  constructor
  · intro h0 h1
    rw [h0] at h1
    norm_num at h1
  · intro h
    rcases bit_eq_zero_or_one b with h0 | h1
    · exact h0
    · exact False.elim (h h1)

theorem countOnes_add_countZeros (M : BinaryMatrix) :
    countOnes M + countZeros M = cellCount M := by
  classical
  unfold countOnes countZeros actualCount cellCount
  let cells : Finset (Fin M.m × Fin M.n) := Finset.univ
  have hnot :
      (cells.filter (fun c : Fin M.m × Fin M.n => ¬ M.get c.1 c.2 = 1)) =
        (cells.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 0)) := by
    apply Finset.filter_congr
    intro c hc
    exact (bit_eq_zero_iff_not_eq_one (M.get c.1 c.2)).symm
  have hsum :
      (cells.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 1)).card +
        (cells.filter (fun c : Fin M.m × Fin M.n => ¬ M.get c.1 c.2 = 1)).card =
          cells.card := by
    simpa [cells] using Finset.card_filter_add_card_filter_not
      (s := cells) (p := fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 1)
  rw [← hnot]
  simpa [cells, Fintype.card_prod, Fintype.card_fin] using hsum

@[simp]
theorem rows_ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit) :
    rows (ofFunction m n A) = m :=
  rfl

@[simp]
theorem cols_ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit) :
    cols (ofFunction m n A) = n :=
  rfl

@[simp]
theorem get_ofFunction
    (m n : Nat)
    (A : Fin m → Fin n → Bit)
    (i : Fin m)
    (j : Fin n) :
    get (ofFunction m n A) i j = A i j :=
  rfl

@[simp]
theorem rows_constant (m n : Nat) (b : Bit) :
    rows (constant m n b) = m :=
  rfl

@[simp]
theorem cols_constant (m n : Nat) (b : Bit) :
    cols (constant m n b) = n :=
  rfl

@[simp]
theorem get_constant (m n : Nat) (b : Bit) (i : Fin m) (j : Fin n) :
    get (constant m n b) i j = b :=
  rfl

@[simp]
theorem rows_zero (m n : Nat) :
    rows (zero m n) = m :=
  rfl

@[simp]
theorem cols_zero (m n : Nat) :
    cols (zero m n) = n :=
  rfl

@[simp]
theorem get_zero (m n : Nat) (i : Fin m) (j : Fin n) :
    get (zero m n) i j = 0 :=
  rfl

@[simp]
theorem rows_map (f : Bit → Bit) (M : BinaryMatrix) :
    rows (map f M) = rows M :=
  rfl

@[simp]
theorem cols_map (f : Bit → Bit) (M : BinaryMatrix) :
    cols (map f M) = cols M :=
  rfl

@[simp]
theorem get_map (f : Bit → Bit) (M : BinaryMatrix)
    (i : Fin M.m) (j : Fin M.n) :
    get (map f M) i j = f (M.get i j) :=
  rfl

@[simp]
theorem rows_zipWith (f : Bit → Bit → Bit) (M N : BinaryMatrix) :
    rows (zipWith f M N) = rows M :=
  rfl

@[simp]
theorem cols_zipWith (f : Bit → Bit → Bit) (M N : BinaryMatrix) :
    cols (zipWith f M N) = cols M :=
  rfl

@[simp]
theorem get_zipWith
    (f : Bit → Bit → Bit)
    (M N : BinaryMatrix)
    (i : Fin M.m)
    (j : Fin M.n) :
    get (zipWith f M N) i j =
      if hi : i.val < N.m then
        if hj : j.val < N.n then
          f (M.get i j) (N.get ⟨i.val, hi⟩ ⟨j.val, hj⟩)
        else
          f (M.get i j) 0
      else
        f (M.get i j) 0 :=
  rfl

@[simp]
theorem rows_transpose (M : BinaryMatrix) :
    rows (transpose M) = cols M :=
  rfl

@[simp]
theorem cols_transpose (M : BinaryMatrix) :
    cols (transpose M) = rows M :=
  rfl

@[simp]
theorem get_transpose (M : BinaryMatrix) (i : Fin M.n) (j : Fin M.m) :
    get (transpose M) i j = M.get j i :=
  rfl

@[simp]
theorem rows_complement (M : BinaryMatrix) :
    rows (complement M) = rows M :=
  rfl

@[simp]
theorem cols_complement (M : BinaryMatrix) :
    cols (complement M) = cols M :=
  rfl

@[simp]
theorem get_complement (M : BinaryMatrix) (i : Fin M.m) (j : Fin M.n) :
    get (complement M) i j = Bit.flip (M.get i j) :=
  rfl

theorem ext_entries
    {m n : Nat}
    {A B : Fin m → Fin n → Bit}
    (h : ∀ i j, A i j = B i j) :
    ofFunction m n A = ofFunction m n B := by
  have hAB : A = B := funext fun i => funext fun j => h i j
  cases hAB
  rfl

theorem ext
    {M N : BinaryMatrix}
    (hm : M.m = N.m)
    (hn : M.n = N.n)
    (h : ∀ i j,
      M.get i j =
        N.get (Fin.cast hm i) (Fin.cast hn j)) :
    M = N := by
  cases M with
  | mk m n A =>
    cases N with
    | mk m' n' B =>
      simp at hm hn
      subst hm
      subst hn
      simp at h
      have hAB : A = B := funext fun i => funext fun j => h i j
      cases hAB
      rfl

end BinaryMatrix
end Carrier
end Folder
