/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeWindowReductionMultiplicity

/-!
# Interpolation at colliding prime-window addresses

The remaining polynomial readouts at a bad reduction are precisely the slot
payloads constant on residue fibres.
-/

noncomputable section
open scoped Polynomial

namespace GRWTSK.NumberTheory.PrimeWindowGoodReduction

open Polynomial

def residueNodes (q k : ℕ) : Finset (ZMod q) :=
  Finset.univ.image (modAddress q k)

/-- The degree bound uses the number of distinct residues, even when there
are fewer than 95. -/
theorem interpolate_iff_constant_on_residue_fibres {q : ℕ}
    [Fact (Nat.Prime q)] (k : ℕ) (payload : Fin 95 → ZMod q) :
    (∃ f : (ZMod q)[X], f.degree < (residueNodes q k).card ∧
      ∀ i, f.eval (modAddress q k i) = payload i) ↔
      ∀ i j, modAddress q k i = modAddress q k j → payload i = payload j := by
  classical
  constructor
  · rintro ⟨f, _, h⟩ i j same
    rw [← h i, ← h j, same]
  · intro h
    let values (x : ZMod q) :=
      if hx : ∃ i, modAddress q k i = x then payload (Classical.choose hx) else 0
    have hinj : Set.InjOn (id : ZMod q → ZMod q) (residueNodes q k : Set (ZMod q)) :=
      Function.injective_id.injOn
    refine ⟨Lagrange.interpolate (residueNodes q k) id values,
      Lagrange.degree_interpolate_lt _ hinj, ?_⟩
    intro i
    have hm : modAddress q k i ∈ residueNodes q k :=
      Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩
    calc
      _ = values (modAddress q k i) := Lagrange.eval_interpolate_at_node values hinj hm
      _ = payload i := by
        unfold values
        split
        next hx => exact h _ i (Classical.choose_spec hx)
        next hx => exact (hx ⟨i, rfl⟩).elim

theorem residue_interpolant_unique {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ)
    {f g : (ZMod q)[X]} (hf : f.degree < (residueNodes q k).card)
    (hg : g.degree < (residueNodes q k).card)
    (same : ∀ i, f.eval (modAddress q k i) = g.eval (modAddress q k i)) : f = g := by
  have hinj : Set.InjOn (id : ZMod q → ZMod q) (residueNodes q k : Set (ZMod q)) :=
    Function.injective_id.injOn
  apply Polynomial.eq_of_degrees_lt_of_eval_index_eq (residueNodes q k) hinj hf hg
  intro x hx
  obtain ⟨i, _, rfl⟩ := Finset.mem_image.mp hx
  exact same i

/-- In characteristic two, every later window admits only constant slot
payloads by polynomial evaluation, even at unrestricted degree. -/
theorem later_mod_two_eval_iff_constant (k : ℕ) (payload : Fin 95 → ZMod 2) :
    (∃ f : (ZMod 2)[X], ∀ i, f.eval (modAddress 2 (k + 1) i) = payload i) ↔
      ∀ i j, payload i = payload j := by
  constructor
  · rintro ⟨f, hf⟩ i j
    rw [← hf i, ← hf j, later_mod_two_address, later_mod_two_address]
  · intro h
    exact ⟨C (payload 0), fun i => by rw [eval_C, h 0 i]⟩

theorem later_mod_two_cannot_read_slot_zero (k : ℕ) :
    ¬ ∃ f : (ZMod 2)[X], ∀ i,
      f.eval (modAddress 2 (k + 1) i) = if i = 0 then 1 else 0 := by
  intro h
  have he := (later_mod_two_eval_iff_constant k _).mp h 0 1
  simp at he

end GRWTSK.NumberTheory.PrimeWindowGoodReduction
