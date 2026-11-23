/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Finsupp.Basic
import Mathlib.Analysis.Normed.Group.Ultra
import Mathlib.Tactic

/-!
# Dominant coefficients of polynomials in the permuted Honda logarithms

For q = p², at radius p^(-1/q^e) the term of Honda level e is the unique
dominant one. The finite lemmas quantify this on the ordered factors of a
monomial, including competing monomials of lower degree. They supply the
coefficient estimate used in the rigidity argument for the two B4 coboundaries.
-/

namespace GRWTSK.NumberTheory.AlpogeHondaPolynomialRigidity

open scoped BigOperators

private theorem pow_gt_succ {q k : ℕ} (hq : 3 ≤ q) (hk : 0 < k) :
    k + 1 < q ^ k := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hk.ne'
  clear hk
  induction k with
  | zero => simpa using (show 2 < q by omega)
  | succ k ih =>
    rw [pow_succ]
    have hp : 0 < q ^ (k + 1) := pow_pos (by omega) _
    change k + 2 < q ^ (k + 1) at ih
    have hm := Nat.mul_le_mul_left (q ^ (k + 1)) hq
    omega

/-- Strict separation of all levels other than e at the selected radius.
The expression has been multiplied by q^e to use only natural numbers. -/
theorem level_strict {q : ℕ} (hq : 3 ≤ q) {h e : ℕ} (hne : h ≠ e) :
    (h + 1) * q ^ e < q ^ h + e * q ^ e := by
  rcases lt_or_gt_of_ne hne with hlt | hgt
  · have hle := Nat.mul_le_mul_right (q ^ e) (show h + 1 ≤ e by omega)
    have hp : 0 < q ^ h := pow_pos (by omega) _
    omega
  · obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_le hgt.le
    have hkpos : 0 < k := by omega
    rw [hk, pow_add]
    have hb := Nat.mul_lt_mul_of_pos_left (pow_gt_succ hq hkpos)
      (show 0 < q ^ e by positivity)
    nlinarith

theorem level_le {q : ℕ} (hq : 3 ≤ q) (h e : ℕ) :
    (h + 1) * q ^ e ≤ q ^ h + e * q ^ e := by
  by_cases he : h = e
  · subst h
    simp [Nat.add_mul, Nat.add_comm]
  · exact (level_strict hq he).le

private theorem sum_levels {n q e : ℕ} (h : Fin n → ℕ) :
    (∑ i, (h i + 1) * q ^ e) = ((∑ i, h i) + n) * q ^ e := by
  rw [← Finset.sum_mul, Finset.sum_add_distrib]
  simp

/-- The ordered factors of a degree-n monomial hitting the target total
degree d*q^e have a uniform upper bound on the sum of their Honda levels. -/
theorem level_sum_bound {q d n e : ℕ} (hq : 3 ≤ q) (h : Fin n → ℕ)
    (ht : ∑ i, q ^ h i = d * q ^ e) :
    (∑ i, h i) + n ≤ d + n * e := by
  have hs := Finset.sum_le_sum (s := Finset.univ) (fun (i : Fin n) _ => level_le hq (h i) e)
  rw [sum_levels, Finset.sum_add_distrib, ht] at hs
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at hs
  rw [← Nat.mul_assoc, ← Nat.add_mul] at hs
  exact (Nat.le_of_mul_le_mul_right hs (by positivity))

/-- For an equal-degree competitor any off-level choice loses at least
one unit of p-adic denominator, even if other factors change levels. -/
theorem strict_level_sum {q d e : ℕ} (hq : 3 ≤ q) (h : Fin d → ℕ)
    (ht : ∑ i, q ^ h i = d * q ^ e) (hne : ∃ i, h i ≠ e) :
    ∑ i, h i < d * e := by
  obtain ⟨i, hi⟩ := hne
  have hs := Finset.sum_lt_sum (s := Finset.univ)
    (fun (j : Fin d) _ => level_le hq (h j) e)
    ⟨i, Finset.mem_univ _, level_strict hq hi⟩
  rw [sum_levels, Finset.sum_add_distrib, ht] at hs
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul] at hs
  rw [← Nat.mul_assoc, ← Nat.add_mul] at hs
  have hlt : (∑ j, h j) + d < d + d * e := Nat.lt_of_mul_lt_mul_right hs
  omega

/-- Permuting the sites and multiplying every index by q^e preserves
distinctions between dominant exponent vectors. -/
theorem scaled_site_injective {ι : Type*} (π : Equiv.Perm ι) {q : ℕ}
    (hq : 0 < q) (e : ℕ) :
    Function.Injective (fun a : ι → ℕ => fun i => q ^ e * a (π i)) := by
  intro a b he
  funext j
  have h := congrFun he (π.symm j)
  simpa only [Equiv.apply_symm_apply, Nat.mul_right_inj (pow_pos hq e).ne'] using h

/-- A strictly dominant coefficient is unchanged in norm by all the other
ordered-factor contributions. This also applies to residue characteristic two. -/
theorem dominant_coefficient_norm {K ι : Type*} [NormedAddCommGroup K]
    [IsUltrametricDist K] (a : K) (s : Finset ι) (t : ι → K)
    (ht : ∀ i ∈ s, ‖t i‖ < ‖a‖) : ‖a + ∑ i ∈ s, t i‖ = ‖a‖ := by
  rcases s.eq_empty_or_nonempty with he | hne
  · simp [he]
  · obtain ⟨i, hi, hmax⟩ :=
      IsUltrametricDist.exists_norm_finsetSum_le_of_nonempty hne t
    have hlt := hmax.trans_lt (ht i hi)
    rw [IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm hlt.ne', max_eq_left hlt.le]

end GRWTSK.NumberTheory.AlpogeHondaPolynomialRigidity
