/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.SpecificationAndPrimeEnumeration
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Tactic

/-!
# The routing polynomial of a canonical prime window

A prefix is extended by its next canonical prime factor. The completed
polynomial has one simple integer root per slot. Its root test recovers the
same primality and rank condition used by numeric prime addresses.

Interpolation recovers an ordered payload when the nodes and their slot
indices are supplied. The polynomial alone is invariant under permutation
of those indices. Multiplication by X modulo the rational window polynomial
scales the payload by the corresponding prime in each coordinate.
-/

set_option autoImplicit false

noncomputable section
open scoped BigOperators Polynomial

namespace GRWTSK.NumberTheory.PrimeWindowPolynomial

open Polynomial
open GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification

/-- The prime at zero-based offset j from the start of window k. -/
def address (k j : ℕ) : ℕ :=
  canonicalPrimeEnumeration.value (95 * k + j)

theorem address_eq_nth (k j : ℕ) : address k j = Nat.nth Nat.Prime (95 * k + j) := rfl

theorem address_prime (k j : ℕ) : (address k j).Prime :=
  canonicalPrimeEnumeration_prime _

theorem address_strictMono (k : ℕ) : StrictMono (address k) :=
  fun _ _ h => canonicalPrimeEnumeration_strictlyIncreasing (Nat.add_lt_add_left h _)

theorem count_address (k j : ℕ) : Nat.count Nat.Prime (address k j) = 95 * k + j := by
  rw [address_eq_nth]
  exact Nat.count_nth_of_infinite Nat.infinite_setOfPred_prime _

/-- A prefix product in Z[X]. A window traversal takes n from zero to 95. -/
def prefixPolynomial (k n : ℕ) : ℤ[X] :=
  Lagrange.nodal (Finset.range n) (fun j => (address k j : ℤ))

@[simp]
theorem prefix_zero (k : ℕ) : prefixPolynomial k 0 = 1 := by simp [prefixPolynomial]

theorem prefix_succ (k n : ℕ) :
    prefixPolynomial k (n + 1) = prefixPolynomial k n * (X - C (address k n : ℤ)) := by
  simp only [prefixPolynomial, Lagrange.nodal, Finset.prod_range_succ]

theorem prefix_monic (k n : ℕ) : (prefixPolynomial k n).Monic := Lagrange.nodal_monic

@[simp]
theorem prefix_natDegree (k n : ℕ) : (prefixPolynomial k n).natDegree = n := by
  simp [prefixPolynomial]

theorem prefix_eval_zero_iff (k n : ℕ) (x : ℤ) :
    (prefixPolynomial k n).eval x = 0 ↔ ∃ j < n, (address k j : ℤ) = x := by
  rw [prefixPolynomial, Lagrange.eval_nodal, Finset.prod_eq_zero_iff]
  simp only [Finset.mem_range, sub_eq_zero]
  exact exists_congr (fun _ => and_congr_right (fun _ => eq_comm))

/-- Appending the canonical next factor introduces a fresh root. -/
theorem next_root_fresh (k n : ℕ) :
    (prefixPolynomial k n).eval (address k n : ℤ) ≠ 0 ∧
      (prefixPolynomial k (n + 1)).eval (address k n : ℤ) = 0 := by
  refine ⟨?_, (prefix_eval_zero_iff _ _ _).2 ⟨n, Nat.lt_succ_self n, rfl⟩⟩
  intro h
  obtain ⟨j, hj, hsame⟩ := (prefix_eval_zero_iff _ _ _).1 h
  exact ((address_strictMono k hj).ne) (by exact_mod_cast hsame)

/-- A mistaken next factor is detected by evaluating at the required fresh root. -/
theorem wrong_factor_rejected (k n : ℕ) (y : ℤ) (wrong : y ≠ (address k n : ℤ)) :
    (prefixPolynomial k n * (X - C y)).eval (address k n : ℤ) ≠ 0 := by
  rw [eval_mul, eval_sub, eval_X, eval_C]
  exact mul_ne_zero (next_root_fresh k n).1 (sub_ne_zero.mpr wrong.symm)

/-- The signed integer address used as the root of one window factor. -/
def intAddress (k : ℕ) (j : Fin 95) : ℤ := address k j.val

theorem intAddress_strictMono (k : ℕ) : StrictMono (intAddress k) := by
  intro i j hij
  change (address k i.val : ℤ) < (address k j.val : ℤ)
  exact_mod_cast address_strictMono k (show i.val < j.val from hij)

/-- The monic product of the 95 ordered prime-window factors. -/
def windowPolynomial (k : ℕ) : ℤ[X] := prefixPolynomial k 95

theorem windowPolynomial_eq_nodal (k : ℕ) :
    windowPolynomial k = Lagrange.nodal Finset.univ (intAddress k) := by
  simpa only [windowPolynomial, prefixPolynomial, Lagrange.nodal, intAddress] using
    (Fin.prod_univ_eq_prod_range (fun j : ℕ => (X - C (address k j : ℤ))) 95).symm

