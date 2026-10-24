import SourceActualFarPeriodicWorkDecay
import RootActualRetainedMeanTrace
import RootActualCriticalWorkComparison

/-!
The full actual source interior has a genuine original-time near/far split.
Both retained mean traces and every original compensation term stay literal.
The far periodic component is the proved vanishing analytic correction;
the remaining signed near expression has no uniform arithmetic witness here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNearMeanInteriorFrontier
open MeasureTheory Set Filter
open scoped Interval Topology
open SourceActualFarPeriodicWorkDecay SourceActualFarPeriodicBudget
open RootActualRetainedMeanTrace RootActualFullPhysicalPeriodicInterior
open RootActualCriticalWorkComparison RootActualCriticalColumnTransfer
open RootActualDoubleAdjointTransfer SourceActualAdjointAbelPrimitives
open SourceActualPeriodicInteriorAbel SourceActualPeriodicColumnPrimitive
open SourceJointMangoldtWork SourceJointWorkConsumer SourceVaughanHankel SourceSamplingLedger
open RootActualCriticalUpperColumnEstimate ActualSupportEdgeLowerTrace
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual Realization
open RH16IndependentChallengeNext
noncomputable section

/-- The actual near periodic row is integrated over the unchanged original time domain. -/
def actualNearPeriodicWork (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (actualFarPeriodicCutoff A)

/-- Both actual signed mean traces and adjusted column boundaries remain in this integral. -/
def actualIntegratedMeanResolvedBoundary (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualMeanResolvedColumnBoundary A t

/-- The genuine source boundary-minus-near expression is independent of the far correction. -/
def actualNearMeanInterior (A : ℝ) : ℝ :=
  actualIntegratedMeanResolvedBoundary A - actualNearPeriodicWork A

/-- Every original baseline, lower error, full diagonal and independent main term is retained. -/
def actualNearMeanRetainedRemainder (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
  actualNearMeanInterior A - centeredDeletedDiagonal A - independentMainTerm A

private theorem time_order {A : ℝ} (hA : 25600 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hg := actualFarPeriodicCutoff_source_guards hA
  exact hg.2.2.1.trans hg.2.2.2

/-- Genuine near L1 is proved before subtracting any integrated component. -/
theorem actualNearPeriodicWork_intervalIntegrable {A : ℝ} (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (actualFarPeriodicCutoff A)) volume
          (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  exact actualFarPeriodicWork_intervalIntegrable (by linarith : 91 ≤ A)
    (by simp) (actualFarPeriodicCutoff_source_guards hA).1 (time_order hA)

/-- Actual global C4 continuity proves both mean-resolved traces genuinely L1 in source time. -/
theorem actualIntegratedMeanResolvedBoundary_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualMeanResolvedColumnBoundary A t) volume
        (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h2 := hc.continuous_iteratedDeriv 2 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  have hB : Continuous (actualMeanResolvedColumnBoundary A) := by
    unfold actualMeanResolvedColumnBoundary actualPeriodicAdjustedColumnBoundary
      actualRetainedMeanSourcePrimitive actualTwistedTimeDensity
    fun_prop
  exact (hB.intervalIntegrable _ _).continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ (time_order hA)).continuousOn

/-- The full original adjusted interior keeps the near expression and the genuine far work. -/
theorem actualAdjustedInterior_eq_near_mean_sub_far {A : ℝ} (hA : 25600 ≤ A) :
    actualCriticalAdjustedInterior A =
      actualNearMeanInterior A - actualFarPeriodicWork A (actualFarPeriodicCutoff A) := by
  have hA1 : 1 ≤ A := by linarith
  have hg := actualFarPeriodicCutoff_source_guards hA
  have hl : (vaughanCutoff A : ℝ) ≤ actualFarPeriodicCutoff A := by
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp
    linarith [hg.1]
  have hF := actualFarPeriodicWork_intervalIntegrable (by linarith : 91 ≤ A)
    hl hg.2.1 (time_order hA)
  have hN := actualNearPeriodicWork_intervalIntegrable hA
  have hB := actualIntegratedMeanResolvedBoundary_intervalIntegrable hA
  rw [actual_adjusted_interior_eq_full_physical hA1]
  have he : (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualFullPhysicalPeriodicInteriorDensity A t) =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualMeanResolvedColumnBoundary A t -
          actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
            ((vaughanCutoff A + 1 : ℕ) : ℝ) (actualFarPeriodicCutoff A) -
          actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
            (actualFarPeriodicCutoff A)
              ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    unfold actualFullPhysicalPeriodicInteriorDensity actualMeanResolvedColumnBoundary
    rw [actualTwistedTimeDensity_integral_eq_mean_traces (by linarith : 0 < A),
      actualFullPhysicalPeriodicRow_eq_near_add_far hA1 hg.1 hg.2.1]
    ring
  rw [he, intervalIntegral.integral_sub (hB.sub hN) hF, intervalIntegral.integral_sub hB hN]
  rfl

/-- The signed near-plus-mean expression differs from the full source interior only by decay. -/
theorem actualAdjustedInterior_sub_near_mean_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualCriticalAdjustedInterior A - actualNearMeanInterior A| ≤
      4 * (Real.log 4 + 4 + Real.log 2) / A ^ 4 := by
  rw [actualAdjustedInterior_eq_near_mean_sub_far hA,
    sub_sub_cancel_left, abs_neg]
  exact actualFarPeriodicWork_at_cutoff_abs_le hA

/-- This exact original-source interior discrepancy tends to zero along all real scales. -/
theorem actualAdjustedInterior_sub_near_mean_tendsto_zero :
    Tendsto (fun A : ℝ => actualCriticalAdjustedInterior A - actualNearMeanInterior A)
      atTop (𝓝 (0 : ℝ)) := by
  have hh := actualFarPeriodicWork_at_cutoff_tendsto_zero.neg
  simp only [neg_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (25600 : ℝ)] with A hA
  rw [actualAdjustedInterior_eq_near_mean_sub_far hA]
  ring

/-- All compensation terms cancel only against their identical literal source copies. -/
theorem actualRetainedRemainder_sub_near_mean_eq {A : ℝ} (hA : 25600 ≤ A) :
    actualCriticalRetainedRemainder A - actualNearMeanRetainedRemainder A =
      -actualFarPeriodicWork A (actualFarPeriodicCutoff A) := by
  unfold actualCriticalRetainedRemainder actualNearMeanRetainedRemainder
  rw [actualAdjustedInterior_eq_near_mean_sub_far hA]
  ring

/-- The original compensated work keeps both known traces and the full far correction. -/
theorem actualCompensatedWork_sub_near_mean_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |compensatedJointWork A - actualNearMeanRetainedRemainder A| ≤
      actualCriticalLowerColumnConstant / A ^ 2 +
        (actualCriticalUpperColumnConstant + 4 * (Real.log 4 + 4 + Real.log 2)) / A ^ 4 := by
  have he : compensatedJointWork A - actualNearMeanRetainedRemainder A =
      (compensatedJointWork A - actualCriticalRetainedRemainder A) -
        actualFarPeriodicWork A (actualFarPeriodicCutoff A) := by
    linarith [actualRetainedRemainder_sub_near_mean_eq hA]
  rw [he]
  have hh := (abs_sub _ _).trans (add_le_add
    (actualCompensatedWork_sub_retained_abs_le (by linarith : 91 ≤ A))
    (actualFarPeriodicWork_at_cutoff_abs_le hA))
  convert hh using 1 <;> ring

/-- The independently proved ledger error preserves a concrete remaining signed near expression. -/
theorem actualResidual_near_mean_pointwise_comparison :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 25600 ≤ A →
      mertensResidual A ≤ actualNearMeanRetainedRemainder A + 3 + C_F +
        actualCriticalLowerColumnConstant / A ^ 2 +
          (actualCriticalUpperColumnConstant + 4 * (Real.log 4 + 4 + Real.log 2)) / A ^ 4 := by
  obtain ⟨C_F, hF0, hF⟩ := actualResidual_retained_pointwise_comparison
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  have hb := actualFarPeriodicWork_at_cutoff_abs_le hA
  have he := actualRetainedRemainder_sub_near_mean_eq hA
  have hr := hF A (by linarith)
  have hu := (abs_le.mp hb).1
  have hdiv : actualCriticalUpperColumnConstant / A ^ 4 +
      4 * (Real.log 4 + 4 + Real.log 2) / A ^ 4 =
      (actualCriticalUpperColumnConstant + 4 * (Real.log 4 + 4 + Real.log 2)) / A ^ 4 := by ring
  rw [← hdiv]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNearMeanInteriorFrontier
