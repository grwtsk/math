/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational closed intervals with semantic real containment

A quantitative source theorem often supplies different lower and upper errors.
A symmetric center-radius enclosure is therefore not the only useful exact
interface. This file records a closed rational interval, its real containment
predicate and its exact width.

The data carry no source theorem by themselves. In particular, a narrow interval
does not imply that it contains a requested value or natural number.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.RationalClosedInterval

noncomputable section

/-- A valid closed interval with rational endpoints. -/
structure Interval where
  lower : ℚ
  upper : ℚ
  valid : lower ≤ upper
  deriving Repr

namespace Interval

/-- Semantic containment after embedding the rational endpoints in the reals. -/
def Contains (interval : Interval) (x : ℝ) : Prop :=
  (interval.lower : ℝ) ≤ x ∧ x ≤ (interval.upper : ℝ)

/-- Exact rational width. -/
def width (interval : Interval) : ℚ :=
  interval.upper - interval.lower

/-- Every valid interval has nonnegative width. -/
theorem width_nonneg (interval : Interval) :
    0 ≤ interval.width := by
  unfold width
  linarith [interval.valid]

@[simp] theorem cast_width (interval : Interval) :
    (interval.width : ℝ) =
      (interval.upper : ℝ) - (interval.lower : ℝ) := by
  simp [width]

/-- The exact singleton interval. -/
def singleton (q : ℚ) : Interval where
  lower := q
  upper := q
  valid := le_rfl

@[simp] theorem singleton_width (q : ℚ) :
    (singleton q).width = 0 := by
  simp [singleton, width]

/-- Exact rational containment of the singleton's embedded value. -/
theorem singleton_contains (q : ℚ) :
    (singleton q).Contains (q : ℝ) := by
  simp [Contains, singleton]

/-- Minkowski addition of rational intervals. -/
def add (left right : Interval) : Interval where
  lower := left.lower + right.lower
  upper := left.upper + right.upper
  valid := add_le_add left.valid right.valid

/-- Soundness of interval addition. -/
theorem contains_add {left right : Interval} {x y : ℝ}
    (hx : left.Contains x) (hy : right.Contains y) :
    (left.add right).Contains (x + y) := by
  rcases hx with ⟨hxLower, hxUpper⟩
  rcases hy with ⟨hyLower, hyUpper⟩
  unfold Contains
  change
    (((left.lower + right.lower : ℚ) : ℝ) ≤ x + y ∧
      x + y ≤ ((left.upper + right.upper : ℚ) : ℝ))
  norm_num only [Rat.cast_add]
  exact ⟨add_le_add hxLower hyLower, add_le_add hxUpper hyUpper⟩

@[simp] theorem add_width (left right : Interval) :
    (left.add right).width = left.width + right.width := by
  unfold add width
  dsimp
  ring

/-- A narrow interval can still miss a proposed value. -/
theorem narrow_does_not_imply_contains_fixture :
    let interval : Interval :=
      { lower := 141 / 10, upper := 149 / 10, valid := by norm_num }
    interval.width < 1 ∧ ¬ interval.Contains (14 : ℝ) := by
  dsimp [width, Contains]
  norm_num

end Interval

end

end GRWTSK.Analysis.Real.RationalClosedInterval
