/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedOperandChunks
import Mathlib.Algebra.Ring.GeomSum

/-!
# Signed lanes in packed covariance operands

A single bitwise test checks the sign extension of every 64-bit
two's-complement lane in a packed natural number. XOR with a one-bit
right shift detects unequal adjacent bits. The mask selects bits 52
through 62 in each lane, so it excludes comparisons across lane
boundaries. When the test returns zero, bits 52 through 63 are constant
in each covered lane. The high twelve bits are then either all zero
or all one, giving the signed range from −2^52 to 2^52 − 1.

The theorem supplies the magnitude bound used for finite packed
convolution. A concrete input word and guard equality are separate
inputs. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.PackedSignedLanes

open PackedCovarianceConvolution
open scoped BigOperators

/-- The base of a little-endian 64-bit lane. -/
def sourceBase : Nat := 2^64

/-- Decode a 64-bit unsigned lane as a two's-complement integer. -/
def signedDigit (u : Nat) : Int :=
  if u < (2:Nat)^63 then (u : Int) else (u : Int) - (2:Int)^64

/-- Decode the lane at the given zero-based address. -/
def signedAt (word q : Nat) : Int :=
  signedDigit (word / sourceBase^q % sourceBase)

/-- The bits used to test adjacent sign-extension bits in each lane. -/
def signExtensionMask (n : Nat) : Nat :=
  pack sourceBase n (fun _ => 2^63 - 2^52)

/-- Compute the repeated mask with the bounded power evaluator. -/
theorem signExtensionMask_eq (n : Nat) (h : 64*n < (2:Nat)^30) :
    signExtensionMask n = (2^63-2^52) * ((binaryPowerOfTwo 30 (64*n)-1)/(2^64-1)) := by
  unfold signExtensionMask pack
  rw [← Finset.mul_sum, Nat.geomSum_eq (by decide : 2 ≤ sourceBase) n]
  unfold sourceBase
  rw [← Nat.pow_mul, ← binaryPowerOfTwo_eq 30 (64*n) h]

private theorem laneBit (w q r : Nat) (hr : r < 64) :
    (w/sourceBase^q%sourceBase).testBit r = w.testBit (64*q+r) := by
  unfold sourceBase
  rw [← Nat.pow_mul, Nat.testBit_mod_two_pow, Nat.testBit_div_two_pow]
  simp [hr, Nat.add_comm]

private theorem maskBit (n q r : Nat) (hq : q < n) (hr₀ : 52 ≤ r) (hr₁ : r < 63) :
    (signExtensionMask n).testBit (64*q+r) = true := by
  have h := read_pack sourceBase n (fun _ => 2^63-2^52)
    (by decide) (fun _ _ => by decide) hq
  change signExtensionMask n / sourceBase^q % sourceBase = 2^63-2^52 at h
  rw [← laneBit (signExtensionMask n) q r (by omega), h]
  interval_cases r <;> decide

private theorem eq_of_xor_false {a b : Bool} (h : (a ^^ b) = false) : a = b := by
  cases a <;> cases b <;> simp_all

private theorem adjacent (w n : Nat)
    (h : ((w ^^^ (w >>> 1)) &&& signExtensionMask n) = 0)
    (q r : Nat) (hq : q < n) (hr₀ : 52 ≤ r) (hr₁ : r < 63) :
    (w/sourceBase^q%sourceBase).testBit r =
      (w/sourceBase^q%sourceBase).testBit (r+1) := by
  rw [laneBit w q r (by omega), laneBit w q (r+1) (by omega)]
  have hh := congrArg (fun x : Nat => x.testBit (64*q+r)) h
  change (((w ^^^ (w >>> 1)) &&& signExtensionMask n)).testBit (64*q+r) =
    (0:Nat).testBit (64*q+r) at hh
  simp only [Nat.testBit_and, Nat.testBit_xor, Nat.testBit_shiftRight, maskBit n q r hq hr₀ hr₁,
    Bool.and_true, Nat.zero_testBit] at hh
  rw [show 1+(64*q+r) = 64*q+(r+1) by omega] at hh
  exact eq_of_xor_false hh

