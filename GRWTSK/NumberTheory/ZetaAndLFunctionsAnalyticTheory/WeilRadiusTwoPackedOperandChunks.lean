/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPackedMoments

/-!
# Packed operand windows for radius-two covariance

A balanced tree packs consecutive digits by the existing positional
addition identity. A contiguous packed window recovers each source
digit at its original address. Repeated squaring computes powers of
two with multiplication and has the ordinary power as its exact
value. The radius-two specialization uses this evaluator for its
192-bit digits and combines adjacent checked source intervals.

The return requires the stated word or block comparisons and digit
bounds. Concrete observation bytes and the relation between frozen
signal centers and literal analytic signals are separate inputs.
Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution

/-- Evaluate powers of two by binary squaring using multiplication. -/
def binaryPowerOfTwo : Nat → Nat → Nat
  | 0, _ => 1
  | count+1, e =>
    let p := binaryPowerOfTwo count (e/2)
    (if e%2 = 1 then 2 else 1) * (p*p)

theorem binaryPowerOfTwo_eq (count e : Nat) (h : e < 2^count) :
    binaryPowerOfTwo count e = (2:Nat)^e := by
  induction count generalizing e with
  | zero =>
    have he : e = 0 := by omega
    simp [binaryPowerOfTwo, he]
  | succ count ih =>
    have hhalf : e/2 < 2^count := by
      rw [Nat.pow_succ] at h
      omega
    rw [binaryPowerOfTwo, ih _ hhalf, ← Nat.pow_add]
    by_cases he : e%2 = 1
    · rw [ite_eq_left he, ← Nat.pow_succ']
      congr 1
      omega
    · rw [ite_eq_right he, Nat.one_mul]
      congr 1
      omega

/-- Balanced executable packing of exactly 2^depth consecutive digits. -/
def packBlock (base : ℕ) (digit : ℕ → ℕ) : ℕ → ℕ → ℕ
  | 0, start => digit start
  | depth+1, start =>
      let half := 2^depth
      packBlock base digit depth start +
        base^half * packBlock base digit depth (start+half)

theorem packBlock_eq (base : ℕ) (digit : ℕ → ℕ) (depth start : ℕ) :
    packBlock base digit depth start =
      pack base (2^depth) (fun j => digit (start+j)) := by
  induction depth generalizing start with
  | zero => simp [packBlock, pack]
  | succ k ih =>
    simp only [packBlock, ih, pow_succ]
    rw [show 2^k * 2 = 2^k + 2^k by omega, pack_append]
    simp only [Nat.add_assoc]

def digitWindow (base product start width : Nat) : Nat :=
  product / base^start % base^width

/-- Equality of a contiguous packed window yields equality of each
covered digit at the original product address. -/
theorem digitWindow_read (base product start width j : Nat) (hj : j < width) :
    digitWindow base product start width / base^j % base =
      product / base^(start+j) % base := by
  have hd : base^j * base ∣ base^width := by
    refine ⟨base^(width-j-1), ?_⟩
    rw [← Nat.pow_succ, ← Nat.pow_add]
    congr 1
    omega
  let x := product / base^start
  change x % base^width / base^j % base = product / base^(start+j) % base
  calc
    _ = (x % base^width) % (base^j * base) / base^j :=
      (Nat.mod_mul_right_div_self _ _ _).symm
    _ = (x % (base^j * base)) / base^j := by rw [Nat.mod_mod_of_dvd _ hd]
    _ = x / base^j % base := Nat.mod_mul_right_div_self _ _ _
    _ = _ := by rw [show x = product/base^start from rfl, Nat.div_div_eq_div_mul, ← Nat.pow_add]

/-- Bind the original address of each digit in a checked source window. -/
theorem digit_of_window (base word : Nat) (digit : Nat → Nat) (start count j : Nat)
    (hBase : 0 < base) (hj : j < count)
    (hBound : ∀ k < count, digit (start+k) < base)
    (hWindow : digitWindow base word start count = pack base count (fun k => digit (start+k))) :
    word / base^(start+j) % base = digit (start+j) := by
  have h := digitWindow_read base word start count j hj
  rw [hWindow] at h
  exact h.symm.trans (read_pack base count _ hBase hBound hj)

end GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedOperands

open GRWTSK.Algebra.LinearAlgebra.PackedCovarianceConvolution
open RadiusTwoPackedMoments

/-- Combine checked adjacent source chunks by the same multiplication-only
power evaluator used for production-sized packed words. -/
theorem join_pack (digit : Nat → Nat) (start left right lo hi : Nat)
    (hSize : 192*left < 2^30)
    (hLo : lo = pack base left (fun i => digit (start+i)))
    (hHi : hi = pack base right (fun i => digit (start+left+i))) :
    lo + binaryPowerOfTwo 30 (192*left) * hi =
      pack base (left+right) (fun i => digit (start+i)) := by
  rw [hLo, hHi, binaryPowerOfTwo_eq 30 (192*left) hSize, Nat.pow_mul, pack_append]
  simp only [base, Nat.add_assoc]

/-- Use bounded repeated squaring to compute the same packed interval
without asking the kernel to reduce one enormous Nat.pow. -/
theorem digitWindow_safe (word start count : Nat)
    (hStart : 192*start < 2^30) (hCount : 192*count < 2^30) :
    digitWindow base word start count =
      word / binaryPowerOfTwo 30 (192*start) %
        binaryPowerOfTwo 30 (192*count) := by
  unfold digitWindow base
  rw [← Nat.pow_mul, ← Nat.pow_mul,
    ← binaryPowerOfTwo_eq 30 (192*start) hStart,
    ← binaryPowerOfTwo_eq 30 (192*count) hCount]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedOperands
