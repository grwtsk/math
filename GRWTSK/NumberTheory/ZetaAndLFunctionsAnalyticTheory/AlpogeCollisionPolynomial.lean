/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.CharP.Lemmas
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Topology.MetricSpace.Ultra.Basic
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Residue coefficient of the rescaled Honda substitution and the finite
root-distance comparison for a split unit-root cluster. See the companion
manuscript for the elliptic identification and its hypotheses. -/

namespace GRWTSK.NumberTheory.AlpogeCollisionPolynomial

open Polynomial

variable {R : Type*} [CommRing R]

/-- The truncated compositional inverse of X + X^q in odd residue
characteristic, evaluated on the scaled scalar multiple u (X + X^q). -/
noncomputable def inverseTerms (q n : ℕ) (u : R) : R[X] :=
  ∑ j ∈ Finset.range n,
    C ((-1 : R)^j) * (C u * (X + X^q))^(q^j)

/-- Each inverse level contributes exactly two Frobenius monomials. -/
theorem inverse_term (p j : ℕ) [Fact p.Prime] [CharP R p] (u : R) :
    (C u * (X + X^(p^2)) : R[X])^((p^2)^j) =
      C (u^((p^2)^j)) * (X^((p^2)^j) + X^((p^2)^(j+1))) := by
  rw [mul_pow, ← map_pow]
  congr 1
  have e : (p^2)^j = p^(2*j) := (pow_mul p 2 j).symm
  calc
    _ = (X : R[X])^((p^2)^j) + (X^(p^2))^((p^2)^j) := by rw [e, add_pow_char_pow]
    _ = _ := by rw [← pow_mul (X : R[X]) (p^2), ← pow_succ' (p^2)]

/-- Exact coefficient at every positive Frobenius level. -/
theorem inverseTerms_coeff (p r : ℕ) [hp : Fact p.Prime] [CharP R p] (u : R) :
    (inverseTerms (p^2) (r+2) u).coeff ((p^2)^(r+1)) =
      (-1 : R)^r * (u^((p^2)^r) - u^((p^2)^(r+1))) := by
  let q := p^2
  have hq : 2 ≤ q := by dsimp [q]; have := hp.out.two_le; nlinarith
  have inj := Nat.pow_right_injective (a := q) hq
  unfold inverseTerms
  rw [finsetSum_coeff]
  simp_rw [inverse_term, mul_add, coeff_add, coeff_C_mul, coeff_X_pow]
  change ∑ j ∈ Finset.range (r+2), ((-1 : R)^j * (u^(q^j) *
    (if q^(r+1) = q^j then 1 else 0)) + (-1 : R)^j * (u^(q^j) *
    (if q^(r+1) = q^(j+1) then 1 else 0))) = _
  simp_rw [inj.eq_iff, Nat.add_right_cancel_iff, mul_ite,
    mul_zero, mul_one]
  rw [Finset.sum_add_distrib]
  simp [Finset.sum_ite_eq, Finset.mem_range, pow_succ (-1 : R) r]
  ring

variable {ι A : Type*} [AddCommGroup A] [LinearOrder A] [IsOrderedAddMonoid A]

/-- If one root has maximal contact t, all other contacts are their
pairwise contacts with that root, truncated at t. The sum determines
whether t reaches a prescribed radius. The comparison allows fractional
valuations. A point equal to a root is handled separately. -/
theorem contact_threshold (roots : Finset ι) (pair : ι → A) (t radius : A)
    (h : ∀ a ∈ roots, pair a ≤ radius) :
    radius + ∑ a ∈ roots, pair a ≤ t + ∑ a ∈ roots, min t (pair a) ↔ radius ≤ t := by
  constructor
  · intro hs
    by_contra! ht
    exact (not_lt_of_ge hs) (add_lt_add_of_lt_of_le ht
      (Finset.sum_le_sum fun a _ => min_le_right t (pair a)))
  · intro ht
    have he : ∀ a ∈ roots, min t (pair a) = pair a :=
      fun a ha => min_eq_right ((h a ha).trans ht)
    rw [Finset.sum_congr rfl he]
    exact add_le_add ht le_rfl

/-- Contact with the closest center gives all other distances, including
ties, in an ultrametric space. -/
theorem distance_to_other {E : Type*} [PseudoMetricSpace E] [IsUltrametricDist E]
    (x a b : E) (nearest : dist x a ≤ dist x b) :
    dist x b = max (dist x a) (dist a b) := by
  apply le_antisymm (IsUltrametricDist.dist_triangle_max x a b)
  refine max_le nearest ?_
  have h := IsUltrametricDist.dist_triangle_max a x b
  rwa [dist_comm a x, max_eq_right nearest] at h

/-- Sublevel set of a product of linear factors near the nearest root.
This applies directly over a nonarchimedean normed field, with no
discreteness or assumption that the test point differs from every root. -/
theorem root_product_threshold {K : Type*} [NormedField K] [IsUltrametricDist K]
    (others : Finset ι) (root : ι → K) (x a : K) (rad : ℝ) (hr : 0 < rad)
    (separated : ∀ i ∈ others, rad ≤ dist a (root i))
    (nearest : ∀ i ∈ others, dist x a ≤ dist x (root i)) :
    ‖(x-a) * ∏ i ∈ others, (x-root i)‖ ≤ rad * ∏ i ∈ others, dist a (root i) ↔
      dist x a ≤ rad := by
  rw [norm_mul, norm_prod, ← dist_eq_norm]
  simp_rw [← dist_eq_norm]
  constructor
  · intro bound
    by_contra! ht
    have pos : 0 < ∏ i ∈ others, dist a (root i) :=
      Finset.prod_pos fun i hi => hr.trans_le (separated i hi)
    have mono : ∏ i ∈ others, dist a (root i) ≤ ∏ i ∈ others, dist x (root i) := by
      apply Finset.prod_le_prod₀ (fun _ _ => dist_nonneg)
      intro i hi
      rw [distance_to_other x a (root i) (nearest i hi)]
      exact le_max_right _ _
    exact (not_lt_of_ge bound) ((mul_lt_mul_of_pos_right ht pos).trans_le
      (mul_le_mul_of_nonneg_left mono dist_nonneg))
  · intro ht
    have he : ∀ i ∈ others, dist x (root i) = dist a (root i) := by
      intro i hi
      rw [distance_to_other x a (root i) (nearest i hi),
        max_eq_right (ht.trans (separated i hi))]
    rw [Finset.prod_congr rfl he]
    exact mul_le_mul_of_nonneg_right ht (Finset.prod_nonneg fun _ _ => dist_nonneg)

end GRWTSK.NumberTheory.AlpogeCollisionPolynomial
