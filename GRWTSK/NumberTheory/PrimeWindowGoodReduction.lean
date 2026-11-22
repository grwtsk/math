/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeWindowPolynomial
import Mathlib.Algebra.Field.ZMod

/-!
# Good reduction of the ordered prime-window nodes

Reduction of the integer routing polynomial into a prime field preserves
simple roots exactly when no two addresses become equal. For the first
window the least prime characteristic with distinct residues is 251.
Requiring every residue to be nonzero raises the least characteristic
to 503. These are direct reduction statements for the original nodes.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Polynomial

namespace GRWTSK.NumberTheory.PrimeWindowGoodReduction

open Polynomial
open PrimeWindowPolynomial

def modAddress (q k : ℕ) (slot : Fin 95) : ZMod q :=
  (address k slot.val : ZMod q)

def reducedWindow (q k : ℕ) : (ZMod q)[X] :=
  (windowPolynomial k).map (Int.castRingHom (ZMod q))

theorem reducedWindow_eq_nodal (q k : ℕ) :
    reducedWindow q k = Lagrange.nodal Finset.univ (modAddress q k) := by
  rw [reducedWindow, windowPolynomial_eq_nodal]
  simp [Lagrange.nodal, Polynomial.map_prod, modAddress, intAddress]

theorem reducedWindow_root {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ) (x : ZMod q) :
    (reducedWindow q k).eval x = 0 ↔ ∃ slot, modAddress q k slot = x := by
  rw [reducedWindow_eq_nodal, Lagrange.eval_nodal, Finset.prod_eq_zero_iff]
  simp only [Finset.mem_univ, true_and, sub_eq_zero]
  exact exists_congr (fun _ => eq_comm)

theorem reducedWindow_derivative (q k : ℕ) (i : Fin 95) :
    (reducedWindow q k).derivative.eval (modAddress q k i) =
      ∏ j ∈ Finset.univ.erase i, (modAddress q k i - modAddress q k j) := by
  rw [reducedWindow_eq_nodal, Lagrange.eval_nodal_derivative_eval_node_eq (Finset.mem_univ i),
    Lagrange.eval_nodal]

/-- A prime field supports simple interpolation nodes exactly when reduction
of the original slot addresses is injective. -/
theorem all_simple_iff_injective {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ) :
    (∀ i, (reducedWindow q k).derivative.eval (modAddress q k i) ≠ 0) ↔
      Function.Injective (modAddress q k) := by
  constructor
  · intro simple i j equal
    by_contra different
    have h := simple i
    rw [reducedWindow_derivative, Finset.prod_ne_zero_iff] at h
    exact h j (Finset.mem_erase.mpr ⟨Ne.symm different, Finset.mem_univ _⟩) (sub_eq_zero.mpr equal)
  · intro injective i
    rw [reducedWindow_derivative, Finset.prod_ne_zero_iff]
    intro j member
    exact sub_ne_zero.mpr fun equal => (Finset.mem_erase.mp member).1 (injective equal.symm)

/-- Every reduced root selects its unique original slot in a good reduction. -/
theorem reducedWindow_root_unique {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ)
    (good : Function.Injective (modAddress q k)) (x : ZMod q) :
    (reducedWindow q k).eval x = 0 ↔ ∃! i, modAddress q k i = x := by
  rw [reducedWindow_root]
  constructor
  · rintro ⟨i, hi⟩
    exact ⟨i, hi, fun j hj => good (hj.trans hi.symm)⟩
  · rintro ⟨i, hi, _⟩
    exact ⟨i, hi⟩

theorem eval_reduced_interpolation {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ)
    (good : Function.Injective (modAddress q k)) (payload : Fin 95 → ZMod q) (i : Fin 95) :
    (Lagrange.interpolate Finset.univ (modAddress q k) payload).eval (modAddress q k i) =
      payload i :=
  Lagrange.eval_interpolate_at_node payload good.injOn (Finset.mem_univ i)

set_option maxRecDepth 8000 in
set_option maxHeartbeats 8000000 in
theorem first_last : address 0 94 = 499 := by
  have p : Nat.Prime 499 := by decide +kernel
  have count : Nat.count Nat.Prime 499 = 94 := by decide +kernel
  simpa [address_eq_nth, count] using Nat.nth_count p

theorem first_address_le (i : Fin 95) : address 0 i.val ≤ 499 := by
  rw [← first_last]
  exact (address_strictMono 0).monotone (by have := i.isLt; omega)

/-- Above the largest prime, the canonical residue representative recovers
the original natural-number address directly. -/
theorem first_representative_exact {q : ℕ} (large : 499 < q) (i : Fin 95) :
    (modAddress q 0 i).val = address 0 i.val :=
  ZMod.val_natCast_of_lt ((first_address_le i).trans_lt large)

