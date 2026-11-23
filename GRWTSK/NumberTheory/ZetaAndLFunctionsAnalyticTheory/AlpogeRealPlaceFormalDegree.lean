/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.LinearAlgebra.Matrix.Determinant.Misc
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-! # Compact unitary volumes and matrix-ball calibration

These are finite product identities for the raw-coordinate Haar and the
unweighted complex matrix ball. The analytic identifications are in the
companion manuscript.
-/

namespace GRWTSK.NumberTheory.AlpogeRealPlaceFormalDegree

open Finset

noncomputable section

/-- Reordering the four real variables splits an off-diagonal pair of the
complexification chart into these two determinants, for either Lie sign. -/
theorem complexification_pair (s : ℝ) :
    (Matrix.det !![(1 : ℝ), -1; s, s]) * (Matrix.det !![(1 : ℝ), 1; -s, s]) =
      4 * s ^ 2 := by
  simp [Matrix.det_fin_two]
  ring

/-- A positive pairing with a weight increment makes the shifted squared
norm strictly larger, as required in identifying the minimal compact type. -/
theorem norm_increase {ι : Type*} [Fintype ι] (v a : ι → ℝ)
    (h : 0 < ∑ i, v i * a i) :
    (∑ i, (v i)^2) < ∑ i, (v i + a i)^2 := by
  have he : (∑ i, (v i + a i)^2) =
      (∑ i, (v i)^2) + 2 * (∑ i, v i * a i) + ∑ i, (a i)^2 := by
    simp only [mul_sum, ← sum_add_distrib]
    apply sum_congr rfl
    intro i _
    ring
  rw [he]
  have ha : 0 ≤ ∑ i, (a i)^2 := sum_nonneg fun i _ => sq_nonneg _
  linarith

/-- The product of the successive odd-dimensional unit sphere areas. -/
def compactVolume (n : ℕ) : ℝ :=
  ∏ j ∈ range n, (2 * Real.pi ^ (j + 1) / (j.factorial : ℝ))

/-- Column-integration factors for the complex p-by-q matrix ball. -/
def ballVolume (p q : ℕ) : ℝ :=
  ∏ j ∈ range q, (Real.pi ^ p * (j.factorial : ℝ) / ((p+j).factorial : ℝ))

/-- The unweighted Bergman coefficient and the compact fibre have the
total mass of the rank p+q compact group. -/
theorem compact_mul_ball (p q : ℕ) :
    compactVolume p * compactVolume q * ballVolume p q = compactVolume (p+q) := by
  induction q with
  | zero => simp [compactVolume, ballVolume]
  | succ q ih =>
    have h (n : ℕ) : compactVolume (n+1) =
        compactVolume n * (2 * Real.pi ^ (n+1) / (n.factorial : ℝ)) := by
      simp only [compactVolume, prod_range_succ]
    have hb : ballVolume p (q+1) = ballVolume p q *
        (Real.pi ^ p * (q.factorial : ℝ) / ((p+q).factorial : ℝ)) := by
      simp only [ballVolume, prod_range_succ]
    change compactVolume p * compactVolume (q+1) * ballVolume p (q+1) = compactVolume ((p+q)+1)
    rw [h (p+q), h q, hb, ← ih]
    rw [show p+q+1 = p+(q+1) by omega, pow_add Real.pi p (q+1)]
    have hq : (q.factorial : ℝ) ≠ 0 := by positivity
    have hpq : ((p+q).factorial : ℝ) ≠ 0 := by positivity
    field_simp

/-- The Vandermonde denominator of a unit-spaced parameter list. -/
theorem consecutive_gap_product (n : ℕ) :
    (∏ j ∈ range n, ∏ i ∈ range j, (j-i)) = ∏ j ∈ range n, j.factorial := by
  apply prod_congr rfl
  intro j _
  calc
    (∏ i ∈ range j, (j-i)) = ∏ i ∈ range j, (j-1-i+1) := by
      apply prod_congr rfl
      intro i hi
      have := mem_range.mp hi
      omega
    _ = ∏ i ∈ range j, (i + 1) := prod_range_reflect (fun i => i + 1) j
    _ = _ := prod_range_add_one_eq_factorial j

/-- The compact volume times the type-A Weyl denominator contains only
the explicit powers of two and pi. -/
theorem volume_mul_factorials (n : ℕ) :
    compactVolume n * (∏ j ∈ range n, (j.factorial : ℝ)) =
      2 ^ n * Real.pi ^ (∑ j ∈ range n, (j+1)) := by
  rw [compactVolume, prod_div_distrib, prod_mul_distrib, prod_const, card_range,
    prod_pow_eq_pow_sum, div_mul_cancel₀]
  positivity

end
end GRWTSK.NumberTheory.AlpogeRealPlaceFormalDegree
