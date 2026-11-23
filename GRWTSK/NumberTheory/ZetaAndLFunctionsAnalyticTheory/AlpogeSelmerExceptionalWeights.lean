import Mathlib.GroupTheory.Index
import Mathlib.Tactic

/-! # Ambiguous two-classes in conductor bounds

An involution on a group killed by two bounds its order by the square
of its fixed subgroup. The numerical inequalities support the degree-ten
and real-quadratic estimates in the adjacent manuscript.
-/

namespace GRWTSK.AlpogeSelmerExceptionalWeights

/-- In characteristic two an involution plus the identity squares to zero. -/
theorem involution_sum_square_zero {A : Type*} [AddCommGroup A]
    (s : A →+ A) (hs : Function.Involutive s) (h₂ : ∀ x : A, x + x = 0) (a : A) :
    (s + AddMonoidHom.id A) ((s + AddMonoidHom.id A) a) = 0 := by
  change s (s a + a) + (s a + a) = 0
  rw [map_add, hs]
  calc
    a + s a + (s a + a) = (a + a) + (s a + s a) := by abel
    _ = 0 := by simp [h₂]

/-- The range of a square-zero endomorphism injects into its kernel. -/
theorem card_le_kernel_square {A : Type*} [AddCommGroup A] [Finite A]
    (f : A →+ A) (hf : ∀ a, f (f a) = 0) :
    Nat.card A ≤ (Nat.card f.ker)^2 := by
  have h : f.range ≤ f.ker := by
    rintro _ ⟨a, rfl⟩
    exact hf a
  have hc : Nat.card f.range ≤ Nat.card f.ker :=
    Nat.card_le_card_of_injective (AddSubgroup.inclusion h) (AddSubgroup.inclusion_injective h)
  rw [← f.ker.card_mul_index, AddSubgroup.index_ker, pow_two]
  exact Nat.mul_le_mul_left _ hc

/-- The kernel counted above consists of precisely the fixed classes. -/
theorem sum_mem_kernel_iff_fixed {A : Type*} [AddCommGroup A]
    (s : A →+ A) (h₂ : ∀ x : A, x + x = 0) (a : A) :
    a ∈ (s + AddMonoidHom.id A).ker ↔ s a = a := by
  change s a + a = 0 ↔ s a = a
  rw [← h₂ a]
  exact add_right_cancel_iff

/-- Squaring removes the half-power in Emery's discriminant factor.
The second hypothesis supplies the independent two-class estimate. -/
theorem decic_conductor_budget (D f C a : ℕ) (hD : D ≤ f^9)
    (ha : a^2 ≤ C*f^9) :
    a^2 * D^3 ≤ C * (f^18)^2 := by
  calc
    _ ≤ (C*f^9) * (f^9)^3 := Nat.mul_le_mul ha (Nat.pow_le_pow_left hD 3)
    _ = _ := by ring

/-- A quadratic field has at most n ideals of norm n for n≥1. If Minkowski
supplies a representative with norm at most X in every class, this elementary
sum is sufficient to rule out a factor p when X is at most √p/2. -/
theorem sum_norm_counts_le_square (X : ℕ) :
    ∑ n ∈ Finset.range (X+1), n ≤ X^2 := by
  induction X with
  | zero => simp
  | succ X ih =>
    rw [Finset.sum_range_succ]
    nlinarith

end GRWTSK.AlpogeSelmerExceptionalWeights
