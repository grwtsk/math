import FormalResearch.RiemannHypothesis.SourceMangoldtNorm
import Mathlib.Tactic

/-!
Actual-kernel obstruction to estimating the complete shifted-Xi contraction
by separate absolute square-root-sized arithmetic block errors. This is a
kernel norm result; it does not assert divergence of the actual signed integral.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceFullXiCellBudgetObstruction
open MeasureTheory SourcePairing SourceMangoldtNorm SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

def fullXiLogWeight (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

def fullXiAbsoluteLogBudget (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A, |fullXiLogWeight A t|

theorem actual_fullXiLogWeight_early_negative {A t : ℝ} (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 20) :
    fullXiLogWeight A t ≤ -(1 / 4 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have hs : 5 * t / A ≤ (1 / 4 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hcl : (3 / 4 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := (abs_le.mp (sourceCorrelation_deriv_abs_le_five_div hA1 t)).2
  have hf : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  unfold fullXiLogWeight
  linarith

theorem actual_fullXiLogWeight_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fullXiLogWeight A) := by
  exact (sourceCorrelation_contDiff A hA).continuous_deriv_one.sub
    ((sourceCorrelation_contDiff A hA).continuous.div_const 2)

theorem actual_fullXiAbsoluteLogBudget_linear_lower {A : ℝ} (hA : 91 ≤ A) :
    A / 80 - Real.log 2 / 4 ≤ fullXiAbsoluteLogBudget A := by
  have hp : 0 < A := by linarith
  have hlog0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hlog1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hL : Real.log (2 : ℝ) ≤ A / 20 := by linarith
  have hU : A / 20 ≤ 2 * A := by linarith
  have hc := (actual_fullXiLogWeight_continuous hp).abs
  have hm : (∫ t in Real.log 2..A / 20, (1 / 4 : ℝ)) ≤
      ∫ t in Real.log 2..A / 20, |fullXiLogWeight A t| := by
    apply intervalIntegral.integral_mono_on hL
      (continuous_const.intervalIntegrable _ _) (hc.intervalIntegrable _ _)
    intro t ht
    have hn := actual_fullXiLogWeight_early_negative (by linarith : 40 ≤ A)
      (hlog0.trans ht.1) ht.2
    linarith [neg_le_abs (fullXiLogWeight A t)]
  have hr := intervalIntegral.integral_mono_interval (μ := volume) le_rfl hL hU
    (f := fun t => |fullXiLogWeight A t|)
    (Filter.Eventually.of_forall (fun t => abs_nonneg (fullXiLogWeight A t)))
    (hc.intervalIntegrable _ _)
  rw [intervalIntegral.integral_const] at hm
  unfold fullXiAbsoluteLogBudget
  simp only [smul_eq_mul] at hm
  linarith

theorem actual_fullXiAbsoluteLogBudget_not_eventually_bounded :
    ¬ ∃ B R : ℝ, ∀ A : ℝ, 91 ≤ A → R ≤ A → fullXiAbsoluteLogBudget A ≤ B := by
  rintro ⟨B, R, h⟩
  let A : ℝ := max 91 (max R (80 * (B + Real.log 2 / 4 + 1)))
  have h91 : 91 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hB : 80 * (B + Real.log 2 / 4 + 1) ≤ A :=
    (le_max_right _ _).trans (le_max_right _ _)
  have hlo := actual_fullXiAbsoluteLogBudget_linear_lower h91
  have hhi := h A h91 hR
  linarith

end FormalResearch.RiemannHypothesis.SourceFullXiCellBudgetObstruction
