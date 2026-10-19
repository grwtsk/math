import Mathlib.Order.BooleanAlgebra.Basic

/-!
# Canonical Boolean carrier

The retained corpus introduced a second complemented distributive lattice
class.  This reconstruction uses Mathlib's canonical `BooleanAlgebra`; the
source operations become `⊔`, `⊓`, complement, `⊥`, and `⊤`.
-/

namespace Mathematics.Boolean

/-- Canonical replacement for the corpus-local Boolean algebra class. -/
abbrev Algebra (B : Type*) := _root_.BooleanAlgebra B

/-- The source's hand-built Boolean instance is already canonical in Mathlib. -/
abbrev boolAlgebra : Algebra Bool := inferInstance

@[simp] theorem bool_join (a b : Bool) :
    a ⊔ b = (a || b) := by
  cases a <;> cases b <;> rfl

@[simp] theorem bool_meet (a b : Bool) :
    a ⊓ b = (a && b) := by
  cases a <;> cases b <;> rfl

@[simp] theorem bool_complement (a : Bool) :
    aᶜ = !a := by
  cases a <;> rfl

end Mathematics.Boolean
