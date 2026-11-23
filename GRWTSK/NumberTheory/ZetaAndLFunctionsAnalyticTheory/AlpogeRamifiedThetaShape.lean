/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

/-! # The quadratic correction in a ramified adapted frame

The first computation works over any residue quotient, including one with
nilpotents. Coefficients in the two sets of columns have no conjugation.
The last computation counts both ordered terms of every opposite-sheet pair.
-/

namespace GRWTSK.NumberTheory.AlpogeRamifiedThetaShape

open Matrix
open scoped BigOperators

/-- In the split integral order, the reductions of two isolated columns
pair only at the conjugate site. The residue comparison is imposed on the
integral algebra elements, before their frame coefficients are extended. -/
theorem isolated_trace_pair {A R S Z J : Type*} [CommRing A] [CommRing R] [CommRing S]
    [Fintype Z] [DecidableEq Z] [Fintype J]
    (q : R →+* S) (ρ : Z → A →+* R) (c : A →+* A) (swap : Z → Z)
    (hc : ∀ z a, q (ρ z (c a)) = q (ρ (swap z) a))
    (v : Z → J → A) (r : Z → J → R) (κ : Z → R)
    (he : ∀ z w, ∑ i, r z i * ρ w (v z i) = if w = z then κ z else 0)
    (z w : Z) :
    q (∑ t, ∑ i, ∑ j, (r z i * r w j) * ρ t (v z i * c (v w j))) =
      if swap z = w then q (κ z) * q (κ w) else 0 := by
  have step (t : Z) :
      q (∑ i, ∑ j, (r z i * r w j) * ρ t (v z i * c (v w j))) =
        q ((∑ i, r z i * ρ t (v z i)) * (∑ j, r w j * ρ (swap t) (v w j))) := by
    simp only [map_sum, map_mul, hc, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [map_sum]
  simp_rw [step, he]
  rw [Finset.sum_eq_single z]
  · by_cases h : swap z = w <;> simp [h]
  · intro b _ h
    simp [h]
  · simp

/-- Rectangular matrix-unit contractions are independent of the original
and target dual bases, even when their entries have denominators. -/
theorem dual_matrix_units {K n m : Type*} [CommRing K] [Fintype n] [Fintype m]
    [DecidableEq n] [DecidableEq m] (P : (Matrix n n K)ˣ) (Q : (Matrix m m K)ˣ)
    (a a' : n) (b b' : m) :
    (((Q : Matrix m m K) * single b a (1 : K) * (↑P⁻¹ : Matrix n n K)) *
       ((P : Matrix n n K) * single a' b' (1 : K) * (↑Q⁻¹ : Matrix m m K))).trace =
       if a = a' ∧ b = b' then 1 else 0 := by
  have h : ((Q : Matrix m m K) * single b a (1 : K) * (↑P⁻¹ : Matrix n n K)) *
        ((P : Matrix n n K) * single a' b' (1 : K) * (↑Q⁻¹ : Matrix m m K)) =
      (Q : Matrix m m K) * (single b a (1 : K) * single a' b' (1 : K)) * (↑Q⁻¹ : Matrix m m K) := by
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc (↑P⁻¹ : Matrix n n K) (P : Matrix n n K), Units.inv_mul, Matrix.one_mul]
  rw [h, Matrix.trace_units_conj, Matrix.trace_single_mul]
  by_cases ha : a = a' <;> by_cases hb : b = b' <;> simp [Matrix.single, ha, hb, eq_comm]

/-- Summing squares with the opposite-sheet Gram gives twice the prescribed
mixed quadratic polynomial. Specializing the input to polynomial variables
keeps the identity coefficientwise. -/
theorem paired_square {R H J : Type*} [CommRing R] [Fintype H] [DecidableEq H]
    [Fintype J] (M : J → Bool × H → R) (u : H → R) (X : Bool × H → R)
    (h : ∀ z w : Bool × H, ∑ i, M i z * M i w =
      if w = (!z.1, z.2) then u z.2 else 0) :
    ∑ i, (∑ z, M i z * X z) ^ 2 =
      2 * ∑ t, u t * X (false, t) * X (true, t) := by
  have expand (i : J) : (∑ z, M i z * X z) ^ 2 =
      ∑ z, ∑ w, M i z * M i w * (X z * X w) := by
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro z _
    apply Finset.sum_congr rfl
    intro w _
    ring
  simp_rw [expand]
  rw [Finset.sum_comm]
  have row (z : Bool × H) :
      ∑ i, ∑ w, M i z * M i w * (X z * X w) = u z.2 * (X z * X (!z.1, z.2)) := by
    rw [Finset.sum_comm]
    simp_rw [← Finset.sum_mul, h, ite_mul, zero_mul]
    simp
  simp_rw [row]
  rw [Fintype.sum_prod_type, Fintype.sum_bool, two_mul]
  apply congrArg₂ (· + ·) <;> apply Finset.sum_congr rfl <;> intro t _ <;> simp <;> ring

end GRWTSK.NumberTheory.AlpogeRamifiedThetaShape
