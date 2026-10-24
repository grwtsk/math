/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.FirstRieszWeakRawLimit
import GRWTSK.NumberTheory.Chebyshev.RieszDiagonalUnsmoothing

/-! # Pointwise reconstruction by symmetric averages of the actual raw heads
The complete inverse-radius endpoint loss is retained. Removing the averaging
requires control of the explicitly defined mean oscillation, not just weak
convergence of integrals. -/
set_option autoImplicit false
noncomputable section
open Filter MeasureTheory Set
open scoped Topology Interval
namespace GRWTSK.NumberTheory.Chebyshev.RawSymmetricAverages
open FirstRieszWeakRawLimit RieszPointwiseReconstruction EndpointConventions RieszDiagonalUnsmoothing
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

def rawAverage (x h T : ℝ) : ℂ :=
  (∫ t in (x-h)..(x+h), rawClassicalHead t T) / ((2*h:ℝ):ℂ)
def rawAverageTailBudget (x h T : ℝ) : ℝ :=
  (firstRieszTailBudget (x+h) T+firstRieszTailBudget (x-h) T)/(2*h)
def rawMeanOscillation (x h T : ℝ) : ℝ :=
  (∫ t in (x-h)..(x+h), ‖rawClassicalHead t T-rawClassicalHead x T‖)/(2*h)

theorem norm_source_sub_average_le (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M:ℝ)-h) (hT : 2 ≤ T) :
    ‖(psiHalf (M:ℝ):ℂ)-rawAverage M h T‖ ≤ rawAverageTailBudget M h T := by
  unfold rawAverage
  rw [integral_rawClassicalHead _ _ T ha (by linarith)]
  have hp : (M:ℝ)+h ≤ (M+3:ℕ) := by push_cast; linarith
  have hm : (M:ℝ)-h ≤ (M+3:ℕ) := by push_cast; linarith
  exact pointwise_reconstruction_error M (M+3) hM (by omega) h hh hsmall _ _ _ _
    (norm_primitive_error_le (M+3) ((M:ℝ)+h) T (by omega) (by linarith) hp hT)
    (norm_primitive_error_le (M+3) ((M:ℝ)-h) T (by omega) ha hm hT)

theorem rawAverageTailBudget_tendsto_zero (x h : ℝ) :
    Tendsto (rawAverageTailBudget x h) atTop (𝓝 0) := by
  change Tendsto (fun T => (firstRieszTailBudget (x+h) T+firstRieszTailBudget (x-h) T)/(2*h)) atTop (𝓝 0)
  simpa using ((firstRieszTailBudget_tendsto_zero (x+h)).add
    (firstRieszTailBudget_tendsto_zero (x-h))).div_const (2*h)

/-- Existence of a genuine height/radius summation for the raw heads themselves. -/
theorem exists_raw_average_reconstruction (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => rawAverage M (radius n) (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ)) ∧
      (∀ n, ‖(psiHalf (M:ℝ):ℂ)-rawAverage M (radius n) (T n)‖ < radius n) := by
  have hex (n : ℕ) : ∃ T : ℝ, (n:ℝ)+2 ≤ T ∧ rawAverageTailBudget M (radius n) T < radius n := by
    obtain ⟨T,hb,ht⟩ := ((rawAverageTailBudget_tendsto_zero M (radius n)).eventually
      (gt_mem_nhds (radius_pos n)) |>.and (eventually_ge_atTop ((n:ℝ)+2))).exists
    exact ⟨T,ht,hb⟩
  choose T hT using hex
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  have herr (n : ℕ) : ‖(psiHalf (M:ℝ):ℂ)-rawAverage M (radius n) (T n)‖ < radius n := by
    apply (norm_source_sub_average_le M hM (radius n) (T n) (radius_pos n)
      (by have := radius_le_half n; linarith) (by have := radius_le_half n; linarith)
      (by have := (hT n).1; have := Nat.cast_nonneg (α := ℝ) n; linarith)).trans_lt (hT n).2
  refine ⟨T,tendsto_atTop_mono (fun n => (hT n).1)
    (tendsto_atTop_add_const_right _ 2 tendsto_natCast_atTop_atTop),?_,herr⟩
  rw [Metric.tendsto_nhds]
  intro ε hε
  filter_upwards [radius_tendsto_zero.eventually (gt_mem_nhds hε)] with n hn
  rw [dist_eq_norm,norm_sub_rev]
  exact (herr n).trans hn

theorem norm_average_sub_point_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x-h) :
    ‖rawAverage x h T-rawClassicalHead x T‖ ≤ rawMeanOscillation x h T := by
  have hi : IntervalIntegrable (fun t => rawClassicalHead t T) volume (x-h) (x+h) :=
    (show ContinuousOn (fun t => rawClassicalHead t T) (uIcc (x-h) (x+h)) from by
      intro t ht
      rw [uIcc_of_le (by linarith)] at ht
      exact (continuousAt_rawClassicalHead t T (ha.trans_le ht.1)).continuousWithinAt).intervalIntegrable
  have he : rawAverage x h T-rawClassicalHead x T =
      (∫ t in (x-h)..(x+h), rawClassicalHead t T-rawClassicalHead x T)/((2*h:ℝ):ℂ) := by
    rw [intervalIntegral.integral_sub hi intervalIntegrable_const,intervalIntegral.integral_const]
    have hd : x+h-(x-h) = 2*h := by ring
    rw [hd]
    unfold rawAverage
    simp only [Complex.real_smul]
    have hhC : (h:ℂ) ≠ 0 := by exact_mod_cast hh.ne'
    push_cast
    field_simp [hhC]
  rw [he,norm_div,Complex.norm_real,Real.norm_eq_abs,abs_of_pos (by positivity : 0 < 2*h)]
  exact div_le_div_of_nonneg_right
    (intervalIntegral.norm_integral_le_integral_norm (by linarith : x-h ≤ x+h)) (by positivity)

/-- A concrete remaining Tauberian error, stated for the actual raw head. -/
theorem norm_source_sub_raw_le (M : ℕ) (hM : 2 ≤ M) (h T : ℝ)
    (hh : 0 < h) (hsmall : h ≤ 1) (ha : 1 < (M:ℝ)-h) (hT : 2 ≤ T) :
    ‖(psiHalf (M:ℝ):ℂ)-rawClassicalHead M T‖ ≤
      rawAverageTailBudget M h T+rawMeanOscillation M h T := by
  exact (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M h T) _).trans
    (add_le_add (norm_source_sub_average_le M hM h T hh hsmall ha hT)
      (norm_average_sub_point_le M h T hh ha))
/-- The additional local oscillation estimate is sufficient to remove averaging
along the actual reconstruction heights. Its decay is not assumed proved. -/
theorem exists_raw_reconstruction_tauberian (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => rawAverage M (radius n) (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ)) ∧
      (Tendsto (fun n => rawMeanOscillation M (radius n) (T n)) atTop (𝓝 0) →
        Tendsto (fun n => rawClassicalHead M (T n)) atTop (𝓝 (psiHalf (M:ℝ):ℂ))) := by
  obtain ⟨T,hT,havg,herr⟩ := exists_raw_average_reconstruction M hM
  refine ⟨T,hT,havg,?_⟩
  intro hosc
  rw [Metric.tendsto_nhds]
  intro ε hε
  have hz := radius_tendsto_zero.add hosc
  have he := (show Tendsto (fun n => radius n+rawMeanOscillation M (radius n) (T n)) atTop (𝓝 0) from by simpa using hz).eventually (gt_mem_nhds hε)
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  filter_upwards [he] with n hn
  rw [dist_eq_norm,norm_sub_rev]
  apply (norm_sub_le_norm_sub_add_norm_sub _ (rawAverage M (radius n) (T n)) _).trans_lt
  have ho := norm_average_sub_point_le M (radius n) (T n) (radius_pos n)
    (by have := radius_le_half n; linarith)
  exact (add_le_add (herr n).le ho).trans_lt hn
end GRWTSK.NumberTheory.Chebyshev.RawSymmetricAverages
