/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold

set_option autoImplicit false

/-!
# Exact rational windows for a source-computed dyadic seed

These are equalities of the OLD rounding operations, not alternate error bounds.
The rational input and full pre-rounding error are external fixed expressions.
No window certifies an unrelated claimed Taylor seed or logarithm.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.IntegerSeedWindows

open RationalComplexEnclosure RationalDyadicArithmetic
open IntegerDyadicSquare (State decode)
open RationalNewtonDisk (magnitude)

def FloorWindow (bits : ℕ) (x : ℚ) (n : ℤ) : Prop :=
  (n : ℚ) ≤ x * denominator bits ∧ x * denominator bits < (n : ℚ) + 1

def CeilWindow (bits : ℕ) (x : ℚ) (n : ℤ) : Prop :=
  (n : ℚ) - 1 < x * denominator bits ∧ x * denominator bits ≤ (n : ℚ)

theorem floor_eq_of_window {bits : ℕ} {x : ℚ} {n : ℤ}
    (h : FloorWindow bits x n) : ⌊x * denominator bits⌋ = n :=
  Int.floor_eq_iff.mpr h

theorem ceil_eq_of_window {bits : ℕ} {x : ℚ} {n : ℤ}
    (h : CeilWindow bits x n) : ⌈x * denominator bits⌉ = n :=
  Int.ceil_eq_iff.mpr h

theorem down_eq_of_window {bits : ℕ} {x : ℚ} {n : ℤ}
    (h : FloorWindow bits x n) : down bits x = (n : ℚ) / denominator bits := by
  rw [down, floor_eq_of_window h]

theorem up_eq_of_window {bits : ℕ} {x : ℚ} {n : ℤ}
    (h : CeilWindow bits x n) : up bits x = (n : ℚ) / denominator bits := by
  rw [up, ceil_eq_of_window h]

theorem rounded_eq_of_windows {bits : ℕ} {u : Coordinates} {x : State}
    (hr : FloorWindow bits u.1 x.re) (hi : FloorWindow bits u.2 x.im) :
    rounded bits u = (decode bits x).mid := by
  simp only [rounded, decode, IntegerDyadicSquare.scale_cast,
    down_eq_of_window hr, down_eq_of_window hi]

/-- The whole center displacement is charged BEFORE the radius ceiling. -/
theorem roundBall_eq_of_windows {bits : ℕ} {b : Ball} {x : State}
    (hr : FloorWindow bits b.mid.1 x.re) (hi : FloorWindow bits b.mid.2 x.im)
    (he : CeilWindow bits (b.rad + magnitude (sub (decode bits x).mid b.mid)) x.error) :
    roundBall bits b = decode bits x := by
  have hv := rounded_eq_of_windows hr hi
  change Ball.mk _ _ = Ball.mk _ _
  apply congrArg₂ Ball.mk
  · exact hv
  · change up bits (b.rad + magnitude (sub (rounded bits b.mid) b.mid)) = _
    rw [hv, up_eq_of_window he]
    simp only [decode, IntegerDyadicSquare.scale_cast]

/-- The seed is the actual old polynomial; its tail and floor displacement remain. -/
theorem initial_eq_of_windows {bits squarings terms : ℕ} {w : Coordinates} {x : State}
    (hr : FloorWindow bits
      (RationalExpStateFold.taylor (divNat w (2^squarings)) terms).1 x.re)
    (hi : FloorWindow bits
      (RationalExpStateFold.taylor (divNat w (2^squarings)) terms).2 x.im)
    (he : CeilWindow bits (RationalExpTrace.seedTail (magnitude w) squarings terms +
      magnitude (sub (RationalExpStateFold.taylor (divNat w (2^squarings)) terms)
        (decode bits x).mid)) x.error) :
    IntegerExpStateFold.initial bits w squarings terms = x := by
  have hv := rounded_eq_of_windows hr hi
  change State.mk _ _ _ = State.mk x.re x.im x.error
  congr 1
  · exact floor_eq_of_window hr
  · exact floor_eq_of_window hi
  · rw [hv]
    exact ceil_eq_of_window he

/-- Endpoint conventions are not interchangeable, even at exact integers. -/
theorem floor_upper_reject : ¬ FloorWindow 0 1 0 := by
  norm_num [FloorWindow, denominator]

theorem ceil_lower_reject : ¬ CeilWindow 0 0 1 := by
  norm_num [CeilWindow, denominator]

theorem negative_floor_window : FloorWindow 3 (-1/3) (-3) := by
  norm_num [FloorWindow, denominator]

end GRWTSK.Analysis.ErrorBounds.IntegerSeedWindows