theorem first_contains_prime {p : ℕ} (prime : Nat.Prime p) (bound : p ≤ 499) :
    ∃ i : Fin 95, address 0 i.val = p := by
  have count : Nat.count Nat.Prime p ≤ 94 := by
    have h := Nat.count_monotone (p := Nat.Prime) bound
    rw [← first_last, count_address] at h
    simpa using h
  refine ⟨⟨Nat.count Nat.Prime p, by omega⟩, ?_⟩
  simpa [address_eq_nth] using Nat.nth_count prime

set_option maxRecDepth 10000 in
set_option maxHeartbeats 12000000 in
/-- Small-prime obstruction certificate: both primes stay in the first window. -/
private theorem small_prime_pair :
    ∀ q : Fin 251, Nat.Prime q.val →
      ∃ a : Fin 32, Nat.Prime a.val ∧ Nat.Prime (a.val + 2 * q.val) ∧ a.val + 2 * q.val ≤ 499 := by
  decide +kernel

theorem small_prime_collides {q : ℕ} (prime : Nat.Prime q) (small : q < 251) :
    ¬ Function.Injective (modAddress q 0) := by
  obtain ⟨a, ha, hb, bound⟩ := small_prime_pair ⟨q, small⟩ prime
  obtain ⟨i, hi⟩ := first_contains_prime ha (by omega)
  obtain ⟨j, hj⟩ := first_contains_prime hb bound
  intro injective
  have equal : modAddress q 0 i = modAddress q 0 j := by
    simp [modAddress, hi, hj, Nat.cast_add, Nat.cast_mul]
  have numeric : a.val = a.val + 2 * q :=
    hi.symm.trans ((congrArg (fun slot => address 0 slot.val) (injective equal)).trans hj)
  have := prime.two_le
  omega

