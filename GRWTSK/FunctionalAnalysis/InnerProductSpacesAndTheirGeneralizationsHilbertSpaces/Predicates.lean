import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathematics.SemiLocalDefect.WP1.All

/-!
# Fixed-Hilbert operator predicate primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

open scoped InnerProductSpace

abbrev HilbertEnd
    (H : Type*)
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] :=
  H →L[ℂ] H

def OperatorSelfAdjoint
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  ∀ x y,
    ⟪A x, y⟫_ℂ =
    ⟪x, A y⟫_ℂ

def OperatorIdempotent
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  A.comp A = A

def OperatorNonnegative
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  ∀ x,
    0 ≤ Complex.re ⟪x, A x⟫_ℂ

def OperatorLE
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A B : HilbertEnd H) :
    Prop :=
  OperatorNonnegative (B - A)

end Mathematics.SemiLocalDefect.SoninCore
