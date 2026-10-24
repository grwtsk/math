/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.JensenFiniteMultiplicity
import GRWTSK.NumberTheory.Zeta.Riemann.SeparatedContourHeights
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false

/-!
# Jensen bounds for the maintained actual local zeta band

The original heightBand and bandMass are reused. Its positive and negative
parts fit into radius-5/2 disks centered at 2 ± i(N+3/2). For N>=2 the
radius-3 disks avoid the actual pole at one, so upstream analytic Jensen
applies without a boundary-zero-avoidance hypothesis. Actual analytic orders
are identified with the integer divisor before counting.

The circle modulus bounds and center lower bounds remain quantitative inputs.
No polynomial growth estimate, logarithmic-derivative regular-part estimate,
height-infinite explicit formula or prime margin is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.LocalJensenCount

open Set Metric MeromorphicOn
open scoped BigOperators
open CanonicalZeroDivisor SeparatedContourHeights
open GRWTSK.Analysis.ComplexAnalysis.JensenFiniteMultiplicity

noncomputable section

/-- Positive-height disk center; its real coordinate lies in the absolutely convergent half-plane. -/
def upperCenter (N : ℕ) : ℂ := 2 + (((N : ℝ) + 3 / 2 : ℝ) : ℂ) * Complex.I

/-- Both signs are retained explicitly; no source-conjugacy shortcut is needed. -/
def lowerCenter (N : ℕ) : ℂ := 2 - (((N : ℝ) + 3 / 2 : ℝ) : ℂ) * Complex.I

@[simp] theorem upperCenter_re (N : ℕ) : (upperCenter N).re = 2 := by simp [upperCenter]
@[simp] theorem lowerCenter_re (N : ℕ) : (lowerCenter N).re = 2 := by simp [lowerCenter]
@[simp] theorem upperCenter_im (N : ℕ) : (upperCenter N).im = (N : ℝ) + 3 / 2 := by
  simp [upperCenter]
@[simp] theorem lowerCenter_im (N : ℕ) : (lowerCenter N).im = -((N : ℝ) + 3 / 2) := by
  simp [lowerCenter]

/-- A two-by-three box fits in this closed disk, including the upper height endpoint. -/
theorem strip_box_mem_disk (z c : ℂ) (hc : c.re = 2)
    (hr : 0 < z.re ∧ z.re < 1) (hi : |z.im - c.im| ≤ 3 / 2) :
    z ∈ closedBall c (5 / 2 : ℝ) := by
  have hx : |z.re - 2| ≤ 2 := abs_le.mpr ⟨by linarith [hr.1], by linarith [hr.2]⟩
  have hx2 := (sq_le_sq₀ (abs_nonneg (z.re - 2)) (by norm_num : (0 : ℝ) ≤ 2)).mpr hx
  have hy2 := (sq_le_sq₀ (abs_nonneg (z.im - c.im))
    (by norm_num : (0 : ℝ) ≤ 3 / 2)).mpr hi
  rw [sq_abs] at hx2 hy2
  rw [Metric.mem_closedBall, dist_eq_norm]
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 5 / 2)).mp
  rw [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re, Complex.sub_im, hc]
  nlinarith

/-- A local band point with nonnegative imaginary coordinate belongs to the upper inner disk. -/
theorem band_point_upper (N : ℕ) (z : ZeroPoint) (hz : z ∈ heightBand N)
    (hi : 0 ≤ z.1.im) : z.1 ∈ closedBall (upperCenter N) (5 / 2 : ℝ) := by
  have hb := (mem_heightBand N z).mp hz
  simp only [height, abs_of_nonneg hi] at hb
  apply strip_box_mem_disk z.1 (upperCenter N) (upperCenter_re N) (point_mem_strip z)
  rw [upperCenter_im]
  exact abs_le.mpr ⟨by linarith [hb.1], by linarith [hb.2]⟩

/-- The negative half is separately covered; equal absolute heights do not merge points. -/
theorem band_point_lower (N : ℕ) (z : ZeroPoint) (hz : z ∈ heightBand N)
    (hi : z.1.im < 0) : z.1 ∈ closedBall (lowerCenter N) (5 / 2 : ℝ) := by
  have hb := (mem_heightBand N z).mp hz
  simp only [height, abs_of_neg hi] at hb
  apply strip_box_mem_disk z.1 (lowerCenter N) (lowerCenter_re N) (point_mem_strip z)
  rw [lowerCenter_im]
  exact abs_le.mpr ⟨by linarith [hb.2], by linarith [hb.1]⟩

/-- The outer disk is pole-free because its center has absolute imaginary part greater than three. -/
theorem analytic_zeta_disk (c : ℂ) (hc : 3 < |c.im|) :
    AnalyticOnNhd ℂ riemannZeta (closedBall c (3 : ℝ)) := by
  intro z hz
  apply analyticOn_riemannZeta z
  intro he
  subst z
  have hn : ‖(1 : ℂ) - c‖ ≤ 3 := by simpa [Metric.mem_closedBall, dist_eq_norm] using hz
  have hi := Complex.abs_im_le_norm ((1 : ℂ) - c)
  simp only [Complex.sub_im, Complex.one_im, zero_sub, abs_neg] at hi
  linarith

