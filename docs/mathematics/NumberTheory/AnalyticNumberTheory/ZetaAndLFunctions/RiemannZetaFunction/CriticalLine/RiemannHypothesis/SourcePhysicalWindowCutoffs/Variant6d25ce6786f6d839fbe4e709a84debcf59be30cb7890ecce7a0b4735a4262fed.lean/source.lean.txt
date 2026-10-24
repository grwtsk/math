import SourceCutoffFlux
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# The actual continuous window at the first retained long index

UNCOMPILED proof-text preparation. Native execution is held by the coordinated
source38 verification gate. The existing public
`SourceCutoffFlux.actual_adjacent_le_upper` is reused without a second proof.
Both natural floor cutoffs retain their literal source definitions.

These are source-window order and size adapters. They supply no signed work
bound, Fubini result, positivity premise, or witness for RH #16.

AI attribution: prepared with OpenAI Codex; verification remains pending.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePhysicalWindowCutoffs

open SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel

noncomputable section

/-- The actual first long logarithm is inside the original continuous window. -/
theorem actual_log_window_order {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ Real.log (vaughanCutoff A : ℝ) ∧
      Real.log (vaughanCutoff A : ℝ) ≤
        Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
        Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := zero_lt_one.trans_le hU
  have ha0 : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have hUa : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    exact_mod_cast (show vaughanCutoff A ≤ vaughanCutoff A + 1 by omega)
  have haN : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast actual_adjacent_le_upper hA
  exact ⟨Real.log_nonneg hU, Real.log_le_log hU0 hUa, Real.log_le_log ha0 haN⟩

/-- The real strip width pays the true positive integer cutoff factor. -/
theorem actual_lower_strip_width {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) -
        Real.log (vaughanCutoff A : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) -
        Real.log (vaughanCutoff A : ℝ) ≤ 1 / (vaughanCutoff A : ℝ) := by
  have horder := actual_log_window_order hA
  refine ⟨sub_nonneg.mpr horder.2.1, ?_⟩
  let u : ℝ := (vaughanCutoff A : ℝ)
  have hu1 : 1 ≤ u := by exact_mod_cast vaughanCutoff_pos A hA
  have hu : 0 < u := zero_lt_one.trans_le hu1
  have hua : 0 < u + 1 := by positivity
  have hr : 0 < (u + 1) / u := div_pos hua hu
  have hlog := Real.log_le_sub_one_of_pos hr
  rw [Real.log_div hua.ne' hu.ne'] at hlog
  have hfrac : (u + 1) / u - 1 = 1 / u := by
    field_simp [hu.ne'] <;> ring
  rw [hfrac] at hlog
  simpa only [u, Nat.cast_add, Nat.cast_one] using hlog

/-- The actual Mangoldt error budget applies throughout the lower time strip. -/
theorem actual_lower_strip_pointwise_bounds {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ Set.Icc (Real.log (vaughanCutoff A : ℝ))
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) :
    0 ≤ t ∧ Real.exp (t / 2) ≤ Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have horder := actual_log_window_order hA
  have ha0 : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  refine ⟨horder.1.trans ht.1, ?_⟩
  calc
    Real.exp (t / 2) ≤
        Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) :=
      Real.exp_le_exp.mpr (by linarith [ht.2])
    _ = Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
      rw [Real.exp_half, Real.exp_log ha0]

end
end FormalResearch.RiemannHypothesis.SourcePhysicalWindowCutoffs