theorem window_monic (k : ℕ) : (windowPolynomial k).Monic := prefix_monic k 95

theorem window_natDegree (k : ℕ) : (windowPolynomial k).natDegree = 95 := prefix_natDegree k 95

theorem window_eval_zero_iff (k : ℕ) (x : ℤ) :
    (windowPolynomial k).eval x = 0 ↔ ∃! slot : Fin 95, intAddress k slot = x := by
  rw [windowPolynomial, prefix_eval_zero_iff]
  constructor
  · rintro ⟨j, hj, he⟩
    refine ⟨⟨j, hj⟩, he, fun i hi => (intAddress_strictMono k).injective (hi.trans he.symm)⟩
  · rintro ⟨j, hj, _⟩
    exact ⟨j.val, j.isLt, hj⟩

/-- The polynomial root test and the executable address rank test agree. -/
theorem window_eval_nat_eq_zero_iff (k p : ℕ) :
    (windowPolynomial k).eval (p : ℤ) = 0 ↔
      p.Prime ∧ 95 * k ≤ Nat.count Nat.Prime p ∧ Nat.count Nat.Prime p < 95 * k + 95 := by
  rw [windowPolynomial, prefix_eval_zero_iff]
  constructor
  · rintro ⟨j, hj, he⟩
    have hp : address k j = p := by exact_mod_cast he
    rw [← hp, count_address]
    exact ⟨address_prime k j, by omega, by omega⟩
  · rintro ⟨hp, hlow, hhigh⟩
    let j := Nat.count Nat.Prime p - 95 * k
    have hj : j < 95 := by dsimp [j]; omega
    have hsum : 95 * k + j = Nat.count Nat.Prime p := by dsimp [j]; omega
    exact ⟨j, hj, by rw [address_eq_nth, hsum, Nat.nth_count hp]⟩

set_option maxRecDepth 4096 in
set_option maxHeartbeats 2000000 in
/-- A checked first-window boundary and two distinct residues used in the knot comparison. -/
theorem first_window_controls :
    (windowPolynomial 0).eval 2 = 0 ∧
    (windowPolynomial 0).eval 19 = 0 ∧
    (windowPolynomial 0).eval 499 = 0 ∧
    (windowPolynomial 0).eval 503 ≠ 0 ∧
    (windowPolynomial 1).eval 503 = 0 := by
  refine ⟨(window_eval_nat_eq_zero_iff 0 2).2 ?_, (window_eval_nat_eq_zero_iff 0 19).2 ?_,
    (window_eval_nat_eq_zero_iff 0 499).2 ?_, (not_congr (window_eval_nat_eq_zero_iff 0 503)).2 ?_,
    (window_eval_nat_eq_zero_iff 1 503).2 ?_⟩ <;> decide +kernel

theorem roots_disjoint_of_ne {k l : ℕ} (hne : k ≠ l) {x : ℤ}
    (hk : (windowPolynomial k).eval x = 0) : (windowPolynomial l).eval x ≠ 0 := by
  intro hl
  obtain ⟨i, hi, _⟩ := (window_eval_zero_iff k x).1 hk
  obtain ⟨j, hj, _⟩ := (window_eval_zero_iff l x).1 hl
  have eq : address k i.val = address l j.val := by
    have eq' : (address k i.val : ℤ) = (address l j.val : ℤ) := hi.trans hj.symm
    exact_mod_cast eq'
  have ranks := congrArg (Nat.count Nat.Prime) eq
  rw [count_address, count_address] at ranks
  exact hne (by have := i.isLt; have := j.isLt; omega)

theorem derivative_at_slot (k : ℕ) (i : Fin 95) :
    (windowPolynomial k).derivative.eval (intAddress k i) =
      ∏ j ∈ Finset.univ.erase i, (intAddress k i - intAddress k j) := by
  rw [windowPolynomial_eq_nodal, Lagrange.eval_nodal_derivative_eval_node_eq (Finset.mem_univ i),
    Lagrange.eval_nodal]

theorem derivative_at_slot_ne_zero (k : ℕ) (i : Fin 95) :
    (windowPolynomial k).derivative.eval (intAddress k i) ≠ 0 := by
  rw [derivative_at_slot, Finset.prod_ne_zero_iff]
  intro j hj
  exact sub_ne_zero.mpr (fun h => (Finset.mem_erase.mp hj).1
    (((intAddress_strictMono k).injective h).symm))

/-- A reordering of slots cannot be detected from the polynomial alone. -/
theorem permuted_nodes_same_polynomial (k : ℕ) (perm : Equiv.Perm (Fin 95)) :
    Lagrange.nodal Finset.univ (intAddress k ∘ perm) = windowPolynomial k := by
  rw [windowPolynomial_eq_nodal]
  exact Equiv.prod_comp perm (fun j => X - C (intAddress k j))