theorem analytic_zeta_upper_disk (N : ℕ) (hN : 2 ≤ N) :
    AnalyticOnNhd ℂ riemannZeta (closedBall (upperCenter N) (3 : ℝ)) := by
  apply analytic_zeta_disk
  rw [upperCenter_im, abs_of_pos (by positivity)]
  have hn : (2 : ℝ) ≤ N := by exact_mod_cast hN
  linarith

theorem analytic_zeta_lower_disk (N : ℕ) (hN : 2 ≤ N) :
    AnalyticOnNhd ℂ riemannZeta (closedBall (lowerCenter N) (3 : ℝ)) := by
  apply analytic_zeta_disk
  rw [lowerCenter_im, abs_neg, abs_of_pos (by positivity)]
  have hn : (2 : ℝ) ≤ N := by exact_mod_cast hN
  linarith

theorem upper_center_ne_zero (N : ℕ) : riemannZeta (upperCenter N) ≠ 0 :=
  riemannZeta_ne_zero_of_one_le_re (by rw [upperCenter_re]; norm_num)

theorem lower_center_ne_zero (N : ℕ) : riemannZeta (lowerCenter N) ≠ 0 :=
  riemannZeta_ne_zero_of_one_le_re (by rw [lowerCenter_re]; norm_num)

/-- The integer divisor is the established actual multiplicity, not a separately chosen weight. -/
theorem divisor_eq_multiplicity (c : ℂ) (r : ℝ)
    (hf : AnalyticOnNhd ℂ riemannZeta (closedBall c r)) (z : ZeroPoint)
    (hz : z.1 ∈ closedBall c r) :
    divisor riemannZeta (closedBall c r) z.1 = (multiplicity z : ℤ) := by
  rw [hf.divisor_apply hz, ← multiplicity_cast z]
  simp

/-- Injective passage to full complex locations retains all multiplicities in a finite subfamily. -/
theorem canonical_subfamily_jensen (c : ℂ) (M : ℝ) (hM : 1 ≤ M)
    (hf : AnalyticOnNhd ℂ riemannZeta (closedBall c (3 : ℝ)))
    (hc : riemannZeta c ≠ 0) (hbound : ∀ z ∈ sphere c (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (S : Finset ZeroPoint) (hS : ∀ z ∈ S, z.1 ∈ closedBall c (5 / 2 : ℝ)) :
    (∑ z ∈ S, (multiplicity z : ℝ)) ≤
      Real.log (M / ‖riemannZeta c‖) / Real.log (6 / 5 : ℝ) := by
  classical
  have hsmall : AnalyticOnNhd ℂ riemannZeta (closedBall c (5 / 2 : ℝ)) :=
    hf.mono (closedBall_subset_closedBall (by norm_num))
  have hid : (∑ p ∈ S.image (fun z : ZeroPoint => z.1),
      divisor riemannZeta (closedBall c (5 / 2 : ℝ)) p) =
      ∑ z ∈ S, (multiplicity z : ℤ) := by
    rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he)]
    exact Finset.sum_congr rfl (fun z hz => divisor_eq_multiplicity c (5 / 2) hsmall z (hS z hz))
  have hj := finite_divisor_sum_le_jensen riemannZeta c (5 / 2) 3 M
    (by norm_num) (by norm_num) hM hf hc hbound (S.image (fun z : ZeroPoint => z.1))
  rw [hid] at hj
  have hratio : (3 : ℝ) / (5 / 2) = 6 / 5 := by norm_num
  rw [hratio] at hj
  simpa only [Int.cast_sum, Int.cast_natCast] using hj

