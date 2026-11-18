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

end GRWTSK.ComputerScience.BinaryArithmeticCoder
