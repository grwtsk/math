/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurCompactReplay
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedWords

/-!
# Balanced radix folds and packed compact Schur tapes

A block has `2^d` positions at radix `B = 2^(64*17)`. Its
quotient and remainder at `B^(2^(d-1))` split the positions at the
midpoint. Dividing the quotient by another radix power shifts the
original index by the midpoint. For a low position, reduction modulo
the split power preserves the digit because that power is a multiple
of the digit's place times the radix. These two identities and the
adjacent finite sum identity compare the balanced evaluator with
direct positional extraction.

Assembly recovers all original digits when each fits below `B`.
The bound prevents carry into an adjacent position. An oversized low
digit equal to `B` would instead produce zero at its own position
and add one to the next. At depth zero there is one record, reduced
modulo `B`. Bits above a block's last position do not enter its fold.

An archive joins blocks with exact lengths and adjacent offsets. Its
recurrence anchor and price cap are projections of the same word. The
two folded totals can be checked once per block and combined. Concrete
record bytes, the correctness of a recurrence, and the size of its
price remain separate inputs. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay.PackedRadixFold

open scoped BigOperators

/-- The radix of a single compact record. -/
def radix : ℕ := 2^PackedWords.recordBits

/-- Positional extraction of a record from a little-endian packed word. -/
def readRecord (word index : ℕ) : ℕ := word / radix^index % radix

/-- Repeated squaring computes the place of the first word after a block. -/
def blockPower : ℕ → ℕ
  | 0 => radix
  | d + 1 => let p := blockPower d; p * p

theorem blockPower_eq (d : ℕ) : blockPower d = radix^(2^d) := by
  induction d with
  | zero => simp [blockPower]
  | succ d ih =>
    simp only [blockPower, ih, pow_succ]
    rw [show (2 : ℕ)^d * 2 = 2^d + 2^d by omega, pow_add]

/-- Join two words at the width of the low block. -/
def joinWords (depth low high : ℕ) : ℕ :=
  low + (high <<< (PackedWords.recordBits * 2^depth))

theorem joinWords_eq (depth low high : ℕ) :
    joinWords depth low high = low + blockPower depth * high := by
  unfold joinWords
  rw [Nat.shiftLeft_eq, blockPower_eq, radix, ← pow_mul, Nat.mul_comm high]

/-- A low block that fits its width carries no bits into the high block. -/
theorem joinWords_split (depth low high : ℕ) (hLow : low < blockPower depth) :
    (joinWords depth low high % blockPower depth,
     joinWords depth low high / blockPower depth) = (low, high) := by
  have hPos : 0 < blockPower depth := by rw [blockPower_eq]; unfold radix; positivity
  rw [joinWords_eq, Nat.add_mul_mod_self_left, Nat.add_mul_div_left _ _ hPos,
    Nat.mod_eq_of_lt hLow, Nat.div_eq_of_lt hLow, Nat.zero_add]

/-- Extract the same record by an executable bit shift. -/
def fastRead (word index : ℕ) : ℕ := (word >>> (PackedWords.recordBits * index)) % radix

theorem fastRead_eq (word index : ℕ) : fastRead word index = readRecord word index := by
  simp only [fastRead, readRecord, Nat.shiftRight_eq_div_pow, radix, pow_mul]

private theorem read_low (word half j : ℕ) (hj : j < half) :
    readRecord (word % radix^half) j = readRecord word j := by
  have hDiv : radix^j * radix ∣ radix^half := by
    refine ⟨radix^(half - j - 1), ?_⟩
    rw [← Nat.pow_succ, ← Nat.pow_add]
    congr 1
    omega
  unfold readRecord
  calc
    _ = (word % radix^half) % (radix^j * radix) / radix^j :=
      (Nat.mod_mul_right_div_self _ _ _).symm
    _ = (word % (radix^j * radix)) / radix^j := by rw [Nat.mod_mod_of_dvd _ hDiv]
    _ = _ := Nat.mod_mul_right_div_self _ _ _

private theorem read_high (word half j : ℕ) :
    readRecord (word / radix^half) j = readRecord word (half + j) := by
  simp only [readRecord, Nat.div_div_eq_div_mul, ← Nat.pow_add]

/-- Add the two natural weights of each record using balanced radix splits. -/
def fold (weight : ℕ → ℕ → ℕ × ℕ) : ℕ → ℕ → ℕ → ℕ × ℕ
  | 0, offset, word => weight offset (word % radix)
  | d + 1, offset, word =>
    let p := blockPower d
    let low := fold weight d offset (word % p)
    let high := fold weight d (offset + 2^d) (word / p)
    (low.1 + high.1, low.2 + high.2)

