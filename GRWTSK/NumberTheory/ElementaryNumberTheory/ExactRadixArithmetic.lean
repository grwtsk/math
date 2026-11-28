import Mathlib.Data.Nat.Digits.Lemmas
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Exact radix arithmetic underlying the 128-bit PGATN reference model

Attribution: grwtsk contributors.
Formal status is recorded in the accompanying exact-source verification evidence.
Target: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

This source reuses `Nat.digits` and `Nat.ofDigits`. It does not import the
repository's Binary128 finite-field arithmetic: that source has characteristic
two and different semantics. These equations are a natural-number algorithm
model, not a proof that Rust machine operations refine the model.

Intended subject path: GRWTSK/NumberTheory/ElementaryNumberTheory/ExactRadixArithmetic.lean.
-/

namespace GRWTSK.NumberTheory.ExactRadix

def radix128 : ℕ := 2 ^ 128

theorem radix128_ge_two : 2 ≤ radix128 := by norm_num [radix128]

/-- Exact Euclidean splitting; it is not truncated arithmetic. -/
theorem split_exact (B x : ℕ) : x % B + B * (x / B) = x :=
  Nat.mod_add_div x B

/-- Two base-B words suffice for one schoolbook multiply/accumulate step. -/
theorem mac_lt_square {B a b r c : ℕ} (hB : 0 < B)
    (ha : a < B) (hb : b < B) (hr : r < B) (hc : c < B) :
    a * b + r + c < B * B := by
  have ha' : a ≤ B - 1 := by omega
  have hb' : b ≤ B - 1 := by omega
  have hp : a * b ≤ (B - 1) * (B - 1) := Nat.mul_le_mul ha' hb'
  have hsub : B - 1 + 1 = B := Nat.sub_add_cancel hB
  nlinarith

/-- The high output of a bounded two-word accumulator is itself one word. -/
theorem mac_high_lt {B a b r c : ℕ} (hB : 0 < B)
    (ha : a < B) (hb : b < B) (hr : r < B) (hc : c < B) :
    (a * b + r + c) / B < B := by
  have ht := mac_lt_square hB ha hb hr hc
  have he := split_exact B (a * b + r + c)
  by_contra h
  have hq : B ≤ (a * b + r + c) / B := by omega
  have hp := Nat.mul_le_mul_left B hq
  omega

/-- Exact carry propagation, terminating on the sum of input lengths.
The base case retains every remaining carry digit through the canonical decoder API. -/
def addCarry (B : ℕ) (xs ys : List ℕ) (carry : ℕ) : List ℕ :=
  match xs, ys with
  | [], [] => Nat.digits B carry
  | [], b :: bs =>
      (b + carry) % B :: addCarry B [] bs ((b + carry) / B)
  | a :: as, [] =>
      (a + carry) % B :: addCarry B as [] ((a + carry) / B)
  | a :: as, b :: bs =>
      (a + b + carry) % B :: addCarry B as bs ((a + b + carry) / B)
termination_by xs.length + ys.length
decreasing_by all_goals simp_all <;> omega

/-- The carry routine has the ordinary natural-number value, including terminal overflow. -/
theorem ofDigits_addCarry (B : ℕ) (xs ys : List ℕ) (carry : ℕ) :
    Nat.ofDigits B (addCarry B xs ys carry) =
      Nat.ofDigits B xs + Nat.ofDigits B ys + carry := by
  induction xs generalizing ys carry with
  | nil =>
      induction ys generalizing carry with
      | nil => simp [addCarry, Nat.ofDigits_digits]
      | cons b bs ih =>
          rw [addCarry, Nat.ofDigits_cons, ih, Nat.ofDigits_cons]
          have he := Nat.mod_add_div (b + carry) B
          simp only [Nat.ofDigits_nil]
          nlinarith
  | cons a as ih =>
      cases ys with
      | nil =>
          rw [addCarry, Nat.ofDigits_cons, ih, Nat.ofDigits_cons]
          have he := Nat.mod_add_div (a + carry) B
          simp only [Nat.ofDigits_nil]
          nlinarith
      | cons b bs =>
          rw [addCarry, Nat.ofDigits_cons, ih, Nat.ofDigits_cons, Nat.ofDigits_cons]
          have he := Nat.mod_add_div (a + b + carry) B
          nlinarith

/-- Single-digit product with an exact carry; the number of input limbs decreases. -/
def mulDigit (B a : ℕ) : List ℕ → ℕ → List ℕ
  | [], carry => Nat.digits B carry
  | b :: bs, carry =>
      (a * b + carry) % B :: mulDigit B a bs ((a * b + carry) / B)

theorem ofDigits_mulDigit (B a : ℕ) (ys : List ℕ) (carry : ℕ) :
    Nat.ofDigits B (mulDigit B a ys carry) = a * Nat.ofDigits B ys + carry := by
  induction ys generalizing carry with
  | nil => simp [mulDigit, Nat.ofDigits_digits]
  | cons b bs ih =>
      rw [mulDigit, Nat.ofDigits_cons, ih, Nat.ofDigits_cons]
      have he := Nat.mod_add_div (a * b + carry) B
      nlinarith

/-- Schoolbook multiplication by recursive shifted row accumulation. -/
def mulDigits (B : ℕ) : List ℕ → List ℕ → List ℕ
  | [], _ => []
  | a :: as, bs => addCarry B (mulDigit B a bs 0) (0 :: mulDigits B as bs) 0

theorem ofDigits_mulDigits (B : ℕ) (xs ys : List ℕ) :
    Nat.ofDigits B (mulDigits B xs ys) = Nat.ofDigits B xs * Nat.ofDigits B ys := by
  induction xs with
  | nil => simp [mulDigits]
  | cons a as ih =>
      rw [mulDigits, ofDigits_addCarry, ofDigits_mulDigit,
        Nat.ofDigits_cons, ih, Nat.ofDigits_cons]
      ring

/-- Canonicalization uses the canonical Mathlib positional representation. -/
def normalize (B : ℕ) (xs : List ℕ) : List ℕ := Nat.digits B (Nat.ofDigits B xs)

theorem ofDigits_normalize (B : ℕ) (xs : List ℕ) :
    Nat.ofDigits B (normalize B xs) = Nat.ofDigits B xs :=
  Nat.ofDigits_digits B _

theorem normalize_idempotent (B : ℕ) (xs : List ℕ) :
    normalize B (normalize B xs) = normalize B xs := by
  simp [normalize, Nat.ofDigits_digits]

end GRWTSK.NumberTheory.ExactRadix
