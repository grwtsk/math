/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Local attribution: grwtsk contributors.
The Formal Conjectures Authors and Mathlib retain their original notices.
-/
import FormalConjectures.Wikipedia.ErdosMoser
import Mathlib.Algebra.BigOperators.Intervals
import Lean.Elab.Tactic.Omega

/-!
# Positive-base normalization of the Erdős–Moser statement

The imported `ErdosMoser.powerSum` is the sum over `Ico 1 m`. Shifting the
index expresses it over a finite range with positive bases, including exponent
zero without inserting a `0^0` term. Gauss's formula classifies the exponent-one
solutions on the exact positive-input domain. That classification reduces the
full positive statement to exclusion for exponents at least two.

The higher-exponent exclusion remains UNSUPPLIED. No proof below uses the
admitted `ErdosMoser.erdos_moser_conjecture` endpoint. Its sorry-bearing module
is imported to use the exact definition; the unused admission's presence is
not an axiom-acceptance claim. Fresh target-bound transitive auditing remains
required. The entire imported module is not asserted to be admission-free.

The root `ErdosMoserSmallExponents` family uses a recursive sum and the index
`n=m-1`. It supplies the intended low-exponent consumer context, but no root
model is copied or imported, and its cross-version transport is UNSUPPLIED.
Bernd C. Kellner's arXiv:1003.1646 is background cited by the pinned upstream
module; no stronger-conjecture implication from that paper is consumed here.

SOURCE_PROOF_CANDIDATE: compilation, expected-interface checking, fresh kernel
replay and complete transitive axiom audit NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.DiophantineEquations.ErdosMoserPositiveSums

/-- The source interval is exactly the shifted range of positive bases.
Both `k=0` and `n=0` are included; no zero base is introduced. -/
theorem powerSum_succ_eq_shifted_range (k n : ℕ) :
    _root_.ErdosMoser.powerSum k (n + 1) =
      Finset.sum (Finset.range n) (fun i => (i + 1) ^ k) := by
  unfold _root_.ErdosMoser.powerSum
  simpa only [zero_add, Nat.Ico_zero_eq_range] using
    (Finset.sum_Ico_add' (fun i : ℕ => i ^ k) 0 n 1).symm

/-- A division-free Gauss identity for the same positive-base observation. -/
private theorem linear_powerSum_succ_mul_two (n : ℕ) :
    _root_.ErdosMoser.powerSum 1 (n + 1) * 2 = (n + 1) * n := by
  have hsum : _root_.ErdosMoser.powerSum 1 (n + 1) =
      Finset.sum (Finset.range (n + 1)) (fun i => i) := by
    rw [powerSum_succ_eq_shifted_range]
    simpa only [Nat.pow_one, add_zero] using
      (Finset.sum_range_succ' (fun i : ℕ => i) n).symm
  rw [hsum]
  simpa only [Nat.add_sub_cancel] using Finset.sum_range_id_mul_two (n + 1)

/-- Positive inputs have precisely the familiar exponent-one solution.
The premise excludes `m=0`, where the imported equation also holds. -/
theorem positive_input_one_solution_iff (m : ℕ) (hm : 0 < m) :
    _root_.ErdosMoser.powerSum 1 m = m ^ 1 ↔ m = 3 := by
  cases m with
  | zero => omega
  | succ n =>
    constructor
    · intro heq
      have hmul := linear_powerSum_succ_mul_two n
      rw [heq, Nat.pow_one] at hmul
      have hn : 2 = n := Nat.mul_left_cancel (Nat.succ_pos n) hmul
      omega
    · intro hmthree
      have hn : n = 2 := by omega
      subst n
      have hmul : _root_.ErdosMoser.powerSum 1 3 * 2 = 3 * 2 :=
        linear_powerSum_succ_mul_two 2
      have hsum : _root_.ErdosMoser.powerSum 1 3 = 3 :=
        Nat.mul_right_cancel (by decide : 0 < 2) hmul
      simpa only [Nat.pow_one] using hsum

/-- This is a reduction of the full positive-input statement, not its proof.
The right-hand higher-exponent exclusion remains an explicit unsupplied premise. -/
theorem positive_statement_iff_higher_exponent_exclusion :
    (∀ k m : ℕ, 0 < k → 0 < m →
      _root_.ErdosMoser.powerSum k m = m ^ k → k = 1 ∧ m = 3) ↔
    (∀ k m : ℕ, 2 ≤ k → 0 < m →
      _root_.ErdosMoser.powerSum k m ≠ m ^ k) := by
  constructor
  · intro h k m hk hm heq
    have hkone : k = 1 := (h k m (by omega) hm heq).1
    omega
  · intro h k m hk hm heq
    by_cases hkone : k = 1
    · refine ⟨hkone, ?_⟩
      apply (positive_input_one_solution_iff m hm).mp
      simpa only [hkone] using heq
    · exact False.elim (h k m (by omega) hm heq)

end GRWTSK.NumberTheory.DiophantineEquations.ErdosMoserPositiveSums
