/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CorrelationPairing
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.NormCast

/-!
# Quadratic-interval endpoints for the actual closed-right Chebyshev source

This #189 leaf reuses `SourcePairing.chebyshevPrimePower`; it does not define a
second prime-power count. Shifting an integer into its right-hand open unit cell
preserves that count. A positive shift is nonintegral, permitting a later adapter
to the noninteger explicit formula without substituting a prime-power endpoint.
The explicit formula, prime-power correction estimate and zero-tail theorem are
not proved in this module. Source draft; direct elaboration and audit are pending.
-/

namespace GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals

open GRWTSK.RiemannHypothesis.SourcePairing

noncomputable section

/-- The floor inventory is unchanged throughout the right-hand unit cell. -/
theorem floor_nat_add_shift (m : ℕ) (δ : ℝ) (hδ : 0 ≤ δ) (hδ1 : δ < 1) :
    ⌊(m : ℝ) + δ⌋₊ = m := by
  apply (Nat.floor_eq_iff (add_nonneg (Nat.cast_nonneg m) hδ)).2
  constructor <;> linarith

/-- A strictly interior shifted endpoint is not the cast of any natural number. -/
theorem nat_add_shift_ne_natCast (m k : ℕ) (δ : ℝ)
    (hδ : 0 < δ) (hδ1 : δ < 1) : (m : ℝ) + δ ≠ (k : ℝ) := by
  intro heq
  have hf := floor_nat_add_shift m δ hδ.le hδ1
  rw [heq, Nat.floor_natCast] at hf
  subst k
  linarith

/-- Equality of the actual inventories yields equality of the actual source count. -/
theorem chebyshevPrimePower_nat_add_shift (m : ℕ) (δ : ℝ)
    (hδ : 0 ≤ δ) (hδ1 : δ < 1) :
    chebyshevPrimePower ((m : ℝ) + δ) = chebyshevPrimePower (m : ℝ) := by
  simp only [chebyshevPrimePower, floor_nat_add_shift m δ hδ hδ1, Nat.floor_natCast]

/-- The chosen half-integer endpoint. -/
def squareEndpoint (n : ℕ) : ℝ := (n : ℝ) ^ 2 + 1 / 2

/-- The analytic explicit-formula domain excludes the zero stage. -/
theorem squareEndpoint_gt_one (n : ℕ) (hn : 1 ≤ n) : 1 < squareEndpoint n := by
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  dsimp [squareEndpoint]
  nlinarith [sq_nonneg ((n : ℝ) - 1)]

/-- Half-integer square endpoints are never natural-number endpoints. -/
theorem squareEndpoint_ne_natCast (n k : ℕ) : squareEndpoint n ≠ (k : ℝ) := by
  have hpow : ((n ^ 2 : ℕ) : ℝ) = (n : ℝ) ^ 2 := Nat.cast_pow (α := ℝ) n 2
  change (n : ℝ) ^ 2 + 1 / 2 ≠ (k : ℝ)
  rw [← hpow]
  exact nat_add_shift_ne_natCast (n ^ 2) k (1 / 2) (by norm_num) (by norm_num)

/-- Both endpoint counts retain the literal inclusive square cutoff. -/
theorem chebyshevPrimePower_squareEndpoint (n : ℕ) :
    chebyshevPrimePower (squareEndpoint n) = chebyshevPrimePower ((n : ℝ) ^ 2) := by
  have hpow : ((n ^ 2 : ℕ) : ℝ) = (n : ℝ) ^ 2 := Nat.cast_pow (α := ℝ) n 2
  change chebyshevPrimePower ((n : ℝ) ^ 2 + 1 / 2) =
    chebyshevPrimePower ((n : ℝ) ^ 2)
  rw [← hpow]
  exact chebyshevPrimePower_nat_add_shift (n ^ 2) (1 / 2) (by norm_num) (by norm_num)

/-- A common endpoint shift does not change the main-term width. -/
theorem squareEndpoint_width (n : ℕ) :
    squareEndpoint (n + 1) - squareEndpoint n = 2 * (n : ℝ) + 1 := by
  simp only [squareEndpoint, Nat.cast_add, Nat.cast_one]
  ring

/-- This is the actual prime-power count increment, not a prime-existence claim. -/
def squareIncrement (n : ℕ) : ℝ :=
  chebyshevPrimePower (((n : ℝ) + 1) ^ 2) - chebyshevPrimePower ((n : ℝ) ^ 2)

/-- The finite source difference agrees exactly with the shifted-endpoint difference. -/
theorem squareIncrement_eq_shifted (n : ℕ) :
    squareIncrement n =
      chebyshevPrimePower (squareEndpoint (n + 1)) -
        chebyshevPrimePower (squareEndpoint n) := by
  simp only [squareIncrement, chebyshevPrimePower_squareEndpoint, Nat.cast_add, Nat.cast_one]

/-- Subtracting the width agrees with differencing the source's centered error. -/
theorem squareIncrement_error (n : ℕ) :
    squareIncrement n - (2 * (n : ℝ) + 1) =
      chebyshevError (((n : ℝ) + 1) ^ 2) - chebyshevError ((n : ℝ) ^ 2) := by
  simp only [squareIncrement, chebyshevError]
  ring

/-- Shift one is outside the allowed cell and changes the integer inventory. -/
theorem shift_one_control (m : ℕ) : ⌊(m : ℝ) + 1⌋₊ ≠ m := by
  have hf : ⌊(m : ℝ) + 1⌋₊ = m + 1 := by
    simpa only [Nat.cast_add, Nat.cast_one] using (Nat.floor_natCast (R := ℝ) (m + 1))
  rw [hf]
  exact Nat.succ_ne_self m

end

end GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals
