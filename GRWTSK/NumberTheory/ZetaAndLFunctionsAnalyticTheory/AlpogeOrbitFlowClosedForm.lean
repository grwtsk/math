/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-! # Odd-edge inequalities and the signed shortest-edge inverse -/
namespace GRWTSK.NumberTheory.AlpogeOrbitFlowClosedForm
open Finset
variable {S : Type*}

/-- If every shortest-edge price is in [1,p], then *all* odd-edge dual
constraints hold, without a hypothesis on the size of the orbit. -/
theorem odd_price {p : ℝ} (hp : 1 ≤ p) (next : S → S) (q : S → ℝ)
    (h : ∀ s, 1 ≤ p*q s + q (next s) ∧ p*q s + q (next s) ≤ p)
    (s : S) (k : ℕ) : 1 ≤ p^(2*k+1)*q s + q (next^[2*k+1] s) := by
  induction k with
  | zero => simpa using (h s).1
  | succ k ih =>
    let v := next^[2*k+1] s
    have h1 := (h v).2
    have h2 := (h (next v)).1
    have eqn : 2*(k+1)+1 = (2*k+1)+2 := by omega
    rw [eqn,pow_add,show (2*k+1)+2 = 2+(2*k+1) by omega, Function.iterate_add_apply]
    change 1 ≤ p^(2*k+1)*p^2*q s + q (next (next v))
    change 1 ≤ p^(2*k+1)*q s + q v at ih
    nlinarith [mul_nonneg (sq_nonneg p) (sub_nonneg.mpr ih),
      mul_nonneg (show 0 ≤ p by linarith) (sub_nonneg.mpr h1)]

/-- Sum by parts on the cyclic permutation, retaining the cost at each site. -/
theorem cyclic_pairing [Fintype S] (next : Equiv.Perm S) (y q : S → ℝ) (p : ℝ) :
    ∑ s, (p*y s+y (next.symm s))*q s = ∑ s, y s*(p*q s+q (next s)) := by
  simp only [add_mul,mul_add,sum_add_distrib]
  congr 1
  · exact sum_congr rfl (fun i _ => by ring)
  · simpa using (Equiv.sum_comp next.symm (fun i => y i*q (next i)))

/-- The exposed dual price for a signed shortest-edge solution, including
boundary faces where a coordinate vanishes. -/
theorem exposed_price [Fintype S] (next : Equiv.Perm S) (y q : S → ℝ) (p : ℝ)
    (h : ∀ s, p*q s + q (next s) = if y s < 0 then p else 1) :
    ∑ s, (p*y s+y (next.symm s))*q s =
      ∑ s, y s - (p-1)*(∑ s, max (-y s) 0) := by
  rw [cyclic_pairing, mul_sum, ← sum_sub_distrib]
  apply sum_congr rfl
  intro i _
  rw [h]
  split_ifs with hi
  · rw [max_eq_left (by linarith)]; ring
  · rw [max_eq_right (by linarith)]; ring

/-- Alternating strings of transformed capacity are the original positive
long edges, including the right endpoint factor 1. -/
theorem alternating_collapse {R : Type*} [CommRing R] (p x : R) (n : ℕ) :
    (p+x)*(∑ j ∈ range (2*n+1), (-x)^j*p^(2*n-j)) = p^(2*n+1)+x^(2*n+1) := by
  have h := Commute.mul_geom_sum₂ (Commute.all (-x) p) (2*n+1)
  have ho : Odd (2*n+1) := ⟨n, by omega⟩
  rw [ho.neg_pow] at h
  simp only [Nat.add_sub_cancel] at h
  linear_combination -h

end GRWTSK.NumberTheory.AlpogeOrbitFlowClosedForm
