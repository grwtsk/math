/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity

/-!
# Domination of a moment tail by positive interpolation nodes

The polynomial bound uses the actual Lagrange basis at the given nodes.
The estimate for successive shifts keeps the same tail radius and nodes.
See `XiShiftedHankelPositivity.md` for their application to xi.
-/

namespace GRWTSK.NumberTheory.HankelInterpolationTail

open Polynomial
open scoped BigOperators

variable {ι : Type*} [DecidableEq ι]

/-- A disk and pairwise distance bounds give a bound for each Lagrange basis
polynomial, uniformly over the disk. -/
theorem basis_norm_le (s : Finset ι) (v : ι → ℂ) (i : ι) (z : ℂ) (radius : ℝ)
    (hz : ‖z‖ ≤ radius) (upper sep : ι → ℝ)
    (hu : ∀ j ∈ s.erase i, ‖v j‖ ≤ upper j)
    (hsep : ∀ j ∈ s.erase i, 0 < sep j ∧ sep j ≤ ‖v i - v j‖) :
    ‖(Lagrange.basis s v i).eval z‖ ≤
      ∏ j ∈ s.erase i, (radius + upper j) / sep j := by
  simp only [Lagrange.basis, eval_prod, Lagrange.basisDivisor, eval_mul, eval_C,
    eval_sub, eval_X, norm_prod, norm_mul, norm_inv]
  apply Finset.prod_le_prod₀ (fun _ _ => by positivity)
  intro j hj
  rw [← div_eq_inv_mul]
  exact div_le_div₀ (add_nonneg ((norm_nonneg _).trans hz) ((norm_nonneg _).trans (hu j hj)))
    ((norm_sub_le z (v j)).trans (add_le_add hz (hu j hj)))
    (hsep j hj).1 (hsep j hj).2

/-- Weighted Cauchy–Schwarz bounds evaluation anywhere by the energy on the nodes. -/
theorem eval_norm_sq_le (s : Finset ι) (v : ι → ℂ) (hv : Set.InjOn v s)
    (q : ℂ[X]) (hq : q.degree < s.card) (z : ℂ) (a : ι → ℝ)
    (ha : ∀ i ∈ s, 0 < a i) (B : ι → ℝ)
    (hB : ∀ i ∈ s, ‖(Lagrange.basis s v i).eval z‖ ≤ B i) :
    ‖q.eval z‖ ^ 2 ≤ (∑ i ∈ s, a i * ‖q.eval (v i)‖ ^ 2) * ∑ i ∈ s, B i ^ 2 / a i := by
  have he := congrArg (fun f : ℂ[X] => f.eval z) (Lagrange.eq_interpolate hv hq)
  simp only [Lagrange.interpolate_apply, eval_finsetSum, eval_mul, eval_C] at he
  have hn : ‖q.eval z‖ ≤ ∑ i ∈ s, ‖q.eval (v i)‖ * B i := calc
    _ = ‖∑ i ∈ s, q.eval (v i) * (Lagrange.basis s v i).eval z‖ := congrArg norm he
    _ ≤ _ := (norm_sum_le ..).trans (Finset.sum_le_sum fun i hi => by
      rw [norm_mul]; exact mul_le_mul_of_nonneg_left (hB i hi) (norm_nonneg _))
  apply (pow_le_pow_left₀ (norm_nonneg _) hn 2).trans
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
  · intro i hi
    exact mul_nonneg (ha i hi).le (sq_nonneg _)
  · intro i hi
    exact div_nonneg (sq_nonneg _) (ha i hi).le
  · intro i hi
    rw [mul_pow]
    exact le_of_eq (by field_simp [(ha i hi).ne'])

/-- A nonzero polynomial of degree below the node count has strictly positive node energy. -/
theorem node_energy_pos (s : Finset ι) (v : ι → ℂ) (hv : Set.InjOn v s)
    (q : ℂ[X]) (hq : q.degree < s.card) (hne : q ≠ 0)
    (a : ι → ℝ) (ha : ∀ i ∈ s, 0 < a i) : 0 < ∑ i ∈ s, a i * ‖q.eval (v i)‖ ^ 2 := by
  have hex : ∃ i ∈ s, q.eval (v i) ≠ 0 := by
    by_contra! hz
    apply hne
    rw [Lagrange.eq_interpolate hv hq, Lagrange.interpolate_apply]
    exact Finset.sum_eq_zero fun i hi => by simp [hz i hi]
  obtain ⟨i, hi, hval⟩ := hex
  exact Finset.sum_pos' (fun j hj => mul_nonneg (ha j hj).le (sq_nonneg _))
    ⟨i, hi, mul_pos (ha i hi) (pow_pos (norm_pos_iff.mpr hval) _)⟩

omit [DecidableEq ι] in
/-- Each term of the relative tail budget decreases with the power shift. -/
theorem shift_budget_antitone (s : Finset ι) (w t : ι → ℝ)
    (hw : ∀ i ∈ s, 0 ≤ w i) (ht : ∀ i ∈ s, t i ∈ Set.Icc (0 : ℝ) 1) :
    Antitone fun k : ℕ => ∑ i ∈ s, w i * t i ^ k := by
  intro k l h
  exact Finset.sum_le_sum fun i hi => mul_le_mul_of_nonneg_left
    (pow_le_pow_of_le_one (ht i hi).1 (ht i hi).2 h) (hw i hi)

/-- An absolutely summable complex tail cannot reverse the sign of the node
energy if the interpolation budget is less than one. The polynomial may have
complex coefficients. The node term in the conclusion is its Hermitian energy. -/
theorem positive_with_tail {J : Type*} (s : Finset ι) (v : ι → ℂ) (hv : Set.InjOn v s)
    (q : ℂ[X]) (hq : q.degree < s.card) (hne : q ≠ 0)
    (a : ι → ℝ) (ha : ∀ i ∈ s, 0 < a i) (B : ι → ℝ)
    (z c : J → ℂ) (hc : Summable fun j => ‖c j‖)
    (hB : ∀ j i, i ∈ s → ‖(Lagrange.basis s v i).eval (z j)‖ ≤ B i)
    (hb : (∑' j, ‖c j‖) * (∑ i ∈ s, B i ^ 2 / a i) < 1) :
    0 < (∑ i ∈ s, a i * ‖q.eval (v i)‖ ^ 2) + (∑' j, c j * q.eval (z j) ^ 2).re := by
  let E := ∑ i ∈ s, a i * ‖q.eval (v i)‖ ^ 2
  let D := ∑ i ∈ s, B i ^ 2 / a i
  let f := fun j => c j * q.eval (z j) ^ 2
  have he : 0 < E := node_energy_pos s v hv q hq hne a ha
  have hdom (j : J) : ‖f j‖ ≤ ‖c j‖ * (E * D) := by
    dsimp only [f]
    rw [norm_mul, norm_pow]
    exact mul_le_mul_of_nonneg_left (eval_norm_sq_le s v hv q hq (z j) a ha B (hB j))
      (norm_nonneg _)
  have hs := hc.mul_right (E * D)
  have hf : Summable fun j => ‖f j‖ := Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hdom hs
  have hnorm : ‖∑' j, f j‖ ≤ (∑' j, ‖c j‖) * (E * D) := calc
    _ ≤ _ := norm_tsum_le_tsum_norm hf
    _ ≤ _ := hf.tsum_le_tsum hdom hs
    _ = _ := tsum_mul_right
  have hlt : ‖∑' j, f j‖ < E := hnorm.trans_lt (by
    calc (∑' j, ‖c j‖) * (E * D) = ((∑' j, ‖c j‖) * D) * E := by ring
         _ < 1 * E := mul_lt_mul_of_pos_right hb he
         _ = E := one_mul E)
  have hreal := Complex.abs_re_le_norm (∑' j, f j)
  have := (abs_lt.mp (hreal.trans_lt hlt)).1
  change 0 < E + (∑' j, f j).re
  linarith

end GRWTSK.NumberTheory.HankelInterpolationTail
