/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE. Formal checks NOT_RUN.
The reference cut is the exact-width List.splitAt guard in the R07 envelope.
The binary selection refines the half-open split used by CountDriven.
-/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.BinaryArithmeticCoder
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.BinaryArithmeticCoderWord
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.OfFn

set_option autoImplicit false

namespace GRWTSK.ComputerScience.BinaryArithmeticCoder.Packed

/-- A cursor and exclusive limit in the same backing bit coordinate. -/
structure Cursor where
  position : UInt64
  limit : UInt64

/-- Return the bounded prefix and the remainder. Validate before subtracting
or advancing, including when the width is zero. -/
def Cursor.cut (cursor : Cursor) (width : UInt64) : Option (Cursor × Cursor) :=
  if cursor.position ≤ cursor.limit then
    if width ≤ cursor.limit - cursor.position then
      let middle := cursor.position + width
      some (⟨cursor.position, middle⟩, ⟨middle, cursor.limit⟩)
    else none
  else none

def Cursor.view (cursor : Cursor) (bits : List Bool) : List Bool :=
  (bits.take cursor.limit.toNat).drop cursor.position.toNat

theorem Cursor.cut_of_le (cursor : Cursor) (width : UInt64)
    (hOrder : cursor.position.toNat ≤ cursor.limit.toNat)
    (hRoom : width.toNat ≤ cursor.limit.toNat - cursor.position.toNat) :
    cursor.cut width = some (⟨cursor.position, cursor.position + width⟩,
        ⟨cursor.position + width, cursor.limit⟩) ∧
      (cursor.position + width).toNat = cursor.position.toNat + width.toNat := by
  have hWordOrder := UInt64.le_iff_toNat_le.mpr hOrder
  have hWordRoom : width ≤ cursor.limit - cursor.position := by
    apply UInt64.le_iff_toNat_le.mpr
    rwa [UInt64.toNat_sub_of_le _ _ hWordOrder]
  have hLimit : cursor.limit.toNat < 2 ^ 64 := cursor.limit.toNat_lt_size
  have hSum : cursor.position.toNat + width.toNat < 2 ^ 64 := by omega
  exact ⟨by simp only [Cursor.cut, ite_eq_left hWordOrder, ite_eq_left hWordRoom],
    by rw [UInt64.toNat_add, Nat.mod_eq_of_lt hSum]⟩

theorem Cursor.cut_of_short (cursor : Cursor) (width : UInt64)
    (hOrder : cursor.position.toNat ≤ cursor.limit.toNat)
    (hShort : cursor.limit.toNat - cursor.position.toNat < width.toNat) :
    cursor.cut width = none := by
  have hWordOrder := UInt64.le_iff_toNat_le.mpr hOrder
  have hWordShort : ¬ width ≤ cursor.limit - cursor.position := by
    rw [UInt64.le_iff_toNat_le, UInt64.toNat_sub_of_le _ _ hWordOrder]
    exact Nat.not_le_of_lt hShort
  simp only [Cursor.cut, ite_eq_left hWordOrder, ite_eq_right hWordShort]

/-- Observe a successful slice without copying its bits. The short-input
branch agrees with the envelope's exact-length cut. -/
theorem Cursor.cut_refines_splitAt (cursor : Cursor) (width : UInt64) (bits : List Bool)
    (hOrder : cursor.position.toNat ≤ cursor.limit.toNat)
    (hBacking : cursor.limit.toNat ≤ bits.length) :
    (cursor.cut width).map (fun (front, rest) => (front.view bits, rest.view bits)) =
      let (front, rest) := (cursor.view bits).splitAt width.toNat
      if front.length = width.toNat then some (front, rest) else none := by
  have hView : (cursor.view bits).length = cursor.limit.toNat - cursor.position.toNat := by
    simp [Cursor.view, Nat.min_eq_left hBacking]
  by_cases hRoom : width.toNat ≤ cursor.limit.toNat - cursor.position.toNat
  · obtain ⟨hCut, hMiddle⟩ := cursor.cut_of_le width hOrder hRoom
    have hLength : ((cursor.view bits).take width.toNat).length = width.toNat :=
      List.length_take_of_le (by omega)
    have hFront : cursor.position.toNat + width.toNat - cursor.position.toNat = width.toNat :=
      by omega
    simp only [hCut, Option.map_some, List.splitAt_eq]
    rw [ite_eq_left hLength]
    simp only [Cursor.view, hMiddle, List.drop_take, List.take_take, List.drop_drop,
      hFront, Nat.min_eq_left hRoom, Nat.sub_sub]
  · have hShort := Nat.lt_of_not_ge hRoom
    have hCut := cursor.cut_of_short width hOrder hShort
    have hLength : ((cursor.view bits).take width.toNat).length ≠ width.toNat := by
      rw [List.length_take, hView, Nat.min_eq_right (Nat.le_of_lt hShort)]
      exact Nat.ne_of_lt hShort
    simp only [hCut, Option.map_none, List.splitAt_eq, ite_eq_right hLength]

