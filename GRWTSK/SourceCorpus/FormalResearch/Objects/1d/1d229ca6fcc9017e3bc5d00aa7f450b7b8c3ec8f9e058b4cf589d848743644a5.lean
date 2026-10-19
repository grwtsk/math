import Mathematics.Boolean.Carrier

/-!
# Boolean identity neighborhood

Elementary bounded-lattice identities are exposed under source-facing names,
but proved by the canonical Mathlib structure.
-/

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

@[simp] theorem bot_join (a : B) : ⊥ ⊔ a = a := by simp
@[simp] theorem top_meet (a : B) : ⊤ ⊓ a = a := by simp
@[simp] theorem complement_join (a : B) : aᶜ ⊔ a = ⊤ := by simp
@[simp] theorem complement_meet (a : B) : aᶜ ⊓ a = ⊥ := by simp
@[simp] theorem join_idempotent (a : B) : a ⊔ a = a := by simp
@[simp] theorem meet_idempotent (a : B) : a ⊓ a = a := by simp
@[simp] theorem join_top (a : B) : a ⊔ ⊤ = ⊤ := by simp
@[simp] theorem top_join (a : B) : ⊤ ⊔ a = ⊤ := by simp
@[simp] theorem meet_bot (a : B) : a ⊓ ⊥ = ⊥ := by simp
@[simp] theorem bot_meet (a : B) : ⊥ ⊓ a = ⊥ := by simp

end Mathematics.Boolean
