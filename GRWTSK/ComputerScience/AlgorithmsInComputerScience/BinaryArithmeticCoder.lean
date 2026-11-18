/-
Local attribution: grwtsk contributors.

The split and tag update use the integer interval convention of Witten, Neal,
and Cleary, "Arithmetic Coding for Data Compression", CACM 30(6), June 1987,
Figure 3, pp. 525–527 (https://doi.org/10.1145/214762.214771). Here `upper`
is exclusive and equals the successor of the paper's inclusive `high`.
The bounded reference frame uses a symbol count and the final lower endpoint.
-/
import Lean

set_option autoImplicit false

namespace GRWTSK.ComputerScience.BinaryArithmeticCoder

/-- The first cumulative boundary for weights `f0`, `f1`, with `false` first. -/
def split (lower upper f0 f1 : Nat) : Nat :=
  lower + ((upper - lower) * f0) / (f0 + f1)

/-- Each child has at least `k` tags when the parent has at least `k` times
the total weight and each symbol has positive weight. -/
theorem split_width_at_least (lower upper f0 f1 k : Nat)
    (hOrder : lower ≤ upper) (hf0 : 0 < f0) (hf1 : 0 < f1)
    (hWidth : k * (f0 + f1) ≤ upper - lower) :
    lower + k ≤ split lower upper f0 f1 ∧ split lower upper f0 f1 + k ≤ upper := by
  let width := upper - lower
  let total := f0 + f1
  have hTotal : 0 < total := by dsimp [total]; omega
  have hUnit : 1 * k ≤ total * k := Nat.mul_le_mul_right k (by omega)
  have hk : k ≤ width := by
    rw [Nat.one_mul, Nat.mul_comm total k] at hUnit
    exact Nat.le_trans hUnit hWidth
  have hWeight0 : width ≤ width * f0 := by
    simpa only [Nat.mul_one] using Nat.mul_le_mul_left width (show 1 ≤ f0 by omega)
  have hWeight1 : width ≤ width * f1 := by
    simpa only [Nat.mul_one] using Nat.mul_le_mul_left width (show 1 ≤ f1 by omega)
  have hLeft : k ≤ width * f0 / total :=
    (Nat.le_div_iff_mul_le hTotal).2 (Nat.le_trans hWidth hWeight0)
  have hPartition : width * f0 + width * f1 = width * total :=
    (Nat.mul_add width f0 f1).symm
  have hReserve : total * (width - k) + k * total = width * total := by
    rw [Nat.mul_comm total (width - k), ← Nat.add_mul, Nat.sub_add_cancel hk]
  have hRight : width * f0 / total ≤ width - k := by
    apply Nat.div_le_of_le_mul
    have hRightProduct : k * total ≤ width * f1 := Nat.le_trans hWidth hWeight1
    omega
  change lower + k ≤ lower + width * f0 / total ∧
    lower + width * f0 / total + k ≤ upper
  have hEndpoints : lower + width = upper := by dsimp [width]; omega
  omega

/-- With enough room for the total weight, the split leaves two nonempty children. -/
theorem split_strict (lower upper f0 f1 : Nat) (hOrder : lower ≤ upper)
    (hf0 : 0 < f0) (hf1 : 0 < f1) (hWidth : f0 + f1 ≤ upper - lower) :
    lower < split lower upper f0 f1 ∧ split lower upper f0 f1 < upper := by
  have h := split_width_at_least lower upper f0 f1 1 hOrder hf0 hf1 (by simpa using hWidth)
  omega

/-- Decode a tag against an already validated binary table and parent interval. -/
def decodeOne (lower upper f0 f1 tag : Nat) : Option Bool :=
  if lower ≤ tag ∧ tag < upper then
    some (decide (split lower upper f0 f1 ≤ tag))
  else none

theorem decodeOne_spec (lower upper f0 f1 tag : Nat) (hLower : lower ≤ tag)
    (hUpper : tag < upper) :
    (decodeOne lower upper f0 f1 tag = some false ↔ tag < split lower upper f0 f1) ∧
    (decodeOne lower upper f0 f1 tag = some true ↔ split lower upper f0 f1 ≤ tag) := by
  simp [decodeOne, hLower, hUpper, Nat.not_le]

theorem decodeOne_outside (lower upper f0 f1 tag : Nat) (h : ¬ (lower ≤ tag ∧ tag < upper)) :
    decodeOne lower upper f0 f1 tag = none := by
  simp [decodeOne, h]

/-- After rebasing a half-range and appending one bit to the tag, the child
has twice its old width and the tag belongs to it exactly when it did before. -/
theorem renormalize_membership (lower upper tag offset half nextBit : Nat)
    (hOffsetLower : offset ≤ lower) (hOrder : lower < upper)
    (hRange : upper ≤ offset + half) (hOffsetTag : offset ≤ tag) (hNextBit : nextBit ≤ 1) :
    let lower' := 2 * (lower - offset)
    let upper' := 2 * (upper - offset)
    let tag' := 2 * (tag - offset) + nextBit
    lower' < upper' ∧ upper' ≤ 2 * half ∧ upper' - lower' = 2 * (upper - lower) ∧
      ((lower ≤ tag ∧ tag < upper) ↔ (lower' ≤ tag' ∧ tag' < upper')) := by
  dsimp only
  omega

/-- A fixed table in which both binary symbols can be encoded. -/
structure Frequencies where
  falseWeight : Nat
  trueWeight : Nat
  falseWeight_pos : 0 < falseWeight
  trueWeight_pos : 0 < trueWeight

/-- The count and canonical tag for one bounded record. -/
structure Frame where
  count : Nat
  tag : Nat

private def child (table : Frequencies) (lower upper : Nat) (bit : Bool) : Nat × Nat :=
  let boundary := split lower upper table.falseWeight table.trueWeight
  if bit then (boundary, upper) else (lower, boundary)

private def refine (table : Frequencies) : List Bool → Nat → Nat → Nat × Nat
  | [], lower, upper => (lower, upper)
  | bit :: bits, lower, upper =>
    let (lo, hi) := child table lower upper bit
    refine table bits lo hi

private def read (table : Frequencies) (tag : Nat) :
    Nat → Nat → Nat → Option (List Bool × Nat)
  | 0, lower, upper =>
    if lower ≤ tag ∧ tag < upper then some ([], lower) else none
  | n + 1, lower, upper => do
    let bit ← decodeOne lower upper table.falseWeight table.trueWeight tag
    let (lo, hi) := child table lower upper bit
    let (bits, finalLower) ← read table tag n lo hi
    return (bit :: bits, finalLower)

private theorem refine_read (table : Frequencies) (bits : List Bool) (lower upper : Nat)
    (hWidth : (table.falseWeight + table.trueWeight) ^ bits.length ≤ upper - lower) :
    let final := refine table bits lower upper
    final.1 < final.2 ∧ ∀ tag, final.1 ≤ tag → tag < final.2 →
      lower ≤ tag ∧ tag < upper ∧ read table tag bits.length lower upper = some (bits, final.1) := by
  induction bits generalizing lower upper with
  | nil =>
    simp only [List.length_nil, Nat.pow_zero] at hWidth
    simp only [refine, List.length_nil]
    refine ⟨by omega, ?_⟩
    intro tag hLower hUpper
    exact ⟨hLower, hUpper, by simp [read, hLower, hUpper]⟩
  | cons bit bits ih =>
    let total := table.falseWeight + table.trueWeight
    let k := total ^ bits.length
    let boundary := split lower upper table.falseWeight table.trueWeight
    have hTotal : 0 < total := Nat.add_pos_left table.falseWeight_pos _
    have hk : 1 ≤ k := Nat.one_le_pow _ _ hTotal
    have hParent : k * total ≤ upper - lower := by
      simpa [k, total, Nat.pow_succ] using hWidth
    have hOrder : lower ≤ upper := by
      have hPositive : 0 < k * total := Nat.mul_pos (by omega) hTotal
      omega
    obtain ⟨hLeft, hRight⟩ := split_width_at_least lower upper table.falseWeight
      table.trueWeight k hOrder table.falseWeight_pos table.trueWeight_pos hParent
    change lower + k ≤ boundary at hLeft
    change boundary + k ≤ upper at hRight
    cases bit with
    | false =>
      obtain ⟨hFinal, hRead⟩ := ih lower boundary (show k ≤ boundary - lower by omega)
      simp only [refine, child, Bool.false_eq_true, ite_false, List.length_cons]
      refine ⟨hFinal, ?_⟩
      intro tag hLo hHi
      obtain ⟨hLower, hTag, hRest⟩ := hRead tag hLo hHi
      have hUpper : tag < upper := by omega
      have hDecode := (decodeOne_spec lower upper table.falseWeight table.trueWeight tag
        hLower hUpper).1.2 hTag
      dsimp [boundary] at hRest
      exact ⟨hLower, hUpper, by simp [read, child, hDecode, hRest]⟩
    | true =>
      obtain ⟨hFinal, hRead⟩ := ih boundary upper (show k ≤ upper - boundary by omega)
      simp only [refine, child, ite_true, List.length_cons]
      refine ⟨hFinal, ?_⟩
      intro tag hLo hHi
      obtain ⟨hTag, hUpper, hRest⟩ := hRead tag hLo hHi
      have hLower : lower ≤ tag := by omega
      have hDecode := (decodeOne_spec lower upper table.falseWeight table.trueWeight tag
        hLower hUpper).2.2 hTag
      dsimp [boundary] at hRest
      exact ⟨hLower, hUpper, by simp [read, child, hDecode, hRest]⟩

/-- Encode a record of at most `budget` symbols in the integer range
`[0, (falseWeight + trueWeight)^budget)`. -/
def encode (table : Frequencies) (budget : Nat) (bits : List Bool) : Option Frame :=
  if bits.length ≤ budget then
    let upper := (table.falseWeight + table.trueWeight) ^ budget
    some ⟨bits.length, (refine table bits 0 upper).1⟩
  else none

/-- Decode exactly the declared count and accept only the final interval's
lower endpoint as its tag. -/
def decode (table : Frequencies) (budget : Nat) (frame : Frame) : Option (List Bool) :=
  if frame.count ≤ budget then do
    let upper := (table.falseWeight + table.trueWeight) ^ budget
    let (bits, finalLower) ← read table frame.tag frame.count 0 upper
    if frame.tag = finalLower then some bits else none
  else none

/-- Every supported finite record is recovered from its bounded frame. -/
theorem decode_encode (table : Frequencies) (budget : Nat) (bits : List Bool)
    (hCount : bits.length ≤ budget) :
    (encode table budget bits).bind (decode table budget) = some bits := by
  let total := table.falseWeight + table.trueWeight
  let upper := total ^ budget
  let tag := (refine table bits 0 upper).1
  have hTotal : 0 < total := Nat.add_pos_left table.falseWeight_pos _
  have hWidth : total ^ bits.length ≤ upper - 0 := by
    simpa only [Nat.sub_zero] using Nat.pow_le_pow_right hTotal hCount
  obtain ⟨hFinal, hRead⟩ := refine_read table bits 0 upper hWidth
  have hDecode := (hRead tag (Nat.le_refl tag) hFinal).2.2
  dsimp [tag, upper, total] at hDecode
  simp [encode, decode, hCount, hDecode]

end GRWTSK.ComputerScience.BinaryArithmeticCoder
