import Mathematics.Boolean.Absorption

/-!
# Boolean complement neighborhood

Complement uniqueness, involution, and De Morgan laws are retained as
elementary consequences rather than primitive fields.
-/

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

theorem complement_unique (a b : B)
    (hJoin : a ⊔ b = ⊤)
    (hMeet : a ⊓ b = ⊥) :
    b = aᶜ :=
  (_root_.compl_unique hMeet hJoin).symm

@[simp] theorem complement_involutive (a : B) :
    aᶜᶜ = a := by simp

theorem complement_join_eq_meet (a b : B) :
    (a ⊔ b)ᶜ = aᶜ ⊓ bᶜ := by
  exact (_root_.compl_sup : (a ⊔ b)ᶜ = aᶜ ⊓ bᶜ)

theorem complement_meet_eq_join (a b : B) :
    (a ⊓ b)ᶜ = aᶜ ⊔ bᶜ := by
  exact (_root_.compl_inf : (a ⊓ b)ᶜ = aᶜ ⊔ bᶜ)

end Mathematics.Boolean