/-- Above the half-span threshold, an ordered collision can only involve 2
and the prime q+2. The gap is one copy of the odd modulus. -/
private theorem ordered_large_collision {q a b : ℕ}
    (primeQ : q.Prime) (large : 251 ≤ q) (primeA : a.Prime) (primeB : b.Prime)
    (ordered : a < b) (bound : b ≤ 499) (equal : (a : ZMod q) = (b : ZMod q)) :
    a = 2 ∧ b = q + 2 := by
  have modEq := (ZMod.natCast_eq_natCast_iff a b q).mp equal
  obtain ⟨m, multiple⟩ := (Nat.modEq_iff_dvd' ordered.le).mp modEq
  have low := primeA.two_le
  have one : m = 1 := by
    have pos : m ≠ 0 := by
      intro zero
      simp [zero] at multiple
      omega
    by_contra ne
    have two : 2 ≤ m := by omega
    have step := Nat.mul_le_mul_left q two
    omega
  rw [one, Nat.mul_one] at multiple
  have aTwo : a = 2 := by
    by_contra ne
    obtain ⟨x, hx⟩ := primeA.odd_of_ne_two ne
    obtain ⟨y, hy⟩ := primeB.odd_of_ne_two (by omega)
    obtain ⟨z, hz⟩ := primeQ.odd_of_ne_two (by omega)
    omega
  exact ⟨aTwo, by omega⟩

/-- Complete classification of prime characteristics for distinct first-window
reductions. The upper-range obstruction is the pair of primes 2 and q+2. -/
theorem first_good_reduction_iff {q : ℕ} (prime : Nat.Prime q) :
    Function.Injective (modAddress q 0) ↔
      251 ≤ q ∧ ¬ (q + 2 ≤ 499 ∧ Nat.Prime (q + 2)) := by
  constructor
  · intro injective
    refine ⟨?_, ?_⟩
    · by_contra! small
      exact small_prime_collides prime small injective
    · rintro ⟨bound, hp⟩
      obtain ⟨i, hi⟩ := first_contains_prime (by decide : Nat.Prime 2) (by decide)
      obtain ⟨j, hj⟩ := first_contains_prime hp bound
      have same : modAddress q 0 i = modAddress q 0 j := by
        simp [modAddress, hi, hj, Nat.cast_add]
      rw [injective same, hj] at hi
      have := prime.two_le
      omega
  · rintro ⟨large, noPair⟩ i j equal
    have impossible (i j : Fin 95) (ij : i < j) (same : modAddress q 0 i = modAddress q 0 j) :
        False := by
      obtain ⟨_, top⟩ := ordered_large_collision prime large
        (address_prime 0 i.val) (address_prime 0 j.val)
        (address_strictMono 0 (show i.val < j.val from ij)) (first_address_le j) same
      exact noPair ⟨top ▸ first_address_le j, top ▸ address_prime 0 j.val⟩
    rcases lt_trichotomy i j with hij | rfl | hji
    · exact (impossible i j hij equal).elim
    · rfl
    · exact (impossible j i hji equal.symm).elim

set_option maxRecDepth 8000 in
set_option maxHeartbeats 8000000 in
theorem first_least_good :
    IsLeast {q : ℕ | Nat.Prime q ∧ Function.Injective (modAddress q 0)} 251 := by
  refine ⟨⟨by decide +kernel, (first_good_reduction_iff (by decide : Nat.Prime 251)).mpr
    ⟨by decide, by decide +kernel⟩⟩, ?_⟩
  intro q h
  exact ((first_good_reduction_iff h.1).mp h.2).1

set_option maxRecDepth 8000 in
theorem first_mod269_collides : ¬ Function.Injective (modAddress 269 0) := by
  intro good
  exact ((first_good_reduction_iff (by decide : Nat.Prime 269)).mp good).2
    ⟨by decide, by decide +kernel⟩

/-- The nonzero-constant condition in the linear knot presentation. -/
theorem modLinear_nonzeroConstant_iff (q k : ℕ) (i : Fin 95) :
    (X - C (modAddress q k i)).eval 0 ≠ 0 ↔ modAddress q k i ≠ 0 := by
  simp

/-- The linear factor X-C(r) has nonzero constant exactly when r is nonzero.
A prime modulus through 499 is itself one of the original nodes. -/
theorem first_all_nonzero_iff {q : ℕ} (prime : Nat.Prime q) :
    (∀ i, modAddress q 0 i ≠ 0) ↔ 499 < q := by
  constructor
  · intro nonzero
    by_contra! small
    obtain ⟨i, hi⟩ := first_contains_prime prime small
    apply nonzero i
    rw [modAddress, hi, ZMod.natCast_eq_zero_iff]
  · intro large i zero
    have divides := (ZMod.natCast_eq_zero_iff (address 0 i.val) q).mp zero
    exact (not_lt_of_ge ((Nat.le_of_dvd (address_prime 0 i.val).pos) divides))
      (lt_of_le_of_lt (first_address_le i) large)

set_option maxRecDepth 8000 in
set_option maxHeartbeats 8000000 in
theorem first_least_good_nonzero :
    IsLeast {q : ℕ | Nat.Prime q ∧ Function.Injective (modAddress q 0) ∧
      ∀ i, modAddress q 0 i ≠ 0} 503 := by
  have p : Nat.Prime 503 := by decide +kernel
  refine ⟨⟨p, (first_good_reduction_iff p).mpr ⟨by decide, by decide⟩,
    (first_all_nonzero_iff p).mpr (by decide)⟩, ?_⟩
  intro q h
  have bound := (first_all_nonzero_iff h.1).mp h.2.2
  by_contra! small
  have cases : q = 500 ∨ q = 501 ∨ q = 502 := by omega
  rcases cases with rfl | rfl | rfl
  · exact (by decide : ¬ Nat.Prime 500) h.1
  · exact (by decide : ¬ Nat.Prime 501) h.1
  · exact (by decide : ¬ Nat.Prime 502) h.1

/-- The original first-window roots 2 and 19 merge in characteristic 17.
The reduction has a root with zero derivative at their shared residue. -/
theorem first_mod17_root_derivative_zero :
    (reducedWindow 17 0).eval 2 = 0 ∧ (reducedWindow 17 0).derivative.eval 2 = 0 := by
  let : Fact (Nat.Prime 17) := ⟨by decide⟩
  obtain ⟨i, hi⟩ := first_contains_prime (by decide : Nat.Prime 2) (by decide)
  obtain ⟨j, hj⟩ := first_contains_prime (by decide : Nat.Prime 19) (by decide)
  have diff : j ≠ i := by
    intro eq
    rw [eq, hi] at hj
    omega
  have one : modAddress 17 0 i = 2 := by simp [modAddress, hi]
  have two : modAddress 17 0 j = 2 := by
    rw [modAddress, hj]
    decide
  refine ⟨(reducedWindow_root 0 2).mpr ⟨i, one⟩, ?_⟩
  rw [← one, reducedWindow_derivative]
  exact Finset.prod_eq_zero (Finset.mem_erase.mpr ⟨diff, Finset.mem_univ _⟩)
    (sub_eq_zero.mpr (one.trans two.symm))

end GRWTSK.NumberTheory.PrimeWindowGoodReduction
