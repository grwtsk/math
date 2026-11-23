/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Quotient.Pi
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Data.Finsupp.Basic
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

/-! # Fourier coefficient lattices of mixed theta sections

Distinct characters on the torus torsor remain distinct after reduction.
The valuation defect of a finite-order lift vanishes. Intersecting all
translated bounds recovers the quadratic coefficient lattice, whose
independent coefficient blocks give an index formula.
-/

namespace GRWTSK.NumberTheory.AlpogeMixedThetaLattice

open scoped BigOperators

/-- A local change of torus and bundle frames multiplies each residual
coefficient by a unit. Distinct characters still detect each coefficient. -/
theorem distinct_weight_reduction {X I C : Type*} [Fintype I] [CommRing C]
    (χ : I → X) (hinj : Function.Injective χ) (u : I → Cˣ) (a : I → C) :
    (∑ i, Finsupp.single (χ i) (↑(u i) * a i) : X →₀ C) = 0 ↔ ∀ i, a i = 0 := by
  classical
  constructor
  · intro h i
    have eval := congrArg (fun f : X →₀ C => f (χ i)) h
    have hz : (u i : C) * a i = 0 := by
      simpa [Finsupp.finsetSum_apply, Finsupp.single_apply, hinj.eq_iff] using eval
    exact (u i).isUnit.mul_right_eq_zero.mp hz
  · intro h
    simp [h]

/-- A nonzero theta section with rational content determines the scalar of
a normalized lift, even when the order of the lift is a nonunit. -/
theorem torsion_frame_drift {S : Type*} (T : S → S) (b : S → ℚ) (c : ℚ)
    (h : ∀ x, b (T x) = b x + c) (x : S) (N : ℕ) (hn : N ≠ 0)
    (period : T^[N] x = x) : c = 0 := by
  have orbit (n : ℕ) : b (T^[n] x) = b x + n * c := by
    induction n with
    | zero => simp
    | succ n ih =>
      rw [Function.iterate_succ_apply', h, ih, Nat.cast_succ]
      ring
  have zero : (N : ℚ) * c = 0 := by simpa [period] using (orbit N).symm
  exact (mul_eq_zero.mp zero).resolve_left (by exact_mod_cast hn)

/-- The minimum in the zero character class is zero. Translating each class
to zero recovers the sharp balanced bound from all ordinary bounds. -/
theorem all_component_moves {G : Type*} [AddGroup G] (h m : G → ℚ)
    (hm : ∀ x, 0 ≤ m x) (h₀ : m 0 = 0) (r : ℚ) :
    (∀ x y, r ≤ h x + m (x + y)) ↔ ∀ x, r ≤ h x := by
  constructor
  · intro H x
    simpa [h₀] using H x (-x)
  · intro H x y
    exact (H x).trans (le_add_of_nonneg_right (hm _))

/-- The indices of the individual full-rank coefficient blocks multiply.
Each weight can include the rank of its abelian coefficient space. -/
theorem block_quotient_card {ι R : Type*} [Fintype ι] [CommRing R]
    {M : ι → Type*} [∀ i, AddCommGroup (M i)] [∀ i, Module R (M i)]
    (p : ∀ i, Submodule R (M i)) (q : ℕ) (w : ι → ℕ)
    (hc : ∀ i, Nat.card (M i ⧸ p i) = q ^ w i) :
    Nat.card ((∀ i, M i) ⧸ Submodule.pi Set.univ p) = q ^ (∑ i, w i) := by
  classical
  rw [Nat.card_congr (Submodule.quotientPi p).toEquiv, Nat.card_pi]
  simp_rw [hc]
  exact Finset.prod_pow_eq_pow_sum _ _ _

/-- For an odd rank-one level 2m+1 the minimum representatives are 0 and
the pairs ±1 through ±m. This computes their total squared length. -/
theorem odd_minimum_mass (m : ℕ) :
    6 * (2 * ∑ j ∈ Finset.range m, ((j : ℚ) + 1)^2) =
      (2 * m + 1 : ℚ) * (2 * m) * (m + 1) := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [Finset.sum_range_succ, Nat.cast_succ]
    linear_combination ih

end GRWTSK.NumberTheory.AlpogeMixedThetaLattice
