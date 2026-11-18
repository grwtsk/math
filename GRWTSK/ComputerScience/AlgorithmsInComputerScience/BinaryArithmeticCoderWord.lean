/- Local attribution: grwtsk contributors. -/
import Lean.Elab.Tactic.Omega
import Init.Data.UInt.Lemmas

set_option autoImplicit false

namespace GRWTSK.ComputerScience.BinaryArithmeticCoder

/-- Compute the decoder's scaled cumulative count from a tag offset. Writing
the numerator as `offset * total + (total - 1)` permits a 64-bit implementation
even when both the interval width and the frequency total can equal `2^32`. -/
def scaledCount64 (offset width total : UInt64) : UInt64 :=
  (offset * total + (total - 1)) / width

/-- The word computation agrees with the natural-number formula throughout
the supported half-open interval, including the exclusive `2^32` endpoint. -/
theorem scaledCount64_toNat (offset width total : UInt64)
    (hOffset : offset.toNat < width.toNat) (hWidth : width.toNat ≤ 2 ^ 32)
    (hTotal : 0 < total.toNat) (hTotalBound : total.toNat ≤ 2 ^ 32) :
    (scaledCount64 offset width total).toNat =
      ((offset.toNat + 1) * total.toNat - 1) / width.toNat := by
  have hProduct : (offset.toNat + 1) * total.toNat ≤ 2 ^ 64 := by
    calc
      (offset.toNat + 1) * total.toNat ≤ (2 ^ 32) * (2 ^ 32) :=
        Nat.mul_le_mul (Nat.le_trans (Nat.succ_le_of_lt hOffset) hWidth) hTotalBound
      _ = 2 ^ 64 := by decide
  rw [Nat.add_mul, Nat.one_mul] at hProduct
  have hSub : (1 : UInt64) ≤ total := UInt64.le_iff_toNat_le.2
    (by simpa using Nat.succ_le_of_lt hTotal)
  have hMul : offset.toNat * total.toNat < 2 ^ 64 := by omega
  have hAdd : offset.toNat * total.toNat + (total.toNat - 1) < 2 ^ 64 := by omega
  have hNumerator : offset.toNat * total.toNat + (total.toNat - 1) =
      (offset.toNat + 1) * total.toNat - 1 := by rw [Nat.add_mul, Nat.one_mul]; omega
  unfold scaledCount64
  rw [UInt64.toNat_div, UInt64.toNat_add, UInt64.toNat_mul, Nat.mod_eq_of_lt hMul,
    UInt64.toNat_sub_of_le _ _ hSub]
  change (offset.toNat * total.toNat + (total.toNat - 1)) % (2 ^ 64) / width.toNat = _
  rw [Nat.mod_eq_of_lt hAdd, hNumerator]

/-- Comparing the machine count with a cumulative frequency is equivalent
to comparing the tag offset with its half-open interval split. -/
theorem scaledCount64_lt_cumulative_iff (offset width total : UInt64) (cumulative : Nat)
    (hOffset : offset.toNat < width.toNat) (hWidth : width.toNat ≤ 2 ^ 32)
    (hTotal : 0 < total.toNat) (hTotalBound : total.toNat ≤ 2 ^ 32) :
    (scaledCount64 offset width total).toNat < cumulative ↔
      offset.toNat < width.toNat * cumulative / total.toNat := by
  rw [scaledCount64_toNat offset width total hOffset hWidth hTotal hTotalBound,
    Nat.div_lt_iff_lt_mul (show 0 < width.toNat by omega)]
  have hNumerator : 0 < (offset.toNat + 1) * total.toNat := Nat.mul_pos (by omega) hTotal
  have hThreshold := Nat.le_div_iff_mul_le
    (x := offset.toNat + 1) (y := width.toNat * cumulative) hTotal
  rw [Nat.mul_comm cumulative width.toNat]
  omega

/-- The scaled count lies in the valid cumulative table range. -/
theorem scaledCount64_lt_total (offset width total : UInt64)
    (hOffset : offset.toNat < width.toNat) (hWidth : width.toNat ≤ 2 ^ 32)
    (hTotal : 0 < total.toNat) (hTotalBound : total.toNat ≤ 2 ^ 32) :
    (scaledCount64 offset width total).toNat < total.toNat := by
  apply (scaledCount64_lt_cumulative_iff offset width total total.toNat
    hOffset hWidth hTotal hTotalBound).2
  simpa only [Nat.mul_div_cancel _ hTotal] using hOffset

end GRWTSK.ComputerScience.BinaryArithmeticCoder