theorem swapped_slots_witness (k : ℕ) :
    ∃ nodes : Fin 95 → ℤ, nodes ≠ intAddress k ∧
      Lagrange.nodal Finset.univ nodes = windowPolynomial k := by
  let perm : Equiv.Perm (Fin 95) := Equiv.swap 0 1
  refine ⟨intAddress k ∘ perm, ?_, permuted_nodes_same_polynomial k perm⟩
  intro eq
  have h : intAddress k 1 = intAddress k 0 := by
    simpa [perm, Function.comp_def] using congrFun eq 0
  exact (by decide : (1 : Fin 95) ≠ 0) ((intAddress_strictMono k).injective h)

/-! ## Exact routing of rational values -/

def ratAddress (k : ℕ) (j : Fin 95) : ℚ := address k j.val

theorem ratAddress_injective (k : ℕ) : Function.Injective (ratAddress k) := by
  intro i j he
  change (address k i.val : ℚ) = (address k j.val : ℚ) at he
  have hn : address k i.val = address k j.val := by exact_mod_cast he
  exact Fin.ext ((address_strictMono k).injective hn)

def selector (k : ℕ) (j : Fin 95) : ℚ[X] :=
  Lagrange.basis Finset.univ (ratAddress k) j

theorem selector_eval (k : ℕ) (i j : Fin 95) :
    (selector k i).eval (ratAddress k j) = if i = j then 1 else 0 := by
  unfold selector
  split_ifs with same
  · subst j
    exact Lagrange.eval_basis_self (ratAddress_injective k).injOn (Finset.mem_univ i)
  · exact Lagrange.eval_basis_of_ne (v := ratAddress k) same (Finset.mem_univ j)

/-- Encode arbitrary payload values as the unique polynomial of degree below 95. -/
def interpolate (k : ℕ) (payload : Fin 95 → ℚ) : ℚ[X] :=
  Lagrange.interpolate Finset.univ (ratAddress k) payload

@[simp]
theorem eval_interpolate (k : ℕ) (payload : Fin 95 → ℚ) (j : Fin 95) :
    (interpolate k payload).eval (ratAddress k j) = payload j :=
  Lagrange.eval_interpolate_at_node payload (ratAddress_injective k).injOn (Finset.mem_univ j)

theorem interpolate_iff (k : ℕ) (payload : Fin 95 → ℚ) (f : ℚ[X]) :
    f = interpolate k payload ↔ f.degree < 95 ∧ ∀ j, f.eval (ratAddress k j) = payload j := by
  simpa [interpolate] using
    (Lagrange.eq_interpolate_iff (r := payload) (f := f)
      (s := Finset.univ) (ratAddress_injective k).injOn).symm

def rationalPolynomial (k : ℕ) : ℚ[X] := Lagrange.nodal Finset.univ (ratAddress k)

theorem rationalPolynomial_eq_map (k : ℕ) :
    rationalPolynomial k = (windowPolynomial k).map (Int.castRingHom ℚ) := by
  rw [windowPolynomial_eq_nodal]
  simp [rationalPolynomial, Lagrange.nodal, ratAddress, intAddress, Polynomial.map_prod]

/-- Multiplication by the variable on the residue representatives modulo the
monic window polynomial is diagonal in the interpolation coordinates. -/
theorem mul_X_mod_eq_interpolate (k : ℕ) (payload : Fin 95 → ℚ) :
    (X * interpolate k payload) %ₘ rationalPolynomial k =
      interpolate k (fun j => ratAddress k j * payload j) := by
  apply (interpolate_iff _ _ _).2
  constructor
  · simpa [rationalPolynomial] using
      (Polynomial.degree_modByMonic_lt (X * interpolate k payload)
        (Lagrange.nodal_monic (s := (Finset.univ : Finset (Fin 95))) (v := ratAddress k)))
  · intro j
    have hroot : (rationalPolynomial k).eval (ratAddress k j) = 0 :=
      Lagrange.eval_nodal_at_node (Finset.mem_univ j)
    have evalEq := congrArg (fun f : ℚ[X] => f.eval (ratAddress k j))
      (modByMonic_add_div (X * interpolate k payload) (rationalPolynomial k))
    simpa [eval_add, eval_mul, hroot] using evalEq

/-- Route payloads along a supplied slot map using pullback of values. -/
def route (k : ℕ) (next : Fin 95 → Fin 95) (f : ℚ[X]) : ℚ[X] :=
  interpolate k (fun j => f.eval (ratAddress k (next j)))

theorem route_fixed_iff (k : ℕ) (next : Fin 95 → Fin 95) (payload : Fin 95 → ℚ) :
    route k next (interpolate k payload) = interpolate k payload ↔
      ∀ j, payload (next j) = payload j := by
  constructor
  · intro h j
    simpa [route] using congrArg (fun f : ℚ[X] => f.eval (ratAddress k j)) h
  · intro h
    simp [route, h]

end GRWTSK.NumberTheory.PrimeWindowPolynomial
