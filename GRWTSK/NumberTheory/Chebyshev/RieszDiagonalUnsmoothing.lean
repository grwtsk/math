/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation
import Mathlib.Analysis.SpecificLimits.Basic

/-! # A justified simultaneous radius/height limit
The selected heights charge the actual inverse-radius truncation loss. This
proves arithmetic reconstruction as radius shrinks and height grows; replacing
the finite Riesz quotients by raw zero kernels still requires a separate bridge. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Chebyshev.RieszDiagonalUnsmoothing
open NormalizedRieszFiniteEvaluation EndpointConventions

def radius (n : ℕ) : ℝ := 1 / ((n : ℝ) + 2)

theorem radius_pos (n : ℕ) : 0 < radius n := by unfold radius; positivity

theorem radius_le_half (n : ℕ) : radius n ≤ 1/2 := by
  unfold radius
  apply (div_le_div_iff₀ (by positivity) (by norm_num : (0:ℝ)<2)).mpr
  norm_num

theorem radius_tendsto_zero : Tendsto radius atTop (𝓝 0) := by
  have h := tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℝ)
  have hs : Tendsto (fun n : ℕ => n+1) atTop atTop := tendsto_add_atTop_nat 1
  change Tendsto (fun n : ℕ => 1 / ((n:ℝ)+2)) atTop (𝓝 0)
  simpa [Function.comp_def, Nat.cast_add, add_assoc, one_add_one_eq_two] using h.comp hs

/-- Actual heights exist with both T_n>=n+2 and the complete pointwise budget
below the shrinking radius. This is existence, not an effective rate. -/
theorem exists_diagonal_height (M : ℕ) :
    ∃ T : ℕ → ℝ, ∀ n : ℕ, (n:ℝ)+2 ≤ T n ∧
      pointwiseRieszTailBudget M (radius n) (T n) < radius n := by
  have hex (n : ℕ) : ∃ T : ℝ, (n:ℝ)+2 ≤ T ∧
      pointwiseRieszTailBudget M (radius n) T < radius n := by
    have hb := (pointwiseRieszTailBudget_tendsto_zero M (radius n)).eventually
      (gt_mem_nhds (radius_pos n))
    obtain ⟨T,hbT,hnT⟩ := (hb.and (eventually_ge_atTop ((n:ℝ)+2))).exists
    exact ⟨T,hnT,hbT⟩
  choose T hT using hex
  exact ⟨T,hT⟩

theorem diagonal_tendsto_psiHalf (M : ℕ) (hM : 2 ≤ M) :
    ∃ T : ℕ → ℝ, Tendsto T atTop atTop ∧
      Tendsto (fun n => finiteNormalizedPointwise M (radius n) (T n)) atTop
        (𝓝 (psiHalf (M:ℝ) : ℂ)) ∧
      (∀ n, ‖(psiHalf (M:ℝ):ℂ) - finiteNormalizedPointwise M (radius n) (T n)‖ < radius n) := by
  obtain ⟨T,hT⟩ := exists_diagonal_height M
  have hMR : (2:ℝ) ≤ M := by exact_mod_cast hM
  have herr (n : ℕ) : ‖(psiHalf (M:ℝ):ℂ) - finiteNormalizedPointwise M (radius n) (T n)‖ < radius n := by
    apply (norm_pointwise_sub_finite_le M hM (radius n) (T n) (radius_pos n)
      (by have := radius_le_half n; linarith) (by have := radius_le_half n; linarith)
      (by have := (hT n).1; have := Nat.cast_nonneg (α := ℝ) n; linarith)).trans_lt (hT n).2
  refine ⟨T, ?_, ?_, herr⟩
  · apply tendsto_atTop_mono (fun n => (hT n).1)
    exact tendsto_atTop_add_const_right _ 2 tendsto_natCast_atTop_atTop
  · rw [Metric.tendsto_nhds]
    intro ε hε
    filter_upwards [radius_tendsto_zero.eventually (gt_mem_nhds hε)] with n hn
    rw [dist_eq_norm, norm_sub_rev]
    exact (herr n).trans hn
end GRWTSK.NumberTheory.Chebyshev.RieszDiagonalUnsmoothing
