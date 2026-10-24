/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.RawSymmetricAverages
import GRWTSK.Analysis.RealAnalysis.ClassicalRawCorrection

/-! # Jump-aware paired error for unaveraged raw reconstruction
Symmetric pairing cancels the odd half-jump profile exactly. The remaining
paired oscillation is an explicit analytic gate, not assumed decay. -/
set_option autoImplicit false
noncomputable section
open Filter MeasureTheory Set
open scoped Topology Interval
namespace GRWTSK.NumberTheory.Chebyshev.RawPairedOscillation
open FirstRieszWeakRawLimit RawSymmetricAverages RieszDiagonalUnsmoothing EndpointConventions
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead
open GRWTSK.Analysis.RealAnalysis.ClassicalRawCorrection

theorem rawClassicalHead_eq_log_correction (x T : ℝ) (hx : 1 < x) :
    rawClassicalHead x T = (x:ℂ)+finiteHeightZeroHead x T-
      (Real.log (1-(x⁻¹)^2):ℂ)/2+ClassicalRieszNormalization.sourceSlope := by
  unfold rawClassicalHead
  rw [slope_eq_raw_log x hx]
  push_cast
  ring

def pairedOscillation (x h T : ℝ) : ℝ :=
  (∫ t in (x-h)..(x+h), ‖rawClassicalHead t T+rawClassicalHead (2*x-t) T-
    2*rawClassicalHead x T‖)/(4*h)

def jumpProfile (x : ℝ) (j : ℂ) (t : ℝ) : ℂ := if t<x then -j else if x<t then j else 0

theorem jumpProfile_pair (x t : ℝ) (j : ℂ) :
    jumpProfile x j t+jumpProfile x j (2*x-t)-2*jumpProfile x j x = 0 := by
  rcases lt_trichotomy t x with h | rfl | h
  · simp [jumpProfile,h,show ¬ 2*x-t<x by linarith,show x<2*x-t by linarith]
  · simp [jumpProfile,show 2*t-t=t by ring]
  · simp [jumpProfile,h,show ¬ t<x by linarith,show 2*x-t<x by linarith]

theorem norm_average_sub_point_le_paired (x h T : ℝ) (hh : 0 < h) (ha : 1 < x-h) :
    ‖rawAverage x h T-rawClassicalHead x T‖ ≤ pairedOscillation x h T := by
  have hraw : ContinuousOn (fun t => rawClassicalHead t T) (uIcc (x-h) (x+h)) := by
    intro t ht
    rw [uIcc_of_le (by linarith)] at ht
    exact (continuousAt_rawClassicalHead t T (ha.trans_le ht.1)).continuousWithinAt
  have hi : IntervalIntegrable (fun t => rawClassicalHead t T) volume (x-h) (x+h) :=
    hraw.intervalIntegrable
  have hr : IntervalIntegrable (fun t => rawClassicalHead (2*x-t) T) volume (x-h) (x+h) := by
    apply ContinuousOn.intervalIntegrable
    intro t ht
    rw [uIcc_of_le (by linarith)] at ht
    exact ((continuousAt_rawClassicalHead (2*x-t) T (by linarith [ht.2])).comp (by fun_prop)).continuousWithinAt
  have href := intervalIntegral.integral_comp_sub_left (f := fun t => rawClassicalHead t T)
    (a := x-h) (b := x+h) (2*x)
  have hl : 2*x-(x+h) = x-h := by ring
  have hu : 2*x-(x-h) = x+h := by ring
  rw [hl,hu] at href
  have he : rawAverage x h T-rawClassicalHead x T =
      (∫ t in (x-h)..(x+h), rawClassicalHead t T+rawClassicalHead (2*x-t) T-
        2*rawClassicalHead x T)/((4*h:ℝ):ℂ) := by
    rw [intervalIntegral.integral_sub (hi.add hr) intervalIntegrable_const,
      intervalIntegral.integral_add hi hr,href,intervalIntegral.integral_const]
    have hd : x+h-(x-h) = 2*h := by ring
    rw [hd]
    unfold rawAverage
    simp only [Complex.real_smul]
    have hhC : (h:ℂ) ≠ 0 := by exact_mod_cast hh.ne'
    push_cast
    field_simp [hhC]
    ring
  rw [he,norm_div,Complex.norm_real,Real.norm_eq_abs,abs_of_pos (by positivity : 0 < 4*h)]
  exact div_le_div_of_nonneg_right
    (intervalIntegral.norm_integral_le_integral_norm (by linarith : x-h ≤ x+h)) (by positivity)

theorem norm_source_sub_raw_le_paired (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M:ℝ)-h) (hT : 2 ≤ T) :
    ‖(psiHalf (M:ℝ):ℂ)-rawClassicalHead M T‖ ≤
      rawAverageTailBudget M h T+pairedOscillation M h T := by
  exact (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M h T) _).trans
    (add_le_add (norm_source_sub_average_le M hM h T hh hsmall ha hT)
      (norm_average_sub_point_le_paired M h T hh ha))

theorem exists_raw_reconstruction_paired (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => rawAverage M (radius n) (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ)) ∧
      (Tendsto (fun n => pairedOscillation M (radius n) (T n)) atTop (𝓝 0) →
        Tendsto (fun n => rawClassicalHead M (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ))) := by
  obtain ⟨T,hT,havg,herr⟩ := exists_raw_average_reconstruction M hM
  refine ⟨T,hT,havg,?_⟩
  intro hosc
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := radius_tendsto_zero.add hosc
  have he := (show Tendsto (fun n => radius n+pairedOscillation M (radius n) (T n)) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  filter_upwards [he] with n hn
  rw [dist_eq_norm,norm_sub_rev]
  apply (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M (radius n) (T n)) _).trans_lt
  have ho := norm_average_sub_point_le_paired M (radius n) (T n) (radius_pos n)
    (by have := radius_le_half n; linarith)
  exact (add_le_add (herr n).le ho).trans_lt hn
end GRWTSK.NumberTheory.Chebyshev.RawPairedOscillation
