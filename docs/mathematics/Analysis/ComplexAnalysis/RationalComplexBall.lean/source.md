# Complete source: GRWTSK.Analysis.Complex.RationalComplexBall

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e323c4a17697d7a307ae3e303cf96d4947e272b` · SHA-256 `9832b32602d3c9fde6bff3222203682eb0c76601f8f9f8e113972c75b1d72b6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalRoundedArithmetic
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Rational closed balls for complex source enclosures

This file packages a rational complex center and a nonnegative rational radius.
The semantic predicate is an ordinary complex norm enclosure. Addition of two
balls adds both centers and radii, with soundness following from the triangle
inequality. The real projection gives exact rational lower and upper endpoints.

The definitions are deliberately generic. They perform no transcendental
computation and do not infer a source enclosure from finite data. A consumer
must separately prove `Contains` for the actual complex quantity being bounded.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalComplexBall

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic

noncomputable section

/-- A closed complex ball with exact rational data. -/
structure Ball where
  center : QComplex
  radius : ℚ
  radius_nonneg : 0 ≤ radius
  deriving Repr

namespace Ball

/-- Semantic containment in the Euclidean complex norm. -/
def Contains (ball : Ball) (z : ℂ) : Prop :=
  ‖z - QComplex.embed ball.center‖ ≤ (ball.radius : ℝ)

/-- The exact zero ball. -/
def zero : Ball where
  center := QComplex.zero
  radius := 0
  radius_nonneg := le_rfl

/-- Minkowski addition of rational complex balls. -/
def add (left right : Ball) : Ball where
  center := QComplex.add left.center right.center
  radius := left.radius + right.radius
  radius_nonneg := add_nonneg left.radius_nonneg right.radius_nonneg

@[simp] theorem zero_center : zero.center = QComplex.zero := rfl
@[simp] theorem zero_radius : zero.radius = 0 := rfl
@[simp] theorem add_center (left right : Ball) :
    (left.add right).center = QComplex.add left.center right.center := rfl
@[simp] theorem add_radius (left right : Ball) :
    (left.add right).radius = left.radius + right.radius := rfl

/-- Zero is contained in the exact zero ball. -/
theorem zero_contains : zero.Contains 0 := by
  simp [Contains, zero]

/-- Soundness of rational-ball addition. -/
theorem contains_add {left right : Ball} {z w : ℂ}
    (hz : left.Contains z) (hw : right.Contains w) :
    (left.add right).Contains (z + w) := by
  change ‖(z + w) - QComplex.embed (QComplex.add left.center right.center)‖ ≤
    ((left.radius + right.radius : ℚ) : ℝ)
  rw [QComplex.embed_add]
  have hrewrite :
      (z + w) - (QComplex.embed left.center + QComplex.embed right.center) =
        (z - QComplex.embed left.center) +
          (w - QComplex.embed right.center) := by ring
  rw [hrewrite]
  calc
    ‖(z - QComplex.embed left.center) +
        (w - QComplex.embed right.center)‖ ≤
      ‖z - QComplex.embed left.center‖ +
        ‖w - QComplex.embed right.center‖ := norm_add_le _ _
    _ ≤ (left.radius : ℝ) + (right.radius : ℝ) :=
      add_le_add hz hw
    _ = ((left.radius + right.radius : ℚ) : ℝ) := by norm_num

/-- Rational lower endpoint of the real projection. -/
def realLower (ball : Ball) : ℚ := ball.center.re - ball.radius

/-- Rational upper endpoint of the real projection. -/
def realUpper (ball : Ball) : ℚ := ball.center.re + ball.radius

/-- The projected interval is valid because the radius is nonnegative. -/
theorem realLower_le_realUpper (ball : Ball) :
    ball.realLower ≤ ball.realUpper := by
  unfold realLower realUpper
  linarith [ball.radius_nonneg]

/-- Complex norm containment implies the corresponding rational real-part bounds. -/
theorem contains_re_bounds {ball : Ball} {z : ℂ}
    (contained : ball.Contains z) :
    (ball.realLower : ℝ) ≤ z.re ∧ z.re ≤ (ball.realUpper : ℝ) := by
  have hcomponent :
      |z.re - (QComplex.embed ball.center).re| ≤ (ball.radius : ℝ) := by
    calc
      |z.re - (QComplex.embed ball.center).re| =
          |(z - QComplex.embed ball.center).re| := by simp
      _ ≤ ‖z - QComplex.embed ball.center‖ :=
        Complex.abs_re_le_norm _
      _ ≤ (ball.radius : ℝ) := contained
  have hcenter : (QComplex.embed ball.center).re = (ball.center.re : ℝ) := by
    simp [QComplex.embed]
  rw [hcenter] at hcomponent
  rcases abs_le.mp hcomponent with ⟨hlower, hupper⟩
  constructor
  · simpa [realLower] using
      (show (ball.center.re : ℝ) - (ball.radius : ℝ) ≤ z.re by linarith)
  · simpa [realUpper] using
      (show z.re ≤ (ball.center.re : ℝ) + (ball.radius : ℝ) by linarith)

/-- The rational width of the real projection is exactly twice the radius. -/
theorem realUpper_sub_realLower (ball : Ball) :
    ball.realUpper - ball.realLower = 2 * ball.radius := by
  unfold realUpper realLower
  ring

end Ball

end

end GRWTSK.Analysis.Complex.RationalComplexBall
```
