/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE. Formal checks NOT_RUN.
Uses the repaired packed cursor and the canonical guarded section reader.
-/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.BinaryArithmeticCoderPackedBit
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.BinaryArithmeticCoderPackedCursor

set_option autoImplicit false

namespace GRWTSK.ComputerScience.BinaryArithmeticCoder.Packed

/-- The section reader returns the same digit and successor cursor, including
when the section or the backing array is exhausted. -/
theorem Cursor.readBit_eq_readSectionBit64 (cursor : Cursor) (buffer : Array UInt8) :
    cursor.readBit buffer =
      (readSectionBit64 buffer cursor.position cursor.limit).map
        (fun (bit, next) => (bit, ⟨next, cursor.limit⟩)) := by
  by_cases hInside : cursor.position.toNat < cursor.limit.toNat
  · have hGuard := UInt64.lt_iff_toNat_lt.mpr hInside
    have hRoom : (1 : UInt64).toNat ≤ cursor.limit.toNat - cursor.position.toNat := by
      change 1 ≤ cursor.limit.toNat - cursor.position.toNat
      omega
    have hCut := (cursor.cut_of_le 1 (Nat.le_of_lt hInside) hRoom).1
    have hLookup : packedBitAt64 buffer cursor.position = bitAt buffer cursor.position.toNat :=
      packedBitAt64_refines buffer cursor.position
    cases hBit : bitAt buffer cursor.position.toNat <;>
      simp [Cursor.readBit, hCut, readSectionBit64, hGuard, hLookup, hBit]
  · have hGuard : ¬ cursor.position < cursor.limit :=
      fun h => hInside (UInt64.lt_iff_toNat_lt.mp h)
    have hCut : cursor.cut 1 = none := by
      by_cases hOrder : cursor.position.toNat ≤ cursor.limit.toNat
      · apply cursor.cut_of_short 1 hOrder
        change cursor.limit.toNat - cursor.position.toNat < 1
        omega
      · have hWordOrder : ¬ cursor.position ≤ cursor.limit :=
          fun h => hOrder (UInt64.le_iff_toNat_le.mp h)
        simp only [Cursor.cut, ite_eq_right hWordOrder]
    simp [Cursor.readBit, hCut, readSectionBit64, hGuard]

end GRWTSK.ComputerScience.BinaryArithmeticCoder.Packed
