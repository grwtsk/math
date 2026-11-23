import Mathlib.Algebra.CharP.Lemmas
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.Algebra.Group.Subgroup.Ker
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FieldSimp

/-! # Residual descent for strict Selmer classes

A strict class killed by the uniformizer has a unique strict residual lift
when restriction identifies the global and local coefficient-map kernels.
Finite scalar-character cocycles and class-group homomorphisms describe
the two remaining algebraic steps.
-/

namespace GRWTSK.AlpogeSelmerResidual

section Diagram

variable {B A b a : Type*} [AddCommGroup B] [AddCommGroup A]
    [AddCommGroup b] [AddCommGroup a]

/-- The global-to-local map on the kernels of coefficient extension. -/
def onCoefficientKernel (i : B →+ A) (j : b →+ a) (r : B →+ b) (s : A →+ a)
    (commutes : ∀ x, j (r x) = s (i x)) : i.ker →+ j.ker where
  toFun z := ⟨r z, by rw [AddMonoidHom.mem_ker, commutes, AddMonoidHom.mem_ker.mp z.property, map_zero]⟩
  map_zero' := by ext; simp
  map_add' _ _ := by ext; simp

/-- Coefficient extension maps strict residual classes to strict classes in its image. -/
def strictMap (i : B →+ A) (j : b →+ a) (r : B →+ b) (s : A →+ a)
    (commutes : ∀ x, j (r x) = s (i x)) : r.ker →+ (i.range ⊓ s.ker : AddSubgroup A) where
  toFun z := ⟨i z, ⟨⟨z, rfl⟩, by
    change s (i z.val) = 0
    rw [← commutes, AddMonoidHom.mem_ker.mp z.property, map_zero]⟩⟩
  map_zero' := by ext; simp
  map_add' _ _ := by ext; simp

theorem strictMap_bijective (i : B →+ A) (j : b →+ a) (r : B →+ b) (s : A →+ a)
    (commutes : ∀ x, j (r x) = s (i x))
    (hk : Function.Bijective (onCoefficientKernel i j r s commutes)) :
    Function.Bijective (strictMap i j r s commutes) := by
  constructor
  · intro x y hxy
    have hi : i x.val = i y.val := congrArg Subtype.val hxy
    let z : i.ker := ⟨x.val - y.val, by simp [AddMonoidHom.mem_ker, hi]⟩
    have h0 : onCoefficientKernel i j r s commutes z = 0 := by
      apply Subtype.ext
      change r (x.val - y.val) = 0
      rw [map_sub, AddMonoidHom.mem_ker.mp x.property, AddMonoidHom.mem_ker.mp y.property, sub_zero]
    have hz := hk.1 (h0.trans (map_zero _).symm)
    apply Subtype.ext
    exact sub_eq_zero.mp (congrArg Subtype.val hz : z.val = 0)
  · intro x
    obtain ⟨z, hz⟩ := x.property.1
    have hloc : r z ∈ j.ker := by rw [AddMonoidHom.mem_ker, commutes, hz]; exact x.property.2
    obtain ⟨v, hv⟩ := hk.2 ⟨r z, hloc⟩
    have hv' : r v.val = r z := congrArg Subtype.val hv
    refine ⟨⟨z - v.val, by simp [AddMonoidHom.mem_ker, hv']⟩, ?_⟩
    apply Subtype.ext
    change i (z - v.val) = x.val
    rw [map_sub, AddMonoidHom.mem_ker.mp v.property, sub_zero, hz]

end Diagram

/-- Scalar cocycles of a nontrivial character of an abelian quotient are coboundaries. -/
theorem scalar_cocycle_coboundary {G k : Type*} [CommGroup G] [Field k]
    (ρ : G →* kˣ) (c : G → k) (hc : ∀ g h, c (g*h) = c g + (ρ g : k) * c h)
    {g : G} (hg : (ρ g : k) ≠ 1) : ∃ m : k, ∀ h, c h = (ρ h : k) * m - m := by
  refine ⟨c g / ((ρ g : k) - 1), fun h => ?_⟩
  have he := (hc g h).symm.trans ((congrArg c (mul_comm g h)).trans (hc h g))
  field_simp [sub_ne_zero.mpr hg]
  linear_combination he

/-- An unramified residual character with values in characteristic p vanishes
when the class number is prime to p. -/
theorem class_character_eq_zero {C k : Type*} [AddGroup C] [Finite C] [Field k]
    (p : ℕ) [CharP k p] (f : C →+ k) (hp : ¬ p ∣ Nat.card C) (x : C) : f x = 0 := by
  have h := congrArg f (card_nsmul_eq_zero' (x := x))
  rw [map_nsmul, map_zero, nsmul_eq_mul] at h
  exact (mul_eq_zero.mp h).resolve_left (fun hz => hp ((CharP.cast_eq_zero_iff k p _).mp hz))

/-- The order of the residual cyclotomic character at twist e. -/
theorem residual_order {G : Type*} [Group G] [Finite G] (u : G) {p : ℕ} (hu : orderOf u = p - 1) (e : ℕ) :
    orderOf (u ^ e) = (p - 1) / (p - 1).gcd e := by
  rw [orderOf_pow, hu, Nat.gcd_comm]

/-- Equality at two consecutive kernels certifies every higher torsion layer. -/
theorem higher_layers_stabilize {M : Type*} [Zero M] (f : M → M) (a : ℕ)
    (h : ∀ x, f^[a+1] x = 0 → f^[a] x = 0) :
    ∀ n x, f^[a+n] x = 0 → f^[a] x = 0 := by
  intro n
  induction n with
  | zero => exact fun _ hx => hx
  | succ n ih =>
    intro x hx
    apply h
    rw [Function.iterate_succ_apply]
    apply ih (f x)
    simpa only [Nat.add_succ, Function.iterate_succ_apply] using hx

/-- A torsion module has no undetected classes above a stabilized layer. -/
theorem full_torsion_at_stable_layer {M : Type*} [Zero M] (f : M → M) (hf : f 0 = 0)
    (a : ℕ) (h : ∀ x, f^[a+1] x = 0 → f^[a] x = 0)
    (ht : ∀ x, ∃ n, f^[n] x = 0) (x : M) : f^[a] x = 0 := by
  obtain ⟨n, hn⟩ := ht x
  apply higher_layers_stabilize f a h n
  rw [Function.iterate_add_apply, hn, Function.iterate_fixed hf]

end GRWTSK.AlpogeSelmerResidual
