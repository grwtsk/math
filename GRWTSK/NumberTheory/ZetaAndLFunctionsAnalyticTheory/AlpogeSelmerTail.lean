import Mathlib.GroupTheory.Index
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Algebra.Group.Subgroup.ZPowers.Basic

/-! # Controlling finite torsion lost by Hurewicz and subgroup transfer

The companion applies these bounds to a torsion-free congruence cover and
the residual étale cohomology of rings of integers.
-/

namespace GRWTSK.AlpogeSelmerTail

variable {G H J : Type*} [AddCommGroup G] [AddCommGroup H] [AddCommGroup J]

/-- The subgroup killed by a natural number. -/
def killed (G : Type*) [AddCommGroup G] (n : ℕ) : AddSubgroup G :=
  (nsmulAddMonoidHom n : G →+ G).ker

theorem card_eq_kernel_range [Finite G] (f : G →+ H) :
    Nat.card G = Nat.card f.ker * Nat.card f.range := by
  rw [← AddSubgroup.index_ker, AddSubgroup.card_mul_index]

/-- Multiplication by p maps consecutive torsion layers into one another. -/
def layerMap (G : Type*) [AddCommGroup G] (p a : ℕ) :
    killed G (p^(a+1)) →+ killed G (p^a) where
  toFun x := ⟨p • x.val, by
    change p^a • p • x.val = 0
    rw [← mul_nsmul, ← pow_succ']
    exact x.property⟩
  map_zero' := by ext; simp
  map_add' x y := by ext; simp [smul_add]

theorem card_killed_pow_le [Finite G] (p a : ℕ) :
    Nat.card (killed G (p^a)) ≤ Nat.card (killed G p) ^ a := by
  induction a with
  | zero =>
    have h : killed G 1 = ⊥ := by ext x; simp [killed]
    simp [h]
  | succ a ih =>
    let f := layerMap G p a
    have hk : Nat.card f.ker ≤ Nat.card (killed G p) := by
      let i (x : f.ker) : killed G p := ⟨x.val.val, congrArg Subtype.val (AddMonoidHom.mem_ker.mp x.property)⟩
      apply Nat.card_le_card_of_injective i
      intro x y he
      exact Subtype.ext (Subtype.ext (congrArg (fun z : killed G p => z.val) he))
    have hr : Nat.card f.range ≤ Nat.card (killed G (p^a)) := Nat.card_le_card_of_injective _
      (Subtype.val_injective (p := fun y => y ∈ f.range))
    calc
      _ = Nat.card f.ker * Nat.card f.range := card_eq_kernel_range f
      _ ≤ Nat.card (killed G p) * Nat.card (killed G p)^a := Nat.mul_le_mul hk (hr.trans ih)
      _ = _ := (pow_succ' _ _).symm

/-- A Hurewicz kernel of exponent A and a transfer composite equal to B
give a bound AB on the exponent of the joint kernel. -/
theorem composite_kernel_killed (h : G →+ H) (transfer : H →+ J) (push : J →+ H)
    (A B : ℕ) (ha : ∀ x ∈ h.ker, A • x = 0)
    (hb : ∀ y, push (transfer y) = B • y) :
    (transfer.comp h).ker ≤ killed G (A * B) := by
  intro x hx
  have he : transfer (h x) = 0 := hx
  have hz : h (B • x) = 0 := by rw [map_nsmul, ← hb, he, map_zero]
  change (A * B) • x = 0
  rw [Nat.mul_comm, mul_nsmul]
  exact ha _ hz

/-- If a composite has kernel killed by a bounded prime power, only its
first torsion layer and the order of its image are needed for the total. -/
theorem card_le_of_kernel_killed [Finite G] (f : G →+ H) (p a : ℕ)
    (h : f.ker ≤ killed G (p^a)) :
    Nat.card G ≤ Nat.card (killed G p)^a * Nat.card f.range := by
  rw [card_eq_kernel_range f]
  apply Nat.mul_le_mul_right
  exact (Nat.card_le_card_of_injective (Set.inclusion h) (Set.inclusion_injective h)).trans
    (card_killed_pow_le p a)

end GRWTSK.AlpogeSelmerTail
