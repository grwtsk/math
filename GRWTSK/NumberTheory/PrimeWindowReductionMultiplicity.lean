/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimeWindowGoodReduction
import Mathlib.Algebra.Polynomial.Roots

/-!
# Root multiplicity and residue fibres of the prime-window polynomial

The reduced polynomial retains a multiset of residues. At a bad reduction its
multiplicities record exactly how many original slots share each residue.
-/

noncomputable section
open scoped BigOperators Polynomial

namespace GRWTSK.NumberTheory.PrimeWindowGoodReduction

open Polynomial PrimeWindowPolynomial

theorem reducedWindow_roots_multiset {q : ℕ} [Fact (Nat.Prime q)] (k : ℕ) :
    (reducedWindow q k).roots =
      (Finset.univ : Finset (Fin 95)).val.map (modAddress q k) := by
  rw [reducedWindow_eq_nodal, Lagrange.nodal, Polynomial.roots_prod]
  · simp only [Polynomial.roots_X_sub_C, Multiset.bind_singleton]
  · exact Finset.prod_ne_zero_iff.mpr fun i _ => Polynomial.X_sub_C_ne_zero _

/-- Exact multiplicity, including residues absent from the window. -/
theorem reducedWindow_rootMultiplicity_eq_fibre {q : ℕ}
    [Fact (Nat.Prime q)] (k : ℕ) (a : ZMod q) :
    (reducedWindow q k).rootMultiplicity a =
      (Finset.univ.filter fun i => modAddress q k i = a).card := by
  rw [← Polynomial.count_roots, reducedWindow_roots_multiset, Multiset.count_map]
  rw [← Finset.filter_val, ← Finset.card_def]
  congr 1
  ext i
  simp [eq_comm]

/-- The first-window reductions have one even slot, namely the slot for 2. -/
theorem first_mod_two_zero_fibre :
    Finset.univ.filter (fun i => modAddress 2 0 i = 0) = {0} := by
  have htwo : address 0 0 = 2 := by
    rw [address_eq_nth, show 95 * 0 + 0 = 0 by decide,
      ← show Nat.count Nat.Prime 2 = 0 by decide]
    exact Nat.nth_count (by decide : Nat.Prime 2)
  ext i
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_singleton]
  constructor
  · intro hi
    by_contra hne
    have hpos : 0 < i.val := Nat.pos_of_ne_zero fun hz => hne (Fin.ext hz)
    have hgt := address_strictMono 0 hpos
    rw [htwo] at hgt
    have ho := (address_prime 0 i.val).odd_of_ne_two (by omega)
    have hone := ZMod.natCast_eq_one_iff_odd.mpr ho
    change modAddress 2 0 i = 1 at hone
    exact zero_ne_one (hi.symm.trans hone)
  · rintro rfl
    change (address 0 0 : ZMod 2) = 0
    rw [htwo]
    decide

theorem first_mod_two_rootMultiplicities :
    (reducedWindow 2 0).rootMultiplicity 0 = 1 ∧
      (reducedWindow 2 0).rootMultiplicity 1 = 94 := by
  let _ : Fact (Nat.Prime 2) := ⟨by decide⟩
  have hbit : ∀ a : ZMod 2, a = 1 ↔ a ≠ 0 := by decide
  have hone : Finset.univ.filter (fun i => modAddress 2 0 i = 1) =
      Finset.univ.erase (0 : Fin 95) := by
    ext i
    have hz : modAddress 2 0 i = 0 ↔ i = 0 := by
      have h := Finset.ext_iff.mp first_mod_two_zero_fibre i
      simpa using h
    simp [hbit, hz]
  rw [reducedWindow_rootMultiplicity_eq_fibre, reducedWindow_rootMultiplicity_eq_fibre,
    first_mod_two_zero_fibre, hone]
  simp

/-- All later windows collapse to a single residue in characteristic two. -/
theorem later_mod_two_address (k : ℕ) (i : Fin 95) :
    modAddress 2 (k + 1) i = 1 := by
  apply ZMod.natCast_eq_one_iff_odd.mpr
  apply (address_prime (k + 1) i.val).odd_of_ne_two
  intro h
  have rank := count_address (k + 1) i.val
  rw [h, show Nat.count Nat.Prime 2 = 0 by decide] at rank
  omega

theorem later_mod_two_rootMultiplicity (k : ℕ) :
    (reducedWindow 2 (k + 1)).rootMultiplicity 1 = 95 := by
  let _ : Fact (Nat.Prime 2) := ⟨by decide⟩
  rw [reducedWindow_rootMultiplicity_eq_fibre]
  simp [later_mod_two_address]

/-- The reduced polynomials of two distinct later windows are identical. -/
theorem later_mod_two_polynomials_identical (k l : ℕ) :
    reducedWindow 2 (k + 1) = reducedWindow 2 (l + 1) := by
  simp only [reducedWindow_eq_nodal, Lagrange.nodal, later_mod_two_address]

end GRWTSK.NumberTheory.PrimeWindowGoodReduction
