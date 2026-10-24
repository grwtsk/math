import ActualHalfExponentialStrongWindow
import SourceActualNearMeanInteriorFrontier

/-!
The literal original near/mean/ledger remainder is reduced to the smaller
half-exponential cutoff using its proved true lower-column guard. Every
baseline, mean trace, deleted diagonal and independent main term is retained.
Only the genuine far component has a uniform budget; no near witness follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualHalfNearMeanInterior
open MeasureTheory Set
open scoped Interval
open ActualHalfExponentialStrongWindow ActualPeriodicHalfExponentialFar
open SourceActualNearMeanInteriorFrontier SourceActualFarPeriodicWorkDecay
open SourceActualFarPeriodicBudget RootActualRetainedMeanTrace
open RootActualFullPhysicalPeriodicInterior RootActualCriticalWorkComparison
open RootActualCriticalColumnTransfer RootActualDoubleAdjointTransfer
open SourceActualAdjointAbelPrimitives SourceActualPeriodicInteriorAbel
open SourceActualPeriodicColumnPrimitive SourceJointMangoldtWork SourceJointWorkConsumer
open SourceVaughanHankel SourceSamplingLedger RootActualCriticalUpperColumnEstimate
open ActualSupportEdgeLowerTrace SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual Realization
open RH16IndependentChallengeNext
noncomputable section

/-- Genuine near work has the original time domain and the smaller physical cutoff. -/
def actualHalfNearPeriodicWork (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2))

/-- Both original signed mean traces remain before subtracting the smaller near work. -/
def actualHalfNearMeanInterior (A : ℝ) : ℝ :=
  actualIntegratedMeanResolvedBoundary A - actualHalfNearPeriodicWork A

/-- The complete original baseline, lower error, full diagonal and independent main remain. -/
def actualHalfNearMeanRetainedRemainder (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
  actualHalfNearMeanInterior A - centeredDeletedDiagonal A - independentMainTerm A

private theorem time_order {A : ℝ} (hA : 25600 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hg := actualFarPeriodicCutoff_source_guards hA
  exact hg.2.2.1.trans hg.2.2.2

/-- Actual near L1 follows from the genuine physical row integral before subtraction. -/
theorem actualHalfNearPeriodicWork_intervalIntegrable {A : ℝ} (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (Real.exp (A / 2))) volume
          (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  exact actualFarPeriodicWork_intervalIntegrable (by linarith : 91 ≤ A)
    (by simp) (actualHalfExponentialPeriodicCutoff_lower_column hA) (time_order hA)

/-- The full actual adjusted interior splits at the proved smaller cutoff, with no lost term. -/
theorem actualAdjustedInterior_eq_half_near_mean_sub_far {A : ℝ} (hA : 25600 ≤ A) :
    actualCriticalAdjustedInterior A =
      actualHalfNearMeanInterior A - actualFarPeriodicWork A (Real.exp (A / 2)) := by
  have hg := actualHalfExponentialPeriodicCutoff_strong_orders hA
  change ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ Real.exp (A / 2) ∧
    Real.exp (A / 2) ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) at hg
  have hl : (vaughanCutoff A : ℝ) ≤ Real.exp (A / 2) := by
    have hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp
    linarith [hg.1]
  have hF := actualFarPeriodicWork_intervalIntegrable (by linarith : 91 ≤ A)
    hl hg.2 (time_order hA)
  have hN := actualHalfNearPeriodicWork_intervalIntegrable hA
  have hB := actualIntegratedMeanResolvedBoundary_intervalIntegrable hA
  rw [actual_adjusted_interior_eq_full_physical (by linarith : 1 ≤ A)]
  have he : (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualFullPhysicalPeriodicInteriorDensity A t) =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualMeanResolvedColumnBoundary A t -
          actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
            ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) -
          actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
            (Real.exp (A / 2))
              ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    unfold actualFullPhysicalPeriodicInteriorDensity actualMeanResolvedColumnBoundary
    rw [actualTwistedTimeDensity_integral_eq_mean_traces (by linarith : 0 < A),
      actualFullPhysicalPeriodicRow_eq_half_near_add_far hA]
    dsimp only [actualHalfExponentialPeriodicCutoff]
    ring
  rw [he, intervalIntegral.integral_sub (hB.sub hN) hF, intervalIntegral.integral_sub hB hN]
  rfl

/-- Identical original compensation terms cancel only against their literal copies. -/
theorem actualRetainedRemainder_sub_half_near_mean_eq {A : ℝ} (hA : 25600 ≤ A) :
    actualCriticalRetainedRemainder A - actualHalfNearMeanRetainedRemainder A =
      -actualFarPeriodicWork A (Real.exp (A / 2)) := by
  unfold actualCriticalRetainedRemainder actualHalfNearMeanRetainedRemainder
  rw [actualAdjustedInterior_eq_half_near_mean_sub_far hA]
  ring

/-- The full original compensated work retains both critical traces and the uniform far cost. -/
theorem actualCompensatedWork_sub_half_near_mean_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |compensatedJointWork A - actualHalfNearMeanRetainedRemainder A| ≤
      actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 +
        402 * (Real.log 4 + 4 + Real.log 2) := by
  have he : compensatedJointWork A - actualHalfNearMeanRetainedRemainder A =
      (compensatedJointWork A - actualCriticalRetainedRemainder A) -
        actualFarPeriodicWork A (Real.exp (A / 2)) := by
    linarith [actualRetainedRemainder_sub_half_near_mean_eq hA]
  rw [he]
  exact (abs_sub _ _).trans (add_le_add
    (actualCompensatedWork_sub_retained_abs_le (by linarith : 91 ≤ A))
    (actualHalfExponentialFarPeriodicWork_abs_le hA))

/-- The original endpoint and independent ledger give an unconditional pointwise source return. -/
theorem actualResidual_half_near_mean_pointwise_comparison :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 25600 ≤ A →
      mertensResidual A ≤ actualHalfNearMeanRetainedRemainder A + 3 + C_F +
        actualCriticalLowerColumnConstant / A ^ 2 + actualCriticalUpperColumnConstant / A ^ 4 +
          402 * (Real.log 4 + 4 + Real.log 2) := by
  obtain ⟨C_F, hF0, hF⟩ := actualResidual_retained_pointwise_comparison
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  have hb := actualHalfExponentialFarPeriodicWork_abs_le hA
  dsimp only [actualHalfExponentialPeriodicCutoff] at hb
  have he := actualRetainedRemainder_sub_half_near_mean_eq hA
  have hr := hF A (by linarith)
  have hu := (abs_le.mp hb).1
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualHalfNearMeanInterior
