/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.AnchoredLocalJensen
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.GCongr

set_option autoImplicit false

/-!
# Quantitative geometry for a cubic Jensen-circle ceiling

This module supplies the circle geometry and the complex norm algebra.
The lemma with an Euler identity keeps that identity and its remainder bound
explicit. It does not assert that riemannZeta satisfies them. The actual
infinite identity and continuation are derived in the companion mathematical
note, but are NOT formalized by the finite-calculus source in this increment.
No existing Jensen or canonical prime consumer is changed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CubicCircleGeometry

open Set Metric
open LocalJensenCount

noncomputable section

/-- Includes every point of either CLOSED disk, hence every outer-circle point. -/
theorem disk_geometry (N : ℕ) (hN : 2 ≤ N) (c s : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (hs : s ∈ closedBall c (3 : ℝ)) :
    -1 ≤ s.re ∧ (1 / 2 : ℝ) ≤ |s.im| ∧
      ‖s‖ ≤ 3 * ((N : ℝ) + 2) ∧ ‖s + 1‖ ≤ 3 * ((N : ℝ) + 2) ∧
      ‖s + 2‖ ≤ 3 * ((N : ℝ) + 2) := by
  have hNr : (2 : ℝ) ≤ N := by exact_mod_cast hN
  have hdist : ‖s - c‖ ≤ 3 := by simpa [mem_closedBall, dist_eq_norm] using hs
  have hcr : c.re = 2 := by rcases hc with rfl | rfl <;> simp
  have hci : |c.im| = (N : ℝ) + 3 / 2 := by
    rcases hc with rfl | rfl
    · rw [upperCenter_im, abs_of_nonneg (by positivity)]
    · rw [lowerCenter_im, abs_neg, abs_of_nonneg (by positivity)]
  have hreal : |s.re - 2| ≤ 3 := by
    simpa only [Complex.sub_re, hcr] using (Complex.abs_re_le_norm (s - c)).trans hdist
  have him : |s.im - c.im| ≤ 3 :=
    (Complex.abs_im_le_norm (s - c)).trans hdist
  have himtri : |c.im| ≤ |s.im| + |s.im - c.im| := by
    have h := abs_add_le s.im (c.im - s.im)
    have he : s.im + (c.im - s.im) = c.im := by ring
    rw [he, abs_sub_comm c.im s.im] at h
    exact h
  have hcn : ‖c‖ ≤ (N : ℝ) + 7 / 2 := by
    have hparts := Complex.norm_le_abs_re_add_abs_im c
    rw [hcr, hci] at hparts
    norm_num at hparts
    linarith
  have hsn : ‖s‖ ≤ (N : ℝ) + 13 / 2 :=
    (norm_le_norm_sub_add s c).trans (by linarith)
  have hs1 : ‖s + 1‖ ≤ ‖s‖ + 1 := by simpa using norm_add_le s (1 : ℂ)
  have hs2 : ‖s + 2‖ ≤ ‖s‖ + 2 := by simpa using norm_add_le s (2 : ℂ)
  exact ⟨by linarith [(abs_le.mp hreal).1], by linarith,
    by linarith, by linarith, by linarith⟩

/-- A quantitative pole-distance bound, not merely qualitative pole avoidance. -/
theorem norm_inverse_sub_one_le (s : ℂ) (hs : (1 / 2 : ℝ) ≤ |s.im|) :
    ‖(s - 1)⁻¹‖ ≤ 2 := by
  have hn : (1 / 2 : ℝ) ≤ ‖s - 1‖ :=
    hs.trans (by simpa using Complex.abs_im_le_norm (s - 1))
  rw [norm_inv, inv_eq_one_div]
  have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
    (by norm_num : (0 : ℝ) < 1 / 2) hn
  norm_num at h
  simpa only [one_div] using h

/-- This scalar estimate is uniform for v>=4, not inferred from finitely many N. -/
theorem scalar_cubic_budget (v : ℝ) (hv : 4 ≤ v) :
    5 / 2 + v / 4 + (9 / 16) * v ^ 3 ≤ v ^ 3 := by
  have hv0 : 0 ≤ v := by linarith
  have hcube : 16 * v ≤ v ^ 3 := by
    have hsq : 16 ≤ v ^ 2 := by nlinarith
    nlinarith [mul_le_mul_of_nonneg_right hsq hv0]
  nlinarith

/-- Pure norm algebra. The actual Euler continuation and actual remainder bound
must be proved independently before setting value=riemannZeta s. -/
theorem norm_le_cube_of_cubic_identity (s value R : ℂ) (v : ℝ) (hv : 4 ≤ v)
    (hi : ‖(s - 1)⁻¹‖ ≤ 2) (h₀ : ‖s‖ ≤ 3 * v)
    (h₁ : ‖s + 1‖ ≤ 3 * v) (h₂ : ‖s + 2‖ ≤ 3 * v)
    (hR : ‖R‖ ≤ 1 / 48)
    (he : value = (s - 1)⁻¹ + 1 / 2 + s / 12 - s * (s + 1) * (s + 2) * R) :
    ‖value‖ ≤ v ^ 3 := by
  have hv0 : 0 ≤ v := by linarith
  have hp : ‖s * (s + 1) * (s + 2) * R‖ ≤ (9 / 16) * v ^ 3 := by
    simp only [norm_mul]
    calc
      _ ≤ (3 * v) * (3 * v) * (3 * v) * (1 / 48) := by gcongr
      _ = _ := by ring
  have hs12 : ‖s / 12‖ ≤ v / 4 := by
    rw [norm_div]
    norm_num only [Complex.norm_ofNat]
    linarith
  rw [he]
  have ht := (norm_sub_le ((s - 1)⁻¹ + 1 / 2 + s / 12)
    (s * (s + 1) * (s + 2) * R)).trans
      (add_le_add_left ((norm_add_le ((s - 1)⁻¹ + 1 / 2) (s / 12)).trans
        (add_le_add_left (norm_add_le ((s - 1)⁻¹) (1 / 2)) _)) _)
  norm_num only [norm_div, norm_one, Complex.norm_ofNat] at ht
  exact (show ‖(s - 1)⁻¹ + 1 / 2 + s / 12 - s * (s + 1) * (s + 2) * R‖ ≤
    5 / 2 + v / 4 + (9 / 16) * v ^ 3 by linarith).trans (scalar_cubic_budget v hv)

end
end GRWTSK.RiemannHypothesis.CubicCircleGeometry
