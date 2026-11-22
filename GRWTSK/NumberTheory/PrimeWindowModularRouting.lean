/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeWindowGoodReduction

/-!
# Routing when reduced prime addresses collide

Interpolation can still represent a prescribed slot map after reduction
if the map respects the collision classes. Interpolation uses one node
per distinct residue.
-/

set_option autoImplicit false
noncomputable section
open Polynomial

namespace GRWTSK.NumberTheory.PrimeWindowGoodReduction

theorem exists_modular_route_iff {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ)
    (next : Fin 95 → Fin 95) :
    (∃ f : Polynomial (ZMod q), ∀ i, f.eval (modAddress q k i) = modAddress q k (next i)) ↔
      ∀ i j, modAddress q k i = modAddress q k j →
        modAddress q k (next i) = modAddress q k (next j) := by
  constructor
  · rintro ⟨f, evaluates⟩ i j collision
    rw [← evaluates i, ← evaluates j, collision]
  · intro compatible
    classical
    let a := modAddress q k
    let nodes := Finset.univ.image a
    let data (x : ZMod q) : ZMod q :=
      if h : ∃ i, a i = x then a (next (Classical.choose h)) else 0
    refine ⟨Lagrange.interpolate nodes id data, fun i => ?_⟩
    have mem : a i ∈ nodes := Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩
    have he : ∃ j, a j = a i := ⟨i, rfl⟩
    have ev := Lagrange.eval_interpolate_at_node data (Function.injective_id.injOn) mem
    change (Lagrange.interpolate nodes id data).eval (a i) = a (next i)
    change (Lagrange.interpolate nodes id data).eval (a i) = data (a i) at ev
    rw [ev, show data (a i) = a (next (Classical.choose he)) by simp only [data, dite_eq_left he]]
    exact compatible _ i (Classical.choose_spec he)

/-- Good reduction lifts any supplied slot map to a polynomial on the
residue nodes. -/
theorem exists_modular_route_of_injective {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ)
    (good : Function.Injective (modAddress q k)) (next : Fin 95 → Fin 95) :
    ∃ f : Polynomial (ZMod q), ∀ i, f.eval (modAddress q k i) = modAddress q k (next i) :=
  (exists_modular_route_iff k next).mpr fun _ _ same => congrArg (modAddress q k ∘ next) (good same)

/-- In window zero modulo two, slots 1 and 2 collide. Sending them
to slots 0 and 1 separates their proposed outputs and defeats every
polynomial router on the reduced addresses. -/
theorem modTwo_routing_collision_control :
    let next : Fin 95 → Fin 95 := fun i => if i = 1 then 0 else 1
    ¬ ∃ f : Polynomial (ZMod 2), ∀ i, f.eval (modAddress 2 0 i) = modAddress 2 0 (next i) := by
  intro next
  let : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  have h0 : modAddress 2 0 0 = 0 := by
    change (Nat.nth Nat.Prime 0 : ZMod 2) = 0
    rw [Nat.nth_prime_zero_eq_two]
    exact ZMod.natCast_self 2
  have h1 : modAddress 2 0 1 = 1 := by
    change (Nat.nth Nat.Prime 1 : ZMod 2) = 1
    rw [Nat.nth_prime_one_eq_three]
    decide
  have h2 : modAddress 2 0 2 = 1 := by
    change (Nat.nth Nat.Prime 2 : ZMod 2) = 1
    rw [Nat.nth_prime_two_eq_five]
    decide
  intro route
  have he := (exists_modular_route_iff 0 next).mp route 1 2 (h1.trans h2.symm)
  have hnext1 : next 1 = 0 := by simp [next]
  have hnext2 : next 2 = 1 := by simp [next]
  rw [hnext1, hnext2, h0, h1] at he
  exact (by decide : (0 : ZMod 2) ≠ 1) he

end GRWTSK.NumberTheory.PrimeWindowGoodReduction
