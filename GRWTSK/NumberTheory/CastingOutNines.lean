/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Lean.Elab.Tactic.Omega

/-!
# Casting out nines and its limits

Source: Numberphile, *Casting Out Nines*, featuring James Grime (2017-09-10),
https://www.numberphile.com/videos/casting-out-nines.

Digits are stored least significant first. The congruence holds even without
bounding the coefficients by nine, so in particular covers all finite decimal
digit strings, including zero and leading zeroes. The checks below are necessary
conditions for correctness; explicit false positives prevent a converse claim.
These are source proof candidates; managed compilation and axiom audits are pending.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CastingOutNines

/-- Decimal value of a finite coefficient list, least significant first. -/
def value : List Nat → Nat
  | [] => 0
  | d :: ds => d + 10 * value ds

def digitSum : List Nat → Nat
  | [] => 0
  | d :: ds => d + digitSum ds

/-- Universal induction, not a check of finitely many decimal numerals. -/
theorem casting_out_nines (ds : List Nat) : value ds % 9 = digitSum ds % 9 := by
  induction ds with
  | nil => rfl
  | cons d ds ih =>
    simp only [value, digitSum]
    omega

theorem divisible_by_nine_iff (ds : List Nat) :
    value ds % 9 = 0 ↔ digitSum ds % 9 = 0 := by
  rw [casting_out_nines]

def AddCheck (a b c : List Nat) : Prop :=
  (digitSum a % 9 + digitSum b % 9) % 9 = digitSum c % 9

def MulCheck (a b c : List Nat) : Prop :=
  (digitSum a % 9 * digitSum b % 9) % 9 = digitSum c % 9

theorem addCheck_iff (a b c : List Nat) :
    AddCheck a b c ↔ (value a + value b) % 9 = value c % 9 := by
  unfold AddCheck
  rw [← casting_out_nines a, ← casting_out_nines b, ← casting_out_nines c,
    ← Nat.add_mod]

theorem mulCheck_iff (a b c : List Nat) :
    MulCheck a b c ↔ (value a * value b) % 9 = value c % 9 := by
  unfold MulCheck
  rw [← casting_out_nines a, ← casting_out_nines b, ← casting_out_nines c,
    ← Nat.mul_mod]

theorem correct_addition_passes (a b c : List Nat)
    (h : value a + value b = value c) : AddCheck a b c :=
  (addCheck_iff a b c).2 (congrArg (fun n => n % 9) h)

theorem correct_multiplication_passes (a b c : List Nat)
    (h : value a * value b = value c) : MulCheck a b c :=
  (mulCheck_iff a b c).2 (congrArg (fun n => n % 9) h)

theorem failed_addition_check_detects_error (a b c : List Nat)
    (h : ¬ AddCheck a b c) : value a + value b ≠ value c := by
  intro heq
  exact h (correct_addition_passes a b c heq)

theorem failed_multiplication_check_detects_error (a b c : List Nat)
    (h : ¬ MulCheck a b c) : value a * value b ≠ value c := by
  intro heq
  exact h (correct_multiplication_passes a b c heq)

/-- The incorrect calculation `1 + 1 = 11` nevertheless passes. -/
theorem addition_false_positive :
    AddCheck [1] [1] [1, 1] ∧ value [1] + value [1] ≠ value [1, 1] := by
  decide

/-- The incorrect calculation `2 * 2 = 13` also passes. -/
theorem multiplication_false_positive :
    MulCheck [2] [2] [3, 1] ∧ value [2] * value [2] ≠ value [3, 1] := by
  decide

/-- Infinitely many wrong numerical answers have the same checksum. -/
theorem undetectable_error_family (n k : Nat) :
    (n + 9 * (k + 1)) % 9 = n % 9 ∧ n + 9 * (k + 1) ≠ n := by
  omega

/-- Swapping adjacent decimal coefficients anywhere cannot change the check.
This includes ordinary digit transpositions, even when the represented value changes. -/
theorem adjacent_transposition_undetectable (prefix suffix : List Nat) (a b : Nat) :
    value (prefix ++ a :: b :: suffix) % 9 =
      value (prefix ++ b :: a :: suffix) % 9 := by
  induction prefix with
  | nil =>
    simp only [List.nil_append, value]
    omega
  | cons d ds ih =>
    simp only [List.cons_append, value]
    omega

end GRWTSK.NumberTheory.ElementaryNumberTheory.CastingOutNines
