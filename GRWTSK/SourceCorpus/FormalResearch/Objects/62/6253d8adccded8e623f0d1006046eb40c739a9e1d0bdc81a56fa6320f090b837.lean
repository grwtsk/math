import Mathlib.Algebra.Order.Pi
import Mathlib.Data.Rat.Lemmas
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Exact rational diagonal operator order

This is a deliberately finite-coordinate, exact-arithmetic kernel.  It proves
the order algebra needed by the early capacity packages without claiming a
general bounded-operator or infinite-dimensional realization.
-/

namespace Mathematics.SemiLocalDefect

abbrev DiagonalOperator (Coordinate : Type u) :=
  Coordinate → ℚ

def OperatorNonnegative
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, 0 ≤ operator coordinate

def OperatorLe
    {Coordinate : Type u}
    (left right : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, left coordinate ≤ right coordinate

def identityOperator
    (Coordinate : Type u) :
    DiagonalOperator Coordinate :=
  fun _ => 1

theorem operatorLe_refl
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) :
    OperatorLe operator operator :=
  fun _ => le_rfl

theorem operatorLe_trans
    {Coordinate : Type u}
    {first second third : DiagonalOperator Coordinate}
    (first_second : OperatorLe first second)
    (second_third : OperatorLe second third) :
    OperatorLe first third :=
  fun coordinate =>
    le_trans
      (first_second coordinate)
      (second_third coordinate)

theorem operator_increment_nonnegative
    {Coordinate : Type u}
    {source target : DiagonalOperator Coordinate}
    (ordered : OperatorLe source target) :
    OperatorNonnegative (target - source) :=
  fun coordinate =>
    sub_nonneg.mpr (ordered coordinate)

theorem nonnegative_add
    {Coordinate : Type u}
    {left right : DiagonalOperator Coordinate}
    (left_nonnegative : OperatorNonnegative left)
    (right_nonnegative : OperatorNonnegative right) :
    OperatorNonnegative (left + right) :=
  fun coordinate =>
    add_nonneg
      (left_nonnegative coordinate)
      (right_nonnegative coordinate)

end Mathematics.SemiLocalDefect
