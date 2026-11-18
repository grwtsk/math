/- Local attribution: grwtsk contributors. -/
import Lean.Elab.Tactic.Omega
import Init.Data.UInt.Bitwise

set_option autoImplicit false

namespace GRWTSK.ComputerScience.BinaryArithmeticCoder

/-- Read an MSB-first bit. The byte index is computed in `UInt64`, and the
selected octet is shifted and masked in `UInt8`. Array access is checked. -/
def packedBitAt64 (buffer : Array UInt8) (position : UInt64) : Option Bool :=
  buffer[(position / 8).toNat]?.map fun byte =>
    decide (((byte >>> (7 - position % 8).toUInt8) &&& 1) = 1)

/-- The machine operation agrees with the natural-number byte and bit lookup
used by the logical reader, including out-of-range byte indices. -/
theorem packedBitAt64_refines (buffer : Array UInt8) (position : UInt64) :
    packedBitAt64 buffer position =
      buffer[position.toNat / 8]?.map (fun byte => byte.toNat.testBit (7 - position.toNat % 8)) := by
  have hRemainder : (position % 8).toNat = position.toNat % 8 := UInt64.toNat_mod _ _
  have hSmall : position.toNat % 8 < 8 := Nat.mod_lt _ (by decide)
  have hShift : (7 - position % 8).toUInt8.toNat = 7 - position.toNat % 8 := by
    rw [UInt64.toNat_toUInt8, UInt64.toNat_sub_of_le _ _ (UInt64.le_iff_toNat_le.2 (by
      rw [hRemainder]
      change position.toNat % 8 ≤ 7
      omega)), hRemainder]
    change (7 - position.toNat % 8) % (2 ^ 8) = _
    exact Nat.mod_eq_of_lt (by omega)
  have hShiftMod : (7 - position.toNat % 8) % 8 = 7 - position.toNat % 8 :=
    Nat.mod_eq_of_lt (by omega)
  have hByteIndex : (position / 8).toNat = position.toNat / 8 := UInt64.toNat_div _ _
  unfold packedBitAt64
  rw [hByteIndex]
  congr 1
  funext byte
  rw [Nat.testBit_eq_decide_div_mod_eq]
  simp only [← UInt8.toNat_inj, UInt8.toNat_and, UInt8.toNat_shiftRight, hShift, hShiftMod,
    show (1 : UInt8).toNat = 1 from rfl, Nat.and_one_is_mod, Nat.shiftRight_eq_div_pow]

/-- Exactly the positions at or beyond the backing length fail. A logical
section's own end must still be checked before calling the byte reader. -/
theorem packedBitAt64_eq_none_iff (buffer : Array UInt8) (position : UInt64) :
    packedBitAt64 buffer position = none ↔ 8 * buffer.size ≤ position.toNat := by
  rw [packedBitAt64_refines]
  by_cases hIndex : position.toNat / 8 < buffer.size
  · rw [getElem?_pos buffer (position.toNat / 8) hIndex]
    simp only [Option.map_some, reduceCtorEq, false_iff]
    omega
  · rw [getElem?_neg buffer (position.toNat / 8) hIndex]
    simp only [Option.map_none, true_iff]
    omega

/-- Read one bit before the declared exclusive section end and advance only
on success. The section end can be smaller than the backing length. -/
def readSectionBit64 (buffer : Array UInt8) (position sectionEnd : UInt64) :
    Option (Bool × UInt64) :=
  if position < sectionEnd then
    (packedBitAt64 buffer position).map (fun bit => (bit, position + 1))
  else none

/-- The word cursor agrees with a guarded natural-number cursor. In the
success branch the strict end test also guarantees that the increment fits. -/
theorem readSectionBit64_refines (buffer : Array UInt8) (position sectionEnd : UInt64) :
    (readSectionBit64 buffer position sectionEnd).map (fun (bit, next) => (bit, next.toNat)) =
      if position.toNat < sectionEnd.toNat then
        buffer[position.toNat / 8]?.map
          (fun byte => (byte.toNat.testBit (7 - position.toNat % 8), position.toNat + 1))
      else none := by
  by_cases hSection : position.toNat < sectionEnd.toNat
  · have hEnd : sectionEnd.toNat < 2 ^ 64 := sectionEnd.toNat_lt_size
    have hNext : (position + 1).toNat = position.toNat + 1 := by
      rw [UInt64.toNat_add]
      change (position.toNat + 1) % (2 ^ 64) = _
      exact Nat.mod_eq_of_lt (by omega)
    rw [readSectionBit64, ite_eq_left (UInt64.lt_iff_toNat_lt.2 hSection), ite_eq_left hSection,
      packedBitAt64_refines]
    simp only [Option.map_map, Function.comp_def, hNext]
  · rw [readSectionBit64, ite_eq_right (fun h => hSection (UInt64.lt_iff_toNat_lt.1 h)),
      ite_eq_right hSection, Option.map_none]

/-- Reading fails exactly when the declared section is exhausted or the
backing array has no byte for the requested bit. -/
theorem readSectionBit64_eq_none_iff (buffer : Array UInt8) (position sectionEnd : UInt64) :
    readSectionBit64 buffer position sectionEnd = none ↔
      sectionEnd.toNat ≤ position.toNat ∨ 8 * buffer.size ≤ position.toNat := by
  unfold readSectionBit64
  by_cases hSection : position.toNat < sectionEnd.toNat
  · rw [ite_eq_left (UInt64.lt_iff_toNat_lt.2 hSection), Option.map_eq_none_iff,
      packedBitAt64_eq_none_iff, or_iff_right (Nat.not_le_of_gt hSection)]
  · rw [ite_eq_right (fun h => hSection (UInt64.lt_iff_toNat_lt.1 h))]
    exact ⟨fun _ => Or.inl (Nat.le_of_not_gt hSection), fun _ => rfl⟩

private theorem readSectionBit64_result (buffer : Array UInt8) (position sectionEnd next : UInt64)
    (bit : Bool) (hRead : readSectionBit64 buffer position sectionEnd = some (bit, next)) :
    next.toNat = position.toNat + 1 ∧ position.toNat < sectionEnd.toNat ∧
      position.toNat < 8 * buffer.size ∧
      buffer[position.toNat / 8]?.map (fun byte => byte.toNat.testBit (7 - position.toNat % 8)) =
        some bit := by
  have hRoom : ¬ (sectionEnd.toNat ≤ position.toNat ∨ 8 * buffer.size ≤ position.toNat) := by
    intro h
    have hNone := (readSectionBit64_eq_none_iff _ _ _).2 h
    rw [hRead] at hNone
    contradiction
  have hSection : position.toNat < sectionEnd.toNat := by omega
  have hBacking : position.toNat < 8 * buffer.size := by omega
  have hRefines := readSectionBit64_refines buffer position sectionEnd
  have hIndex : position.toNat / 8 < buffer.size := by omega
  rw [hRead, Option.map_some, ite_eq_left hSection, getElem?_pos buffer _ hIndex,
    Option.map_some, Option.some.injEq, Prod.mk.injEq] at hRefines
  refine ⟨hRefines.2, hSection, hBacking, ?_⟩
  rw [getElem?_pos buffer _ hIndex, Option.map_some, hRefines.1]

/-- Read exactly `count` bits in wire order within the declared section.
An empty request consumes nothing, even when there is no backing byte. -/
def readSectionBits64 (buffer : Array UInt8) (sectionEnd : UInt64) :
    Nat → UInt64 → Option (List Bool × UInt64)
  | 0, position => some ([], position)
  | count + 1, position => do
    let (bit, next) ← readSectionBit64 buffer position sectionEnd
    let (bits, rest) ← readSectionBits64 buffer sectionEnd count next
    pure (bit :: bits, rest)

/-- A positive request is rejected exactly when its exclusive end would cross
the section or backing limit. On success the returned count and cursor are exact. -/
theorem readSectionBits64_spec (buffer : Array UInt8) (sectionEnd : UInt64)
    (count : Nat) (position : UInt64) :
    match readSectionBits64 buffer sectionEnd count position with
    | none => 0 < count ∧
        (sectionEnd.toNat < position.toNat + count ∨ 8 * buffer.size < position.toNat + count)
    | some (bits, rest) => bits.length = count ∧ rest.toNat = position.toNat + count ∧
        (0 < count → rest.toNat ≤ sectionEnd.toNat ∧ rest.toNat ≤ 8 * buffer.size) := by
  induction count generalizing position with
  | zero => simp [readSectionBits64]
  | succ count ih =>
    cases hRead : readSectionBit64 buffer position sectionEnd with
    | none =>
      have hShort := (readSectionBit64_eq_none_iff buffer position sectionEnd).1 hRead
      simp [readSectionBits64, hRead]
      omega
    | some first =>
      obtain ⟨bit, next⟩ := first
      obtain ⟨hNext, hSection, hBacking, _⟩ :=
        readSectionBit64_result buffer position sectionEnd next bit hRead
      have hTail := ih next
      cases hReadTail : readSectionBits64 buffer sectionEnd count next with
      | none =>
        rw [hReadTail] at hTail
        simp [readSectionBits64, hRead, hReadTail]
        omega
      | some result =>
        obtain ⟨bits, rest⟩ := result
        rw [hReadTail] at hTail
        obtain ⟨hCount, hRest, hBounds⟩ := hTail
        simp [readSectionBits64, hRead, hReadTail]
        refine ⟨by omega, by omega, ?_⟩
        by_cases hPositive : 0 < count
        · exact hBounds hPositive
        · exact ⟨by omega, by omega⟩

