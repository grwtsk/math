# Complete source: GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e2c36883bde8f8157af3ee24b9417797959e744` · SHA-256 `a34f9be05cc3d59d052fbf5cc9754946e6c7e81c444991f97e6238cab4909696`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Interval
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite primitive positive solutions of one linear equation

This module defines the duplicate-free finite count needed before the
Heath--Brown primitive lattice estimate can be stated at exact scope.  The
three box lengths remain independent.  The normalization uses real division
by the positive quantity `max (a*X) (max (b*Y) (c*Z))`.

No lattice estimate is proved here.  In particular, the proposition
`PrimitiveLinearBoxBoundAt` is an exact target predicate, not a supplied
inequality.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #427.
-/

namespace GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount

open Finset

/-- A point in the positive three-dimensional integer box. -/
abbrev Point := ℕ × ℕ × ℕ

/-- Positive coefficient and anisotropic box data with primitive coefficient
normal vector. -/
structure Data where
  a : ℕ
  b : ℕ
  c : ℕ
  X : ℕ
  Y : ℕ
  Z : ℕ
  a_pos : 0 < a
  b_pos : 0 < b
  c_pos : 0 < c
  X_pos : 0 < X
  Y_pos : 0 < Y
  Z_pos : 0 < Z
  coefficientPrimitive : Nat.gcd (Nat.gcd a b) c = 1

namespace Data

/-- The source equation `a*x+b*y=c*z`. -/
def LinearEquation (data : Data) (point : Point) : Prop :=
  data.a * point.1 + data.b * point.2.1 = data.c * point.2.2

/-- Primitive variable triple in the exact joint-gcd sense. -/
def VariablePrimitive (point : Point) : Prop :=
  Nat.gcd (Nat.gcd point.1 point.2.1) point.2.2 = 1

/-- Exact positive anisotropic-box predicate consumed by the finite count. -/
def PrimitivePositiveSolution (data : Data) (point : Point) : Prop :=
  1 ≤ point.1 ∧ point.1 ≤ data.X ∧
  1 ≤ point.2.1 ∧ point.2.1 ≤ data.Y ∧
  1 ≤ point.2.2 ∧ point.2.2 ≤ data.Z ∧
  VariablePrimitive point ∧ data.LinearEquation point

/-- Duplicate-free finite set of primitive positive solutions. -/
def primitivePositiveSolutions (data : Data) : Finset Point :=
  ((Finset.Icc 1 data.X) ×ˢ
      ((Finset.Icc 1 data.Y) ×ˢ (Finset.Icc 1 data.Z))).filter
    fun point => VariablePrimitive point ∧ data.LinearEquation point

@[simp] theorem mem_primitivePositiveSolutions
    {data : Data} {point : Point} :
    point ∈ data.primitivePositiveSolutions ↔
      data.PrimitivePositiveSolution point := by
  simp only [primitivePositiveSolutions, Finset.mem_filter,
    Finset.mem_product, Finset.mem_Icc]
  simp [PrimitivePositiveSolution, VariablePrimitive, LinearEquation,
    and_assoc]

/-- Exact natural-number count. -/
def primitivePositiveSolutionCount (data : Data) : ℕ :=
  data.primitivePositiveSolutions.card

/-- The count is literally the cardinality of the subtype selected by the
finite set; no duplicate-bearing list is used. -/
theorem card_solutionSubtype (data : Data) :
    Fintype.card {point : Point // point ∈ data.primitivePositiveSolutions} =
      data.primitivePositiveSolutionCount := by
  exact Fintype.card_coe _

/-- Membership extensionality for two finite solution sets. -/
theorem primitivePositiveSolutions_ext
    {left right : Data}
    (same : ∀ point : Point,
      left.PrimitivePositiveSolution point ↔
        right.PrimitivePositiveSolution point) :
    left.primitivePositiveSolutions = right.primitivePositiveSolutions := by
  ext point
  simpa using same point

/-- An empty finite set is equivalent to absence of an admissible point. -/
theorem primitivePositiveSolutionCount_eq_zero_iff (data : Data) :
    data.primitivePositiveSolutionCount = 0 ↔
      ¬ ∃ point : Point, data.PrimitivePositiveSolution point := by
  rw [primitivePositiveSolutionCount, Finset.card_eq_zero,
    Finset.eq_empty_iff_forall_not_mem]
  simp only [mem_primitivePositiveSolutions]
  push_neg
  rfl

/-- The anisotropic coefficient-height denominator. -/
def scaleHeight (data : Data) : ℕ :=
  max (data.a * data.X)
    (max (data.b * data.Y) (data.c * data.Z))

/-- Positivity needed before real division. -/
theorem scaleHeight_pos (data : Data) : 0 < data.scaleHeight := by
  unfold scaleHeight
  exact lt_of_lt_of_le (Nat.mul_pos data.a_pos data.X_pos)
    (Nat.le_max_left _ _)

@[simp] theorem scaleHeight_ne_zero (data : Data) :
    data.scaleHeight ≠ 0 :=
  (data.scaleHeight_pos).ne'

/-- Exact real normalization in the target Heath--Brown inequality. -/
def normalizedPrimitiveVolume (data : Data) : ℝ :=
  1 + ((data.X * data.Y * data.Z : ℕ) : ℝ) /
    (data.scaleHeight : ℝ)

/-- The normalized right-hand factor is strictly positive. -/
theorem normalizedPrimitiveVolume_pos (data : Data) :
    0 < data.normalizedPrimitiveVolume := by
  unfold normalizedPrimitiveVolume
  have denominator : 0 < (data.scaleHeight : ℝ) := by
    exact_mod_cast data.scaleHeight_pos
  positivity

/-- Exact finite inequality at a displayed constant.  This is the theorem
shape to be discharged by the missing primitive lattice argument. -/
def PrimitiveLinearBoxBoundAt (data : Data) (K : ℝ) : Prop :=
  (data.primitivePositiveSolutionCount : ℝ) ≤
    K * data.normalizedPrimitiveVolume

/-- A uniform absolute constant is independent of every coefficient and box
length.  Naming this proposition supplies no witness. -/
def HasAbsolutePrimitiveLinearBoxBound : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∀ data : Data,
    data.PrimitiveLinearBoxBoundAt K

/-- Coefficient primitivity and variable primitivity are distinct fields of
the eventual theorem. -/
theorem coefficientPrimitive_available (data : Data) :
    Nat.gcd (Nat.gcd data.a data.b) data.c = 1 :=
  data.coefficientPrimitive

end Data

end GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
```
