/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Liouville
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

/-! A reflected Riemann–Siegel residual on a small disk rules out a heat collision. -/

namespace GRWTSK.XiNewmanEffectiveEscape

open Complex Metric
open scoped ComplexConjugate

/-- Both Dirichlet sums in the upper half-disk admit the same fourth-power majorant. -/
theorem dirichlet_exponent {t L l logN y sigma k : ℝ} (ht : 0 < t) (ht' : t ≤ 1/2)
    (hbudget : 32 ≤ t*L) (hl : L-1/1000 ≤ l) (hN : logN ≤ l/2+1/1000)
    (hy : y ≤ 1/64) (hs : (1+y)/2+t*l/4-1/1000 ≤ sigma) (hk : k ≤ 1/1000) :
    4 ≤ sigma-y-k-t*logN/4 := by
  nlinarith [mul_nonneg ht.le (sub_nonneg.mpr hl), mul_nonneg ht.le (sub_nonneg.mpr hN)]

/-- On the full height-one strip a uniform exponent of seven halves remains. -/
theorem strip_dirichlet_exponent {t L l logN y sigma k : ℝ} (ht : 0 < t) (ht' : t ≤ 1/2)
    (hbudget : 32 ≤ t*L) (hl : L-1/1000 ≤ l) (hN : logN ≤ l/2+1/1000)
    (hy : y ≤ 1) (hs : (1+y)/2+t*l/4-1/1000 ≤ sigma) (hk : k ≤ 1/1000) :
    7/2 ≤ sigma-y-k-t*logN/4 := by
  nlinarith [mul_nonneg ht.le (sub_nonneg.mpr hl), mul_nonneg ht.le (sub_nonneg.mpr hN)]

/-- Extends the upper semicircle error across the real axis using the exact two-term symmetry. -/
theorem reflected_circle_bound {E γ : ℂ → ℂ} {r : ℝ}
    (hup : ∀ z ∈ sphere (0:ℂ) r, 0 ≤ z.im → ‖E z‖ ≤ 21/100)
    (hgamma : ∀ z ∈ sphere (0:ℂ) r, 0 ≤ z.im → ‖(γ z)⁻¹‖ ≤ 17/10)
    (href : ∀ z, E (conj z) = conj (E z) * conj ((γ z)⁻¹)) :
    ∀ z ∈ sphere (0:ℂ) r, ‖E z‖ ≤ 36/100 := by
  intro z hz
  by_cases hy : 0 ≤ z.im
  · linarith [hup z hz hy]
  · have hzc : conj z ∈ sphere (0:ℂ) r := by
      simpa [Metric.mem_sphere, dist_zero_right] using hz
    have hyc : 0 ≤ (conj z).im := by simpa using (le_of_not_ge hy)
    have hr := href (conj z)
    simp only [conj_conj] at hr
    rw [hr, norm_mul]
    simp only [Complex.norm_conj]
    have h := mul_le_mul (hup _ hzc hyc) (hgamma _ hzc hyc) (norm_nonneg _) (by norm_num)
    linarith

/-- On a disk of radius 1/L the derivative of the holomorphic normalized residual costs 0.36 L. -/
theorem cauchy_residual {E : ℂ → ℂ} {L : ℝ} (hL : 0 < L)
    (hd : DiffContOnCl ℂ E (ball 0 L⁻¹))
    (hcircle : ∀ z ∈ sphere (0:ℂ) L⁻¹, ‖E z‖ ≤ 36/100) :
    ‖deriv E 0‖ ≤ (36/100)*L := by
  simpa [div_eq_mul_inv] using
    Complex.norm_deriv_le_of_forall_mem_sphere_norm_le (inv_pos.mpr hL) hd hcircle

/-- A phase derivative margin prevents any cancellation at a double root. -/
theorem normalized_derivative_margin {g e : ℂ} {L : ℝ}
    (hg : (49/100)*L ≤ ‖g‖) (he : ‖e‖ ≤ (36/100)*L) :
    (13/100)*L ≤ ‖g+e‖ := by
  have h := norm_sub_le (g+e) e
  rw [add_sub_cancel_right] at h
  linarith

/-- A bound expressed in normalized error coordinates implies strict Rouché domination. -/
theorem rouche_domination {A B H : ℂ} (hB : B ≠ 0)
    (hE : ‖H/B-1-A/B‖ < ‖1+A/B‖) : ‖H-(B+A)‖ < ‖B+A‖ := by
  have hr : H/B-1-A/B = (H-(B+A))/B := by field_simp; ring
  have hs : 1+A/B = (B+A)/B := by field_simp
  rw [hr, hs, norm_div, norm_div] at hE
  exact (div_lt_div_iff_of_pos_right (norm_pos_iff.mpr hB)).mp hE

/-- Phase uncertainty at two zeros leaves the explicit two-sided spacing budget. -/
theorem phase_gap {gap L R d : ℝ}
    (hphase : |d-2*Real.pi| ≤ 44/100)
    (hl : (49/100)*L*gap ≤ d) (hr : d ≤ (52/100)*R*gap) :
    11 < R*gap ∧ L*gap < 14 := by
  obtain ⟨h₁,h₂⟩ := abs_le.mp hphase
  constructor
  · nlinarith [Real.pi_gt_d2]
  · nlinarith [Real.pi_lt_d2]

end GRWTSK.XiNewmanEffectiveEscape