/-- An exact-length read fails if and only if a nonempty request crosses a limit. -/
theorem readSectionBits64_eq_none_iff (buffer : Array UInt8) (sectionEnd : UInt64)
    (count : Nat) (position : UInt64) :
    readSectionBits64 buffer sectionEnd count position = none ↔ 0 < count ∧
      (sectionEnd.toNat < position.toNat + count ∨ 8 * buffer.size < position.toNat + count) := by
  have hSpec := readSectionBits64_spec buffer sectionEnd count position
  cases hRead : readSectionBits64 buffer sectionEnd count position with
  | none =>
    rw [hRead] at hSpec
    exact ⟨fun _ => hSpec, fun _ => rfl⟩
  | some result =>
    obtain ⟨bits, rest⟩ := result
    rw [hRead] at hSpec
    obtain ⟨_, hRest, hBounds⟩ := hSpec
    constructor
    · intro h
      cases h
    · intro h
      have := hBounds h.1
      omega

/-- Each bit of a successful section read agrees with the MSB-first backing
observation at its absolute wire position. -/
theorem readSectionBits64_getElem? (buffer : Array UInt8) (sectionEnd : UInt64)
    (count : Nat) (position rest : UInt64) (bits : List Bool)
    (hRead : readSectionBits64 buffer sectionEnd count position = some (bits, rest))
    (index : Nat) (hIndex : index < count) :
    bits[index]? = buffer[(position.toNat + index) / 8]?.map
      (fun byte => byte.toNat.testBit (7 - (position.toNat + index) % 8)) := by
  induction count generalizing position rest bits index with
  | zero => omega
  | succ count ih =>
    cases hFirst : readSectionBit64 buffer position sectionEnd with
    | none => simp [readSectionBits64, hFirst] at hRead
    | some first =>
      obtain ⟨bit, next⟩ := first
      obtain ⟨hNext, _, _, hBit⟩ :=
        readSectionBit64_result buffer position sectionEnd next bit hFirst
      cases hTail : readSectionBits64 buffer sectionEnd count next with
      | none => simp [readSectionBits64, hFirst, hTail] at hRead
      | some tail =>
        obtain ⟨tailBits, tailRest⟩ := tail
        simp [readSectionBits64, hFirst, hTail] at hRead
        obtain ⟨rfl, rfl⟩ := hRead
        cases index with
        | zero => simpa using hBit.symm
        | succ index =>
          have hPosition : position.toNat + (index + 1) = next.toNat + index := by omega
          rw [List.getElem?_cons_succ, hPosition]
          exact ih next tailRest tailBits hTail index (by omega)

/-- A successful packed read returns the exact contiguous slice of any
logical bit list that represents the entire backing array in MSB-first order. -/
theorem readSectionBits64_eq_slice (buffer : Array UInt8) (sectionEnd : UInt64)
    (count : Nat) (position rest : UInt64) (bits logical : List Bool)
    (hLength : logical.length = 8 * buffer.size)
    (hLogical : ∀ index < logical.length, logical[index]? =
      buffer[index / 8]?.map (fun byte => byte.toNat.testBit (7 - index % 8)))
    (hRead : readSectionBits64 buffer sectionEnd count position = some (bits, rest)) :
    bits = (logical.drop position.toNat).take count := by
  have hSpec := readSectionBits64_spec buffer sectionEnd count position
  rw [hRead] at hSpec
  obtain ⟨hCount, hRest, hBounds⟩ := hSpec
  apply List.ext_getElem?
  intro index
  by_cases hIndex : index < count
  · have hBacking := (hBounds (by omega)).2
    have hInside : position.toNat + index < logical.length := by omega
    rw [List.getElem?_take_of_lt hIndex, List.getElem?_drop, hLogical _ hInside]
    exact readSectionBits64_getElem? buffer sectionEnd count position rest bits hRead index hIndex
  · have hSlice := List.length_take_le count (logical.drop position.toNat)
    rw [getElem?_neg bits index (by omega),
      getElem?_neg ((logical.drop position.toNat).take count) index (by omega)]

end GRWTSK.ComputerScience.BinaryArithmeticCoder