/-- The sharper two-center bound charges both signed bands without assuming conjugacy. -/
theorem bandMass_le_jensen (N : ℕ) (hN : 2 ≤ N) (Mplus Mminus : ℝ)
    (hMp : 1 ≤ Mplus) (hMm : 1 ≤ Mminus)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Mplus)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Mminus) :
    (bandMass N : ℝ) ≤
      (Real.log (Mplus / ‖riemannZeta (upperCenter N)‖) +
        Real.log (Mminus / ‖riemannZeta (lowerCenter N)‖)) / Real.log (6 / 5 : ℝ) := by
  classical
  let Splus := (heightBand N).filter (fun z : ZeroPoint => 0 ≤ z.1.im)
  let Sminus := (heightBand N).filter (fun z : ZeroPoint => ¬ 0 ≤ z.1.im)
  have hp' := canonical_subfamily_jensen (upperCenter N) Mplus hMp
    (analytic_zeta_upper_disk N hN) (upper_center_ne_zero N) hp Splus
    (fun z hz => band_point_upper N z (Finset.mem_filter.mp hz).1 (Finset.mem_filter.mp hz).2)
  have hm' := canonical_subfamily_jensen (lowerCenter N) Mminus hMm
    (analytic_zeta_lower_disk N hN) (lower_center_ne_zero N) hm Sminus
    (fun z hz => band_point_lower N z (Finset.mem_filter.mp hz).1
      (lt_of_not_ge (Finset.mem_filter.mp hz).2))
  have hsplit : (bandMass N : ℝ) =
      (∑ z ∈ Splus, (multiplicity z : ℝ)) + ∑ z ∈ Sminus, (multiplicity z : ℝ) := by
    simp only [bandMass, Nat.cast_sum, Splus, Sminus, Finset.sum_filter]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro z hz
    by_cases hi : 0 ≤ z.1.im <;> simp [hi]
  rw [hsplit, add_div]
  exact add_le_add hp' hm'

/-- A common source modulus ceiling and positive anchor floor produce a scalar local-count bound. -/
theorem bandMass_le_of_modulus_bounds (N : ℕ) (hN : 2 ≤ N) (M η : ℝ)
    (hM : 1 ≤ M) (hη : 0 < η)
    (hcp : η ≤ ‖riemannZeta (upperCenter N)‖) (hcm : η ≤ ‖riemannZeta (lowerCenter N)‖)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ M) :
    (bandMass N : ℝ) ≤ 2 * Real.log (M / η) / Real.log (6 / 5 : ℝ) := by
  have hlog (c : ℂ) (hc : η ≤ ‖riemannZeta c‖) :
      Real.log (M / ‖riemannZeta c‖) ≤ Real.log (M / η) := by
    apply Real.log_le_log (div_pos (by linarith) (hη.trans_le hc))
    exact div_le_div_of_nonneg_left (by linarith) hη hc
  calc
    _ ≤ _ := bandMass_le_jensen N hN M M hM hM hp hm
    _ ≤ _ := by
      apply div_le_div_of_nonneg_right _ log_six_fifths_pos.le
      linarith [hlog (upperCenter N) hcp, hlog (lowerCenter N) hcm]

/-- Exponential modulus envelopes give a linear bound in their logarithmic exponents.
In particular a polynomial-in-height ceiling would yield a logarithmic count,
but this theorem does not prove such a source ceiling or a uniform anchor floor. -/
theorem bandMass_le_of_exponential_bounds (N : ℕ) (hN : 2 ≤ N) (A C : ℝ)
    (hA : 0 ≤ A)
    (hcp : Real.exp (-C) ≤ ‖riemannZeta (upperCenter N)‖)
    (hcm : Real.exp (-C) ≤ ‖riemannZeta (lowerCenter N)‖)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Real.exp A)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Real.exp A) :
    (bandMass N : ℝ) ≤ 2 * (A + C) / Real.log (6 / 5 : ℝ) := by
  have hb := bandMass_le_of_modulus_bounds N hN (Real.exp A) (Real.exp (-C))
    (by simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hA) (Real.exp_pos _) hcp hcm hp hm
  simpa only [← Real.exp_sub, Real.log_exp, sub_neg_eq_add] using hb

/-- Any proved mass bound improves the maintained clearance; no new height sequence is selected. -/
theorem clearance_of_mass_bound (N : ℕ) (B : ℝ) (hB : (bandMass N : ℝ) ≤ B) :
    1 / (4 * (B + 1)) ≤ heightClearance N := by
  apply heightClearance_lower_of_card_bound N B
  exact (show ((heightBand N).card : ℝ) ≤ bandMass N by exact_mod_cast band_card_le_mass N).trans hB

/-- A mass bound also controls the existing finite local pole sum, not the regular term. -/
theorem local_principal_of_mass_bound (N : ℕ) (σ y B : ℝ)
    (hy : |y| = separatedHeight N) (hB : (bandMass N : ℝ) ≤ B) :
    ‖∑ z ∈ heightBand N, (multiplicity z : ℂ) /
      (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ ≤ 4 * (B + 1) * B := by
  have hm : (0 : ℝ) ≤ bandMass N := Nat.cast_nonneg _
  have hb : 0 ≤ B := hm.trans hB
  have hd := clearance_of_mass_bound N B hB
  have hdpos : 0 < 1 / (4 * (B + 1)) := by positivity
  calc
    _ ≤ (bandMass N : ℝ) / heightClearance N := local_principal_sum_bound N σ y hy
    _ ≤ B / heightClearance N :=
      div_le_div_of_nonneg_right hB (heightClearance_pos N).le
    _ ≤ B / (1 / (4 * (B + 1))) :=
      div_le_div_of_nonneg_left hb hdpos hd
    _ = _ := by field_simp

end
end GRWTSK.RiemannHypothesis.LocalJensenCount
