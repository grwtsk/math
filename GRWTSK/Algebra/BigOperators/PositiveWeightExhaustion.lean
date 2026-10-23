/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Lean.Elab.Tactic.Omega

set_option autoImplicit false

/-!
# Exhaustion by lower weights and an upper bound on the complete finite mass

An injective map can miss points. Strictly positive source weights, local lower
weights and a complete upper count bound eliminate that possibility and force
all local inequalities to be equalities. This is finite algebra, not a zero count.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion

open scoped BigOperators

/-- A missed source contributes its own weight beyond all claimed lower weights. -/
theorem missing_weight_le {ι κ : Type*} [Fintype ι] [Fintype κ]
    (f : ι → κ) (hf : Function.Injective f) (m : ι → ℕ) (w : κ → ℕ)
    (hlower : ∀ i, m i ≤ w (f i)) (y : κ) (hmiss : ∀ i, f i ≠ y) :
    (∑ i, m i) + w y ≤ ∑ u, w u := by
  classical
  let S : Finset κ := Finset.univ.image f
  have himage : (∑ u ∈ S, w u) = ∑ i, w (f i) := by
    exact Finset.sum_image (fun i _ j _ hij => hf hij)
  have hnot : y ∉ S := by
    intro hy
    obtain ⟨i, _, hi⟩ := Finset.mem_image.mp hy
    exact hmiss i hi
  have hl : (∑ i, m i) ≤ ∑ u ∈ S, w u := by
    rw [himage]
    exact Finset.sum_le_sum (fun i _ => hlower i)
  have hu : (∑ u ∈ insert y S, w u) ≤ ∑ u, w u :=
    Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
      (fun u _ _ => Nat.zero_le (w u))
  rw [Finset.sum_insert hnot] at hu
  omega

/-- A global upper bound suffices; a count equality is derived rather than assumed. -/
theorem surjective_of_mass_le {ι κ : Type*} [Fintype ι] [Fintype κ]
    (f : ι → κ) (hf : Function.Injective f) (m : ι → ℕ) (w : κ → ℕ)
    (hpos : ∀ u, 0 < w u) (hlower : ∀ i, m i ≤ w (f i))
    (hcount : (∑ u, w u) ≤ ∑ i, m i) : Function.Surjective f := by
  classical
  intro y
  by_contra hy
  have hm : ∀ i, f i ≠ y := by simpa only [not_exists] using hy
  have hd := missing_weight_le f hf m w hlower y hm
  have hp := hpos y
  omega

/-- Exhaustion also forbids an understated multiplicity at any matched point. -/
theorem weights_eq_of_mass_le {ι κ : Type*} [Fintype ι] [Fintype κ]
    (f : ι → κ) (hf : Function.Injective f) (m : ι → ℕ) (w : κ → ℕ)
    (hpos : ∀ u, 0 < w u) (hlower : ∀ i, m i ≤ w (f i))
    (hcount : (∑ u, w u) ≤ ∑ i, m i) : ∀ i, w (f i) = m i := by
  classical
  have hbij : Function.Bijective f :=
    ⟨hf, surjective_of_mass_le f hf m w hpos hlower hcount⟩
  have hsum : (∑ i, w (f i)) = ∑ u, w u :=
    (Equiv.ofBijective f hbij).sum_comp w
  intro i
  by_contra hi
  have hlt : m i < w (f i) := by have := hlower i; omega
  have hstrict : (∑ j, m j) < ∑ j, w (f j) :=
    Finset.sum_lt_sum (fun j _ => hlower j) ⟨i, Finset.mem_univ i, hlt⟩
  rw [hsum] at hstrict
  omega

/-- The exact correspondence is constructed from the preceding finite criteria. -/
theorem exists_equiv_of_mass_le {ι κ : Type*} [Fintype ι] [Fintype κ]
    (f : ι → κ) (hf : Function.Injective f) (m : ι → ℕ) (w : κ → ℕ)
    (hpos : ∀ u, 0 < w u) (hlower : ∀ i, m i ≤ w (f i))
    (hcount : (∑ u, w u) ≤ ∑ i, m i) :
    ∃ e : ι ≃ κ, (∀ i, e i = f i) ∧ ∀ i, w (e i) = m i := by
  classical
  let e := Equiv.ofBijective f
    ⟨hf, surjective_of_mass_le f hf m w hpos hlower hcount⟩
  exact ⟨e, fun _ => rfl, weights_eq_of_mass_le f hf m w hpos hlower hcount⟩

end GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion
