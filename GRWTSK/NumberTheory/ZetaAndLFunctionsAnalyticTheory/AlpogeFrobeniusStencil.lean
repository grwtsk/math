/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic

/-! # Three consecutive Frobenius weights control the normalized non-linear gain -/
namespace GRWTSK.NumberTheory.AlpogeFrobeniusStencil

open Finset
variable {S : Type*} [Fintype S]

/-- Difference of negative parts with the sharper one-sided remainder. -/
theorem neg_part_change (a b : ℝ) :
    -max (-b) 0 ≤ max (-(a-b)) 0 - max (-a) 0 ∧
    max (-(a-b)) 0 - max (-a) 0 ≤ max b 0 := by
  constructor <;> grind

theorem signed_budget (σ : Equiv.Perm S) (w y : S → ℝ) {p : ℝ} (hp : 1 < p)
    (hw : ∀ s, 0 ≤ w s) (hy : ∀ s, p*y s + y (σ s) = w s) :
    (p^2-1)*(∑ s, max (-y s) 0) ≤ ∑ s, w s ∧
      (p^2-1)*(∑ s, max (y s) 0) ≤ p*∑ s, w s := by
  have hd : (∑ s, max (y s) 0) - (∑ s, max (-y s) 0) = ∑ s, y s := by
    rw [← sum_sub_distrib]
    exact sum_congr rfl (fun i _ => by grind)
  have hm : p*(∑ s, max (-y s) 0) ≤ ∑ s, max (y s) 0 := by
    rw [mul_sum, ← Equiv.sum_comp σ (fun i => max (y i) 0)]
    apply sum_le_sum
    intro i _
    have h := hy i
    have h₁ := hw i
    rcases le_total (y i) 0 with hneg|hpos
    · rw [max_eq_left (by linarith)]; linarith [le_max_left (y (σ i)) 0]
    · rw [max_eq_right (by linarith),mul_zero]; exact le_max_right _ _
  have hs : (p+1)*(∑ s, y s) = ∑ s, w s := by
    calc
      _ = p*(∑ s, y s)+(∑ s, y (σ s)) := by rw [Equiv.sum_comp]; ring
      _ = _ := by rw [mul_sum, ← sum_add_distrib]; exact sum_congr rfl (fun i _ => hy i)
  rw [← hd] at hs
  constructor
  · nlinarith only [hs, mul_nonneg (by linarith : 0 ≤ p+1) (sub_nonneg.mpr hm)]
  · nlinarith only [hs, congrArg (fun v : ℝ => p*v) hs,
      mul_nonneg (by linarith : 0 ≤ p+1) (sub_nonneg.mpr hm)]

/-- The residual is a single transported signed coordinate. -/
theorem three_step (σ : S → S) (w y : S → ℝ) {p : ℝ} (hp : p ≠ 0)
    (hy : ∀ s, p*y s + y (σ s) = w s) (s : S) :
    y s = (p^2*w s-p*w (σ s)+w (σ (σ s)))/p^3 - y (σ (σ (σ s)))/p^3 := by
  field_simp
  linear_combination p^2*(hy s) - p*(hy (σ s)) + hy (σ (σ s))

/-- The full asymmetric error, for the actual gain of a nonnegative weight array. -/
theorem three_place_gain (σ : Equiv.Perm S) (w y : S → ℝ) {p : ℝ} (hp : 1 < p)
    (hw : ∀ s, 0 ≤ w s) (hy : ∀ s, p*y s + y (σ s) = w s) :
    let t := fun s => (p^2*w s-p*w (σ s)+w (σ (σ s)))/p^3;
    let err := (p-1)*((∑ s, max (-y s) 0) - ∑ s, max (-t s) 0);
    -(∑ s, w s)/(p^3*(p+1)) ≤ err ∧ err ≤ (∑ s, w s)/(p^2*(p+1)) := by
  intro t err
  have hpos : 0 < p := by linarith
  have hp3 : 0 < p^3 := by positivity
  have hp1 : 0 < p+1 := by linarith
  let τ := (σ.trans σ).trans σ
  have hstep (s : S) : p^3*y s = p^3*t s-y (τ s) := by
    have h := three_step σ w y hpos.ne' hy s
    change y s = t s - y (τ s)/p^3 at h
    rw [h]; field_simp
  have bounds (s : S) :
      -max (-y (τ s)) 0 ≤ p^3*(max (-y s) 0-max (-t s) 0) ∧
      p^3*(max (-y s) 0-max (-t s) 0) ≤ max (y (τ s)) 0 := by
    have h := neg_part_change (p^3*t s) (y (τ s))
    rw [← hstep] at h
    simpa [mul_sub, mul_max_of_nonneg _ _ hp3.le] using h
  let v := (∑ s, max (-y s) 0) - ∑ s, max (-t s) 0
  have hlo := Finset.sum_le_sum (s := (Finset.univ : Finset S)) (fun i _ => (bounds i).1)
  have hhi := Finset.sum_le_sum (s := (Finset.univ : Finset S)) (fun i _ => (bounds i).2)
  have hv : (∑ s, p^3*(max (-y s) 0-max (-t s) 0)) = p^3*v := by
    rw [← mul_sum, sum_sub_distrib]
  rw [hv, Finset.sum_neg_distrib, Equiv.sum_comp τ (fun i => max (-y i) 0)] at hlo
  rw [hv, Equiv.sum_comp τ (fun i => max (y i) 0)] at hhi
  obtain ⟨hN,hP⟩ := signed_budget σ w y hp hw hy
  have hfac : 0 < p^2-1 := by nlinarith [mul_pos (sub_pos.mpr hp) hp1]
  change -(∑ s, w s)/(p^3*(p+1)) ≤ (p-1)*v ∧ (p-1)*v ≤ (∑ s, w s)/(p^2*(p+1))
  constructor
  · apply (div_le_iff₀ (mul_pos hp3 hp1)).2
    nlinarith only [hN, mul_le_mul_of_nonneg_left hlo hfac.le]
  · apply (le_div_iff₀ (mul_pos (sq_pos_of_pos hpos) hp1)).2
    apply le_of_mul_le_mul_left (a := p) _ hpos
    nlinarith only [hP, mul_le_mul_of_nonneg_left hhi hfac.le]

end GRWTSK.NumberTheory.AlpogeFrobeniusStencil