private theorem sum_split (f : ℕ → ℕ → ℕ) (half offset word : ℕ) :
    (∑ j ∈ Finset.range half, f (offset + j) (readRecord (word % radix^half) j)) +
    (∑ j ∈ Finset.range half, f (offset + half + j) (readRecord (word / radix^half) j)) =
      ∑ j ∈ Finset.range (half + half), f (offset + j) (readRecord word j) := by
  rw [Finset.sum_range_add]
  congr 1
  · exact Finset.sum_congr rfl (fun j hj => by rw [read_low _ _ _ (Finset.mem_range.mp hj)])
  · exact Finset.sum_congr rfl (fun j _ => by rw [read_high, Nat.add_assoc])

/-- Balanced evaluation gives the two direct sums at the original record positions. -/
theorem fold_eq (weight : ℕ → ℕ → ℕ × ℕ) (d offset word : ℕ) :
    fold weight d offset word =
      (∑ j ∈ Finset.range (2^d), (weight (offset + j) (readRecord word j)).1,
       ∑ j ∈ Finset.range (2^d), (weight (offset + j) (readRecord word j)).2) := by
  induction d generalizing offset word with
  | zero => simp [fold, readRecord]
  | succ d ih =>
    simp only [fold, blockPower_eq, ih, pow_succ]
    rw [show (2 : ℕ)^d * 2 = 2^d + 2^d by omega]
    exact Prod.ext (sum_split (fun i w => (weight i w).1) (2^d) offset word)
      (sum_split (fun i w => (weight i w).2) (2^d) offset word)

/-- Pack consecutive record words by joining adjacent halves. -/
def assemble (digit : ℕ → ℕ) : ℕ → ℕ → ℕ
  | 0, start => digit start
  | d + 1, start => joinWords d (assemble digit d start) (assemble digit d (start + 2^d))

private theorem splitBounds (digit : ℕ → ℕ) (d start : ℕ)
    (hBound : ∀ k < 2^(d+1), digit (start + k) < radix) :
    (∀ k < 2^d, digit (start + k) < radix) ∧
      (∀ k < 2^d, digit (start + 2^d + k) < radix) := by
  simp only [pow_succ] at hBound
  exact ⟨fun k hk => hBound k (by omega), fun k hk => by
    simpa only [Nat.add_assoc] using hBound (2^d + k) (by omega)⟩

theorem assemble_lt (digit : ℕ → ℕ) (d start : ℕ)
    (hBound : ∀ k < 2^d, digit (start + k) < radix) :
    assemble digit d start < blockPower d := by
  induction d generalizing start with
  | zero => simpa only [assemble, blockPower, pow_zero, Nat.add_zero] using hBound 0 (by simp)
  | succ d ih =>
    obtain ⟨hLow, hHigh⟩ := splitBounds digit d start hBound
    let low := assemble digit d start
    let high := assemble digit d (start + 2^d)
    let p := blockPower d
    have hL : low < p := ih start hLow
    have hH : high < p := ih (start + 2^d) hHigh
    change joinWords d low high < p * p
    rw [joinWords_eq]
    change low + p * high < p * p
    calc
      _ < p + p * high := Nat.add_lt_add_right hL _
      _ = p * (high + 1) := by rw [Nat.mul_add, Nat.mul_one, Nat.add_comm]
      _ ≤ p * p := Nat.mul_le_mul_left _ (by omega)

/-- Every positional digit of a bounded assembly is the original record word. -/
theorem read_assemble (digit : ℕ → ℕ) (d start j : ℕ)
    (hj : j < 2^d) (hBound : ∀ k < 2^d, digit (start + k) < radix) :
    readRecord (assemble digit d start) j = digit (start + j) := by
  induction d generalizing start j with
  | zero =>
    have h : j = 0 := by simp only [pow_zero] at hj; omega
    subst j
    simpa only [assemble, readRecord, pow_zero, Nat.div_one, Nat.add_zero] using
      Nat.mod_eq_of_lt (hBound 0 (by simp))
  | succ d ih =>
    obtain ⟨hLow, hHigh⟩ := splitBounds digit d start hBound
    let low := assemble digit d start
    let high := assemble digit d (start + 2^d)
    let word := joinWords d low high
    have hSplit := joinWords_split d low high (assemble_lt digit d start hLow)
    change readRecord word j = _
    by_cases h : j < 2^d
    · calc
        _ = readRecord (word % blockPower d) j := by rw [blockPower_eq, read_low _ _ _ h]
        _ = readRecord low j := congrArg (fun w => readRecord w j) (congrArg Prod.fst hSplit)
        _ = _ := ih start j h hLow
    · let k := j - 2^d
      have hIndex : 2^d + k = j := by dsimp [k]; omega
      have hk : k < 2^d := by rw [pow_succ, ← hIndex] at hj; omega
      calc
        _ = readRecord (word / blockPower d) k := by rw [blockPower_eq, read_high, hIndex]
        _ = readRecord high k := congrArg (fun w => readRecord w k) (congrArg Prod.snd hSplit)
        _ = digit (start + 2^d + k) := ih (start + 2^d) k hk hHigh
        _ = _ := by rw [Nat.add_assoc, hIndex]

