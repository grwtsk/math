/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic

/-! # Exact two-site directed Frobenius-orbit capacity and aggregation -/
namespace GRWTSK.NumberTheory.AlpogeTwoSiteFlow

/-- The attainable totals of both directed length-one edges. -/
def attainable (p a b : ℝ) : Set ℝ :=
  {v | ∃ x y : ℝ, 0 ≤ x ∧ 0 ≤ y ∧ p*x+y ≤ a ∧ x+p*y ≤ b ∧ x+y=v}

theorem total_upper {p a b v : ℝ} (hp : 1 < p) (hv : v ∈ attainable p a b) :
    v ≤ min a (min b ((a+b)/(p+1))) := by
  obtain ⟨x, y, hx, hy, h₁, h₂, rfl⟩ := hv
  refine le_min ?_ (le_min ?_ ?_)
  · nlinarith [mul_nonneg (sub_nonneg.mpr hp.le) hx]
  · nlinarith [mul_nonneg (sub_nonneg.mpr hp.le) hy]
  · apply (le_div_iff₀ (by linarith : 0 < p+1)).2
    linarith only [h₁, h₂]

/-- Including both boundary rays and the zero vector. -/
theorem exact_max {p a b : ℝ} (hp : 1 < p) (ha : 0 ≤ a) (hb : 0 ≤ b) :
    IsGreatest (attainable p a b) (min a (min b ((a+b)/(p+1)))) := by
  refine ⟨?_, fun _ => total_upper hp⟩
  have hp' : 0 < p+1 := by linarith
  by_cases h : p*a ≤ b
  · have h₁ : a ≤ b := by nlinarith [mul_nonneg (sub_nonneg.mpr hp.le) ha]
    have h₂ : a ≤ (a+b)/(p+1) := (le_div_iff₀ hp').2 (by nlinarith)
    rw [min_eq_left (le_min h₁ h₂)]
    exact ⟨0,a,le_rfl,ha,by linarith,by linarith,by ring⟩
  by_cases h' : p*b ≤ a
  · have h₁ : b ≤ a := by nlinarith [mul_nonneg (sub_nonneg.mpr hp.le) hb]
    have h₂ : b ≤ (a+b)/(p+1) := (le_div_iff₀ hp').2 (by nlinarith)
    rw [min_eq_left h₂, min_eq_right h₁]
    exact ⟨b,0,hb,le_rfl,by linarith,by linarith,by ring⟩
  have h₁ : (a+b)/(p+1) ≤ a := (div_le_iff₀ hp').2 (by nlinarith)
  have h₂ : (a+b)/(p+1) ≤ b := (div_le_iff₀ hp').2 (by nlinarith)
  have hd : 0 < p^2-1 := by nlinarith [mul_pos (sub_pos.mpr hp) hp']
  rw [min_eq_right h₂, min_eq_right h₁]
  refine ⟨(p*a-b)/(p^2-1),(p*b-a)/(p^2-1),
    div_nonneg (by linarith) hd.le,div_nonneg (by linarith) hd.le,?_,?_,?_⟩
  · apply le_of_eq; field_simp; ring
  · apply le_of_eq; field_simp; ring
  · field_simp; ring

theorem capacity_eq {p a b : ℝ} (hp : 1 < p) (ha : 0 ≤ a) (hb : 0 ≤ b) :
    sSup (attainable p a b) = min a (min b ((a+b)/(p+1))) :=
  (exact_max hp ha hb).csSup_eq

/-- Cancellation when a signed inverse coordinate is aggregated. -/
theorem aggregation_loss {ι : Type*} (t : Finset ι) (u : ι → ℝ) :
    ∑ i ∈ t, max (-u i) 0 - max (-(∑ i ∈ t, u i)) 0 =
      min (∑ i ∈ t, max (u i) 0) (∑ i ∈ t, max (-u i) 0) := by
  have he : (∑ i ∈ t, max (u i) 0) - (∑ i ∈ t, max (-u i) 0) = ∑ i ∈ t, u i := by
    rw [← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl (fun i _ => by rcases le_total (u i) 0 with hi|hi <;> simp [hi, *] <;> linarith)
  rw [← he]
  rcases le_total (∑ i ∈ t, max (u i) 0) (∑ i ∈ t, max (-u i) 0) with h|h
  · rw [min_eq_left h, max_eq_left (by linarith)]; ring
  · rw [min_eq_right h, max_eq_right (by linarith)]; ring

end GRWTSK.NumberTheory.AlpogeTwoSiteFlow
