import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Algebra.BigOperators.Module
import Mathlib.NumberTheory.Multiplicity
import Mathlib.Tactic.Ring

/-! # Reflected character tests for strict Selmer groups

These are the finite linear and integral identities in the accompanying
Kummer descent and cross-prime class tower argument.
-/

namespace GRWTSK.AlpogeSelmerReflection

open scoped BigOperators

/-- A pairing that transforms by the cyclotomic character gives the
cyclotomic twist of the inverse character on the other factor. -/
theorem reflected_scalar {k : Type*} [Field k] {a b w v : k}
    (hv : v ≠ 0) (ha : a ≠ 0) (h : (a*b)*v = w*v) : b = w / a := by
  apply (eq_div_iff ha).2
  rw [mul_comm]
  exact mul_right_cancel₀ hv h

/-- A class character pairing a trivial tower action with a nontrivial
scalar on its target is zero. -/
theorem stable_character_vanishes {k C : Type*} [Field k] {f : C → k}
    (act : C → C) (s : k) (hs : s ≠ 1) (hfix : ∀ c, act c = c)
    (hequiv : ∀ c, f (act c) = s * f c) : ∀ c, f c = 0 := by
  intro c
  have h := hequiv c
  rw [hfix c] at h
  apply (mul_eq_zero.mp (show (s - 1) * f c = 0 by rw [sub_mul, one_mul, ← h, sub_self])).resolve_left (sub_ne_zero.mpr hs)

/-- Ideal extension, once surjective, carries fixed classes onto the whole layer. -/
theorem stable_layer_action {B C : Type*} (extend : B → C) (act : C → C)
    (hs : Function.Surjective extend) (h : ∀ x, act (extend x) = extend x) :
    ∀ y, act y = y := fun y => by obtain ⟨x,rfl⟩ := hs y; exact h x

/-- Rank lost in the residual local connecting map, with an injection of
the locally split part into the mirror eigenspace. -/
theorem mirror_rank_bound {k S L C : Type*} [Field k]
    [AddCommGroup S] [Module k S] [FiniteDimensional k S]
    [AddCommGroup L] [Module k L] [FiniteDimensional k L]
    [AddCommGroup C] [Module k C] [FiniteDimensional k C]
    (loc : S →ₗ[k] L) (mirror : LinearMap.ker loc →ₗ[k] C)
    (hm : Function.Injective mirror) :
    Module.finrank k S ≤ Module.finrank k L + Module.finrank k C := by
  rw [← loc.finrank_range_add_finrank_ker]
  exact Nat.add_le_add (Submodule.finrank_le _) (LinearMap.finrank_le_finrank_of_injective hm)

/-- Evaluate a group-ring annihilator on an eigenvector. The coefficients
need not have a fixed sign and the character values may lie in any field. -/
theorem annihilator_scalar_test {k V ι : Type*} [Field k] [AddCommGroup V]
    [Module k V] (I : Finset ι) (c χ : ι → k) (A : ι → V → V) (x : V)
    (he : ∀ i ∈ I, A i x = χ i • x)
    (hz : ∑ i ∈ I, c i • A i x = 0) (hu : ∑ i ∈ I, c i * χ i ≠ 0) : x = 0 := by
  have h : (∑ i ∈ I, c i * χ i) • x = 0 := by
    rw [Finset.sum_smul]
    convert hz using 1
    exact Finset.sum_congr rfl (fun i hi => by rw [he i hi, mul_smul])
  exact (smul_eq_zero.mp h).resolve_left hu

/-- The integral floor coefficients of the smoothed Stickelberger element. -/
theorem smoothed_coefficient (a b m : ℕ) :
    a*b - a*b % m = m*(a*b/m) := by
  have he := Nat.mod_add_div (a*b) m
  omega

/-- The local cyclotomic invariant denominator at the first principal unit. -/
theorem principal_unit_depth (p e : ℕ) [hp : Fact p.Prime] (ho : Odd p) (he : e ≠ 0) :
    padicValNat p ((p+1)^e-1) = 1 + padicValNat p e := by
  have hpos : 1 < p+1 := by have := hp.out.pos; omega
  have hnd : ¬ p ∣ p+1 := by simpa using hp.out.not_dvd_one
  have h := padicValNat.pow_sub_pow ho hpos (by simp) hnd he
  simpa using h

/-- A coefficient cocycle represented by a coboundary splits after the
action difference becomes divisible by its lift's denominator. -/
theorem local_lift_splits {A : Type*} [AddCommGroup A] (p a r : ℕ) (y : A)
    (hy : p^r • (p^a • y) = 0) (z : ℕ) (hdiv : p^(a+r) ∣ z) : z • y = 0 := by
  obtain ⟨k,rfl⟩ := hdiv
  rw [Nat.mul_comm, mul_smul, Nat.add_comm, pow_add, mul_smul, hy, smul_zero]

/-- A direct evaluation of a split-prime character, using its inverse
mirror values as natural residues. -/
def floorSum (m p b : ℕ) (val : ℕ → ℕ) : ℕ :=
  ((List.range m).foldl (fun s a => if a.gcd m = 1 then
    (s + (b*a/m)*val a) % p else s) 0)

private def quadraticSeven (a : ℕ) : ℕ :=
  if a % 7 ∈ [1, 2, 4] then 1 else 4

/-- At p=5 and primitive odd quadratic character of conductor 7, b=2
tests both possible odd weights modulo 4. -/
theorem quadratic_seven_at_five :
    floorSum 35 5 2 (fun a => quadraticSeven a * (a%5)^2) = 4 ∧
    floorSum 35 5 2 quadraticSeven = 3 := by decide

end GRWTSK.AlpogeSelmerReflection