/-- Read one packed bit in MSB-first order from its containing octet. -/
def bitAt (buffer : Array UInt8) (position : Nat) : Option Bool :=
  buffer[position / 8]?.map fun byte => byte.toNat.testBit (7 - position % 8)

/-- The mathematical wire observation, including every bit of the backing octets. -/
def expand (buffer : Array UInt8) : List Bool :=
  List.ofFn fun i : Fin (8 * buffer.size) =>
    have hByte : i.val / 8 < buffer.size := by
      have hIndex := i.isLt
      omega
    (buffer[i.val / 8]'hByte).toNat.testBit (7 - i.val % 8)

theorem length_expand (buffer : Array UInt8) : (expand buffer).length = 8 * buffer.size :=
  List.length_ofFn

theorem bitAt_eq_expand (buffer : Array UInt8) (index : Nat)
    (hIndex : index < 8 * buffer.size) : bitAt buffer index = (expand buffer)[index]? := by
  have hByte : index / 8 < buffer.size := by omega
  simp only [bitAt, getElem?_pos buffer (index / 8) hByte, expand, List.getElem?_ofFn, dite_eq_left hIndex,
    Option.map_some]

def Cursor.readBit (cursor : Cursor) (buffer : Array UInt8) : Option (Bool × Cursor) := do
  let (_, rest) ← cursor.cut 1
  let digit ← bitAt buffer cursor.position.toNat
  pure (digit, rest)

/-- At a valid cursor the bit step consumes the head of the represented list
and leaves exactly its tail. The backing witness supplies octet observation. -/
theorem Cursor.readBit_refines (cursor : Cursor) (buffer : Array UInt8) (bits : List Bool)
    (hOrder : cursor.position.toNat ≤ cursor.limit.toNat)
    (hBacking : cursor.limit.toNat ≤ bits.length)
    (hBit : ∀ index < bits.length, bitAt buffer index = bits[index]?) :
    (cursor.readBit buffer).map (fun (digit, rest) => (digit, rest.view bits)) =
      match cursor.view bits with
      | [] => none
      | digit :: tail => some (digit, tail) := by
  have hView : (cursor.view bits).length = cursor.limit.toNat - cursor.position.toNat := by
    simp [Cursor.view, Nat.min_eq_left hBacking]
  cases hBits : cursor.view bits with
  | nil =>
    have hShort : cursor.limit.toNat - cursor.position.toNat < (1 : UInt64).toNat := by
      rw [← hView, hBits]
      decide
    simp [Cursor.readBit, cursor.cut_of_short 1 hOrder hShort]
  | cons digit tail =>
    have hRoom : (1 : UInt64).toNat ≤ cursor.limit.toNat - cursor.position.toNat := by
      rw [← hView, hBits]
      exact Nat.succ_le_succ (Nat.zero_le _)
    have hPos : cursor.position.toNat < cursor.limit.toNat := by
      change 1 ≤ cursor.limit.toNat - cursor.position.toNat at hRoom
      omega
    obtain ⟨hCut, hMiddle⟩ := cursor.cut_of_le 1 hOrder hRoom
    have hHead : (cursor.view bits).head? = bits[cursor.position.toNat]? := by
      rw [Cursor.view, List.head?_drop, List.getElem?_take_of_lt hPos]
    have hDigit : bitAt buffer cursor.position.toNat = some digit := by
      simp only [hBit _ (Nat.lt_of_lt_of_le hPos hBacking), ← hHead, hBits, List.head?_cons]
    have hTail : (⟨cursor.position + 1, cursor.limit⟩ : Cursor).view bits = tail := by
      have hDrop := congrArg (List.drop 1) hBits
      simpa only [Cursor.view, hMiddle, show (1 : UInt64).toNat = 1 from rfl, List.drop_drop,
        List.drop_succ_cons, List.drop_zero] using hDrop
    simp [Cursor.readBit, hCut, hDigit, hTail]

def split64 (lower upper f0 f1 : UInt64) : UInt64 :=
  lower + ((upper - lower) * f0) / (f0 + f1)

/-- Invoke only after table and tag validation, in that order. -/
def selectsRight64 (lower upper tag f0 f1 : UInt64) : Bool :=
  !decide (scaledCount64 (tag - lower) (upper - lower) (f0 + f1) < f0)

theorem split64_and_select_refine (lower upper tag f0 f1 : UInt64)
    (hLower : lower.toNat ≤ tag.toNat) (hTag : tag.toNat < upper.toNat)
    (hUpper : upper.toNat ≤ 2 ^ 18) (h0 : 0 < f0.toNat) (h1 : 0 < f1.toNat)
    (hFit : f0.toNat + f1.toNat ≤ upper.toNat - lower.toNat) :
    (split64 lower upper f0 f1).toNat = split lower.toNat upper.toNat f0.toNat f1.toNat ∧
      selectsRight64 lower upper tag f0 f1 =
        decide (split lower.toNat upper.toNat f0.toNat f1.toNat ≤ tag.toNat) := by
  have hOrder : lower.toNat ≤ upper.toNat := by omega
  have hWidth := UInt64.toNat_sub_of_le upper lower (UInt64.le_iff_toNat_le.mpr hOrder)
  have hOffset := UInt64.toNat_sub_of_le tag lower (UInt64.le_iff_toNat_le.mpr hLower)
  have hSum : f0.toNat + f1.toNat < 2 ^ 64 := by omega
  have hTotal : (f0 + f1).toNat = f0.toNat + f1.toNat := by
    rw [UInt64.toNat_add, Nat.mod_eq_of_lt hSum]
  have hProduct : (upper.toNat - lower.toNat) * f0.toNat < 2 ^ 64 := by
    have hWidthBound : upper.toNat - lower.toNat ≤ 2 ^ 18 := by omega
    have hFirstBound : f0.toNat ≤ 2 ^ 18 := by omega
    exact Nat.lt_of_le_of_lt (Nat.mul_le_mul hWidthBound hFirstBound) (by decide)
  have hSplit := split_strict lower.toNat upper.toNat f0.toNat f1.toNat hOrder h0 h1 hFit
  have hSplitBound : split lower.toNat upper.toNat f0.toNat f1.toNat < 2 ^ 64 := by omega
  constructor
  · rw [split64, UInt64.toNat_add, UInt64.toNat_div, UInt64.toNat_mul, hWidth, hTotal,
      Nat.mod_eq_of_lt hProduct]
    exact Nat.mod_eq_of_lt hSplitBound
  · have hCount := scaledCount64_lt_cumulative_iff (tag - lower) (upper - lower) (f0 + f1)
      f0.toNat (by rw [hOffset, hWidth]; omega) (by rw [hWidth]; omega)
      (by rw [hTotal]; omega) (by rw [hTotal]; omega)
    rw [hOffset, hWidth, hTotal] at hCount
    have hLeft : scaledCount64 (tag - lower) (upper - lower) (f0 + f1) < f0 ↔
        tag.toNat < split lower.toNat upper.toNat f0.toNat f1.toNat := by
      rw [UInt64.lt_iff_toNat_lt, hCount, split]
      omega
    by_cases hRight : split lower.toNat upper.toNat f0.toNat f1.toNat ≤ tag.toNat
    · simp [selectsRight64, hLeft, Nat.not_lt_of_ge hRight, hRight]
    · simp [selectsRight64, hLeft, Nat.lt_of_not_ge hRight, hRight]

/-- Use the published widened operation at the actual 18-bit half range.
The endpoints carry zero and only the tag receives the read bit. -/
theorem renormalize64_p18_mem (lower upper tag offset carry : UInt64)
    (hOffset : offset.toNat ≤ lower.toNat) (hOrder : lower.toNat < upper.toNat)
    (hUpper : upper.toNat ≤ 2 ^ 18) (hHalf : upper.toNat ≤ offset.toNat + 2 ^ 17)
    (hLo : lower.toNat ≤ tag.toNat) (hHi : tag.toNat < upper.toNat)
    (hCarry : carry.toNat ≤ 1) :
    let nextLower := (renormalize64 lower offset 0).toNat
    let nextUpper := (renormalize64 upper offset 0).toNat
    let nextTag := (renormalize64 tag offset carry).toNat
    nextLower < nextUpper ∧ nextUpper ≤ 2 ^ 18 ∧
      nextLower ≤ nextTag ∧ nextTag < nextUpper := by
  dsimp only
  rw [renormalize64_toNat lower offset 0 hOffset (by omega) (by decide),
    renormalize64_toNat upper offset 0 (by omega) (by omega) (by decide),
    renormalize64_toNat tag offset carry (by omega) (by omega) hCarry]
  simp only [UInt64.toNat_zero, Nat.add_zero]
  have h := renormalize_membership lower.toNat upper.toNat tag.toNat offset.toNat (2 ^ 17)
    carry.toNat hOffset hOrder hHalf (by omega) hCarry
  exact ⟨h.1, h.2.1, h.2.2.2.mp ⟨hLo, hHi⟩⟩

end GRWTSK.ComputerScience.BinaryArithmeticCoder.Packed