private theorem highPart (d : Nat) (hd : d < 2^64)
    (ha : ∀ r, 52 ≤ r → r < 63 → d.testBit r = d.testBit (r+1)) :
    d/2^52 = if d.testBit 63 then 4095 else 0 := by
  have top (i : Nat) (hi : i ≤ 11) : d.testBit (63-i) = d.testBit 63 := by
    induction i with
    | zero => rfl
    | succ i ih =>
      have hh := ha (63-(i+1)) (by omega) (by omega)
      rw [show 63-(i+1)+1=63-i by omega] at hh
      exact hh.trans (ih (by omega))
  apply Nat.eq_of_testBit_eq
  intro i
  rw [Nat.testBit_div_two_pow]
  by_cases hi : i < 12
  · rw [show i+52 = 63-(11-i) by omega, top (11-i) (by omega)]
    by_cases hs : d.testBit 63
    · have hk : (4095:Nat).testBit i = true := by
        exact (Nat.testBit_two_pow_sub_one 12 i).trans (by simp [hi])
      simp [hs, hk]
    · simp [hs]
  · have hp : (2:Nat)^64 ≤ 2^(i+52) := Nat.pow_le_pow_right (by decide) (by omega)
    rw [Nat.testBit_lt_two_pow (hd.trans_le hp)]
    by_cases hs : d.testBit 63
    · have hk : (4095:Nat).testBit i = false := by
        exact (Nat.testBit_two_pow_sub_one 12 i).trans (by simp [hi])
      simp [hs, hk]
    · simp [hs]

private theorem signed53 (d : Nat) (hd : d < 2^64)
    (ha : ∀ r, 52 ≤ r → r < 63 → d.testBit r = d.testBit (r+1)) :
    (signedDigit d).natAbs ≤ 2^52 := by
  have hh := highPart d hd ha
  have hr : d % (2:Nat)^52 < 2^52 := Nat.mod_lt _ (by decide)
  have hd' := Nat.mod_add_div d ((2:Nat)^52)
  by_cases hs : d.testBit 63
  · rw [ite_eq_left hs] at hh
    rw [hh] at hd'
    have hlo : 2^64-2^52 ≤ d := by
      norm_num at hd' ⊢
      omega
    have hn : ¬ d < 2^63 := by
      norm_num at hlo ⊢
      omega
    unfold signedDigit
    rw [ite_eq_right hn]
    have hn' : (d:Int) - (2:Int)^64 ≤ 0 := by
      have hc : (d:Int) ≤ (2:Int)^64 := by exact_mod_cast hd.le
      omega
    have he := Int.ofNat_natAbs_of_nonpos hn'
    norm_num at hlo he ⊢
    omega
  · rw [ite_eq_right hs] at hh
    rw [hh] at hd'
    have hlo : d < 2^52 := by
      norm_num at hd' hr ⊢
      omega
    have hn : d < 2^63 := hlo.trans (by decide)
    unfold signedDigit
    rw [ite_eq_left hn]
    simpa using hlo.le

/-- The full packed sign-extension guard implies the signed 53-bit range
for each covered two's-complement source lane. -/
theorem signedAt_abs_le_of_guard (w n q : Nat)
    (h : ((w ^^^ (w >>> 1)) &&& signExtensionMask n) = 0) (hq : q < n) :
    (signedAt w q).natAbs ≤ 2^52 := by
  unfold signedAt
  apply signed53 _ (Nat.mod_lt _ (by decide))
  intro r hr₀ hr₁
  exact adjacent w n h q r hq hr₀ hr₁

end GRWTSK.Algebra.LinearAlgebra.PackedSignedLanes