/-- Packed blocks joined at their exact offsets and lengths. -/
inductive Archive : ℕ → ℕ → Type
  | ofWord (d offset word : ℕ) : Archive offset (2^d)
  | join {offset lo hi : ℕ}
      (left : Archive offset lo) (right : Archive (offset + lo) hi) : Archive offset (lo + hi)

/-- Read the word at a local index of a contiguous archive. -/
def Archive.record {offset len : ℕ} : Archive offset len → ℕ → ℕ
  | .ofWord _ _ word, j => fastRead word j
  | @Archive.join _ lo _ left right, j =>
    if j < lo then left.record j else right.record (j - lo)

/-- Evaluate the two sums across the archive without constructing one large word. -/
def Archive.totals (weight : ℕ → ℕ → ℕ × ℕ) {offset len : ℕ} :
    Archive offset len → ℕ × ℕ
  | .ofWord d offset word => fold weight d offset word
  | .join left right =>
    let low := Archive.totals weight left
    let high := Archive.totals weight right
    (low.1 + high.1, low.2 + high.2)

private theorem archive_sum_join (f : ℕ → ℕ → ℕ)
    (offset lo hi : ℕ) (left right : ℕ → ℕ) :
    (∑ j ∈ Finset.range lo, f (offset + j) (left j)) +
    (∑ j ∈ Finset.range hi, f (offset + lo + j) (right j)) =
      ∑ j ∈ Finset.range (lo + hi), f (offset + j) (if j < lo then left j else right (j - lo)) := by
  rw [Finset.sum_range_add]
  congr 1
  · exact Finset.sum_congr rfl (fun j hj => by rw [ite_eq_left (Finset.mem_range.mp hj)])
  · exact Finset.sum_congr rfl (fun j _ => by
      rw [ite_eq_right (by omega), Nat.add_sub_cancel_left, Nat.add_assoc])

/-- The archive evaluator sums exactly the words seen by its positional reader. -/
theorem Archive.totals_eq (weight : ℕ → ℕ → ℕ × ℕ) {offset len : ℕ}
    (archive : Archive offset len) :
    Archive.totals weight archive =
      (∑ j ∈ Finset.range len, (weight (offset + j) (archive.record j)).1,
       ∑ j ∈ Finset.range len, (weight (offset + j) (archive.record j)).2) := by
  induction archive with
  | ofWord d offset word =>
    simpa only [Archive.totals, Archive.record, fastRead_eq] using fold_eq weight d offset word
  | @join offset lo hi left right hLeft hRight =>
    simp only [Archive.totals, Archive.record, hLeft, hRight]
    exact Prod.ext (archive_sum_join (fun i w => (weight i w).1) offset lo hi left.record right.record)
      (archive_sum_join (fun i w => (weight i w).2) offset lo hi left.record right.record)

/-- A checked pair of totals can be reused without reevaluating its radix words. -/
structure CertifiedArchive (weight : ℕ → ℕ → ℕ × ℕ) (offset len : ℕ) where
  archive : Archive offset len
  totals : ℕ × ℕ
  checked : Archive.totals weight archive = totals

/-- Add two checked summaries with adjacent source ranges. -/
def CertifiedArchive.join {weight : ℕ → ℕ → ℕ × ℕ} {offset lo hi : ℕ}
    (left : CertifiedArchive weight offset lo) (right : CertifiedArchive weight (offset + lo) hi) :
    CertifiedArchive weight offset (lo + hi) where
  archive := .join left.archive right.archive
  totals := (left.totals.1 + right.totals.1, left.totals.2 + right.totals.2)
  checked := by simp only [Archive.totals, left.checked, right.checked]

/-- Decode the recurrence anchor and the price caps from the same record word. -/
def Archive.tape {N : ℕ} (archive : Archive 0 N) (node : Fin N → ℤ) : Tape 2 N where
  node := node
  anchor i := PackedWords.row (archive.record i.val)
  caps i := PackedWords.caps (archive.record i.val)

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay.PackedRadixFold
