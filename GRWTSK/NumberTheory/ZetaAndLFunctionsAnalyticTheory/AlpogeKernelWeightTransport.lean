/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.GroupTheory.PGroup
import Mathlib.GroupTheory.IndexNormal
import Mathlib.GroupTheory.Perm.Support
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic

/-! # Prime support of the unipotent denominator in the first theta kernel

The relative-index denominator can be studied by the action on its finite
coset set, even when the stabilizer is not normal. A binomial estimate
supplies the required powers for unipotent matrices on local lattices.
-/

namespace GRWTSK.NumberTheory.AlpogeKernelWeightTransport

/-- A single factorial clears all bounded-degree binomial coefficients in a
unipotent matrix power, leaving the full exponent as an integer divisor. -/
theorem exponent_dvd_factorial_mul_choose (n d k : ℕ) (hk : 0 < k) (hkd : k ≤ d) :
    n ∣ d.factorial * n.choose k := by
  obtain ⟨a, ha⟩ := Nat.dvd_factorial hk hkd
  cases n with
  | zero => simp [Nat.choose_eq_zero_of_lt hk]
  | succ n =>
    obtain ⟨j, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hk.ne'
    refine ⟨a * n.choose j, ?_⟩
    rw [ha, mul_comm (j + 1) a, mul_assoc, mul_comm (j + 1),
      ← Nat.add_one_mul_choose_eq]
    ac_rfl

/-- On a finite set, pointwise recurrence at powers of a fixed prime makes
the effective permutation group a p-group. -/
theorem isPGroup_of_pointwise_recurrence {α : Type*} [Fintype α]
    (p : ℕ) (G : Subgroup (Equiv.Perm α))
    (h : ∀ g ∈ G, ∀ x : α, ∃ k : ℕ, (g ^ (p ^ k)) x = x) :
    IsPGroup p G := by
  classical
  intro g
  choose k hk using h g.val g.property
  let M := ∑ x, k x
  refine ⟨M, Subtype.ext ?_⟩
  apply Equiv.ext
  intro x
  change (g.val ^ (p ^ M)) x = x
  have hx : k x ≤ M := Finset.single_le_sum (f := k) (fun _ _ => Nat.zero_le _) (Finset.mem_univ x)
  obtain ⟨a, ha⟩ := Nat.exists_eq_add_of_le hx
  rw [ha, pow_add, pow_mul]
  exact Equiv.Perm.pow_apply_eq_self_of_apply_eq_self (hk x) _

/-- Prime-power recurrence on every coset forces the actual subgroup index
to be a power of that prime. The subgroup need not be normal. -/
theorem index_prime_pow_of_coset_recurrence {A : Type*} [Group A] (p : ℕ)
    [Fact p.Prime] (H : Subgroup A) [H.FiniteIndex]
    (h : ∀ g : A, ∀ x : A ⧸ H, ∃ k : ℕ, g ^ (p ^ k) • x = x) :
    ∃ k : ℕ, H.index = p ^ k := by
  classical
  let := Fintype.ofFinite (A ⧸ H)
  let f := MulAction.toPermHom A (A ⧸ H)
  have hP : IsPGroup p f.range := by
    apply isPGroup_of_pointwise_recurrence
    rintro _ ⟨g, rfl⟩ x
    obtain ⟨k, hk⟩ := h g x
    exact ⟨k, by rw [← map_pow]; exact hk⟩
  obtain ⟨n, hn⟩ := IsPGroup.iff_card.mp hP
  have hd := Subgroup.index_dvd_of_le H.normalCore_le
  rw [Subgroup.normalCore_eq_ker, Subgroup.index_ker, hn] at hd
  obtain ⟨k, _, he⟩ := (Nat.dvd_prime_pow (Fact.out : p.Prime)).mp hd
  exact ⟨k, he⟩

end GRWTSK.NumberTheory.AlpogeKernelWeightTransport
