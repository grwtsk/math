import RootActualDoubleAdjointTransfer
import SourceActualAdjointLowerStrip
import SourceJointWorkConsumer

/-!
Split the already transferred actual adjoint interior at its clipped strip
boundary. The independently specified retained remainder keeps the original
baseline, lower error trace, lower column trace, deleted diagonal and main.
No new integration by parts or zero trace is asserted at the strip boundary.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdjointCompensationLocalization
open MeasureTheory Set
open scoped Interval
open SourceActualAdjointAbelPrimitives SourceActualAdjointLowerStrip
open RootActualDoubleAdjointTransfer SourceActualLogColumnTransport
open SourceActualDoubleMixedKernel SourceActualCovariantKernel SourceJointWorkConsumer
open SourceJointMangoldtWork SourceMangoldtAbel SourceStrictColumnInterior SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The upper interior is its own actual signed integral, not a subtraction of work values. -/
def actualUpperAdjointInterior (A w : ℝ) : ℝ :=
  ∫ t in min (Real.log (sourceKernelCutoff A : ℝ)) (actualTimeLower A + w)..
      Real.log (sourceKernelCutoff A : ℝ),
    ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualAdjointTimePrimitive A 0 t * actualAdjointColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s

/-- These literal original compensation terms retain the full signed upper-time interior. -/
def actualRetainedCompensationRemainder (A w : ℝ) : ℝ :=
  (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  mangoldtLogError (actualTimeLower A) * jointMangoldtTestProfile A (actualTimeLower A) +
  actualAdjointLowerColumnTrace A + actualUpperAdjointInterior A w -
  centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A

private theorem actual_box_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hUN, Real.log_le_log (by positivity) hK⟩

private theorem actual_full_interior_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t =>
      ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLowerStripDensity A 0 (t, s)) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  obtain ⟨ht, hs⟩ := actual_box_orders hA
  have hi := actualAdjointInteriorBox_integrable hA
  rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
  simpa only [IntegrableOn, intervalIntegral.integral_of_le hs,
    actualLowerStripDensity, mul_assoc] using hi.integral_prod_left

/-- Genuine full-box L1 permits the exact split, without a new artificial endpoint trace. -/
theorem actualAdjointInterior_eq_lower_add_upper {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    actualAdjointInterior A =
      actualLowerStripInterior A 0 w + actualUpperAdjointInterior A w := by
  have ht := (actual_box_orders (by linarith : 1 ≤ A)).1
  have hc : actualLowerStripUpper A w ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le ht]
    exact ⟨le_min ht (by linarith), min_le_left _ _⟩
  have hi := actual_full_interior_intervalIntegrable (by linarith : 1 ≤ A)
  obtain ⟨hl, hu⟩ := (IntervalIntegrable.trans_iff hc).mp hi
  have he := intervalIntegral.integral_add_adjacent_intervals hl hu
  simpa only [actualAdjointInterior, actualLowerStripInterior, actualUpperAdjointInterior,
    actualLowerStripUpper, actualLowerStripDensity] using he.symm

/-- The original compensated work differs from the independently literal remainder by the strip. -/
theorem compensatedJointWork_eq_retained_add_lowerStrip {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    compensatedJointWork A =
      actualRetainedCompensationRemainder A w + actualLowerStripInterior A 0 w := by
  have hW := jointMangoldtErrorWork_eq_actual_double_adjoint (by linarith : 1 ≤ A)
  have hI := actualAdjointInterior_eq_lower_add_upper hA hw
  unfold compensatedJointWork actualRetainedCompensationRemainder
  rw [hW, hI]
  simp only [actualTimeLower]
  ring

/-- Removing the fixed actual lower strip costs its proved source-specific uniform budget. -/
theorem compensatedJointWork_sub_retained_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      32 * (Real.log 4 + 4 + Real.log 2) * (Real.exp (w / 2) - 1) := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_abs_le (offset := 0) hA hw

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointCompensationLocalization
