# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualHalfNearClosedPrefix.Variant6b932ad4e351eb92a4815f65bace0b011cb6e488a2a2314e8b9b974baa2555be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1783a69193657a037280321a3c265e28200e684` · SHA-256 `6b932ad4e351eb92a4815f65bace0b011cb6e488a2a2314e8b9b974baa2555be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualUpperPeriodMeanTrace

/-!
The literal closed centered-beta prefix absorbs its own lower period mean.
The actual half-cut mean, both adjusted Q traces, full deleted diagonal and
independently defined main term remain. Only the genuine upper mean is small;
this exact regrouping supplies no uniform signed near-work estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualHalfNearClosedPrefix
open MeasureTheory Set
open scoped Interval
open SourceActualUpperPeriodMeanTrace SourceActualHalfNearMeanInterior
open SourceActualNearMeanInteriorFrontier SourceActualFarPeriodicBudget
open RootActualRetainedMeanTrace RootActualPeriodicPhysicalCell
open SourceActualAdjointAbelPrimitives SourceActualPeriodicColumnPrimitive
open SourceActualPeriodicInteriorAbel RootActualCriticalColumnTransfer
open RootActualDoubleAdjointTransfer SourcePairing SourceSamplingLedger
open SourceJointMangoldtWork SourceMangoldtAbel SourceActualCovariantKernel
open SourceVaughanHankel ActualHalfExponentialStrongWindow
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateBetaCentering EstimateSourceMobiusKernel Realization
open RH16IndependentChallengeNext
noncomputable section

/-- The genuine finite closed centered-beta prefix is integrated without a mean subtraction. -/
def actualHalfNearClosedPrefixRow (A t : ℝ) : ℝ :=
  ∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.exp (A / 2),
    (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
      centeredBeta (vaughanCutoff A) n) * actualPeriodicPhysicalCellProfile A t x

/-- Its actual time work uses the original time interval and stable time primitive. -/
def actualHalfNearClosedPrefixWork (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualHalfNearClosedPrefixRow A t

/-- The half-cut mean remains at the literal physical point exp(A/2). -/
def actualHalfCutPeriodMeanTrace (A : ℝ) : ℝ :=
  actualCenteredPrefixPeriodMean (vaughanCutoff A) *
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t (A / 2)

/-- Full compensation is retained after the exact lower-mean regrouping. -/
def actualHalfNearClosedPrefixRetainedRemainder (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
  (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    actualAdjointTimePrimitive A 0 t * actualPeriodicAdjustedColumnBoundary A t) -
  actualHalfNearClosedPrefixWork A + actualHalfCutPeriodMeanTrace A -
    centeredDeletedDiagonal A - independentMainTerm A

private theorem actual_orders {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ Real.exp (A / 2) ∧
      actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hw := actualHalfExponentialPeriodicCutoff_strong_orders hA
  have hg := SourceActualFarPeriodicWorkDecay.actualFarPeriodicCutoff_source_guards hA
  exact ⟨hw.1, hg.2.2.1.trans hg.2.2.2⟩

private theorem physical_mean_integral {A : ℝ} (hA : 1 ≤ A) (t : ℝ)
    {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, actualPeriodicPhysicalCellProfile A t x) =
      actualRetainedMeanSourcePrimitive A t (Real.log b) -
        actualRetainedMeanSourcePrimitive A t (Real.log l) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hd (x : ℝ) (hx : x ∈ uIcc l b) :
      HasDerivAt (fun x => actualRetainedMeanSourcePrimitive A t (Real.log x))
        (actualPeriodicPhysicalCellProfile A t x) x := by
    have hh := (actualRetainedMeanSourcePrimitive_hasDerivAt (by linarith : 0 < A)
      t (Real.log x)).comp x (Real.hasDerivAt_log (hp x hx).ne')
    convert hh using 1 <;> try rfl
  have hc := (actualPeriodicPhysicalCellProfile_contDiffOn
    (by linarith : 0 < A) hl b t).continuousOn
  rw [← uIcc_of_le hlb] at hc
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt hd hc.intervalIntegrable

/-- The actual closed physical prefix row is genuinely L1, including its floor jumps. -/
theorem actualHalfNearClosedPrefixRow_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) (t : ℝ) :
    IntervalIntegrable (fun x =>
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
        centeredBeta (vaughanCutoff A) n) * actualPeriodicPhysicalCellProfile A t x) volume
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) := by
  have ho := (actual_orders hA).1
  have hi := actualPhysicalPeriodicPrefixRow_intervalIntegrable
    (by linarith : 1 ≤ A) (t := t) (by simp) ho
  have hf : IntervalIntegrable (actualPeriodicPhysicalCellProfile A t) volume
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) := by
    have hc := (actualPeriodicPhysicalCellProfile_contDiffOn
      (by linarith : 0 < A)
      (show 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) by positivity) (Real.exp (A / 2)) t).continuousOn
    rw [← uIcc_of_le ho] at hc
    exact hc.intervalIntegrable
  convert hi.add (hf.const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A))) using 1
  ext x
  ring

/-- Only the identical subtracted mean is restored; the full physical prefix stays literal. -/
theorem actualHalfNearClosedPrefixRow_eq_periodic_add_mean {A : ℝ}
    (hA : 25600 ≤ A) (t : ℝ) :
    actualHalfNearClosedPrefixRow A t =
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (Real.exp (A / 2)) +
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (actualRetainedMeanSourcePrimitive A t (A / 2) -
          actualRetainedMeanSourcePrimitive A t
            (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
  have ho := (actual_orders hA).1
  have hi := actualPhysicalPeriodicPrefixRow_intervalIntegrable
    (by linarith : 1 ≤ A) (t := t) (by simp) ho
  have hf : IntervalIntegrable (actualPeriodicPhysicalCellProfile A t) volume
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) := by
    have hc := (actualPeriodicPhysicalCellProfile_contDiffOn
      (by linarith : 0 < A)
      (show 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) by positivity) (Real.exp (A / 2)) t).continuousOn
    rw [← uIcc_of_le ho] at hc
    exact hc.intervalIntegrable
  have he : actualHalfNearClosedPrefixRow A t =
      (∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.exp (A / 2),
        ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
          centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
            actualPeriodicPhysicalCellProfile A t x) +
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        ∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.exp (A / 2),
          actualPeriodicPhysicalCellProfile A t x := by
    rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_add hi
      (hf.const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A)))]
    apply intervalIntegral.integral_congr
    intro x _
    dsimp only [actualHalfNearClosedPrefixRow]
    ring
  rw [he, physical_mean_integral (by linarith : 1 ≤ A) t (by positivity) ho, Real.log_exp]
  rfl

/-- Every retained mean time factor is genuinely L1 over the unchanged original interval. -/
theorem actualPeriodMeanTimeFactor_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) (s : ℝ) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualRetainedMeanSourcePrimitive A t s) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ho := (actual_orders hA).2
  have h1 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 1
    (by norm_num)
  have h2 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 2
    (by norm_num)
  have hc : Continuous (fun t => actualRetainedMeanSourcePrimitive A t s) := by
    unfold actualRetainedMeanSourcePrimitive
    fun_prop
  exact (hc.intervalIntegrable _ _).continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ho).continuousOn

/-- Both original adjusted Q boundary traces are genuinely L1 and remain in the work. -/
theorem actualAdjustedColumnBoundaryTime_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualPeriodicAdjustedColumnBoundary A t) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  have hB : Continuous (actualPeriodicAdjustedColumnBoundary A) := by
    unfold actualPeriodicAdjustedColumnBoundary actualTwistedTimeDensity
    fun_prop
  exact (hB.intervalIntegrable _ _).continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ (actual_orders hA).2).continuousOn

/-- Actual closed-prefix time work is L1 before its integrated signed rearrangement. -/
theorem actualHalfNearClosedPrefixWork_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualHalfNearClosedPrefixRow A t) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have hn := actualHalfNearPeriodicWork_intervalIntegrable hA
  have hv := actualPeriodMeanTimeFactor_intervalIntegrable hA (A / 2)
  have ha := actualPeriodMeanTimeFactor_intervalIntegrable hA
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
  apply (hn.add ((hv.sub ha).const_mul
    (actualCenteredPrefixPeriodMean (vaughanCutoff A)))).congr
  intro t _
  dsimp only
  rw [actualHalfNearClosedPrefixRow_eq_periodic_add_mean hA t]
  ring

/-- The exact signed time-work identity carries the half and lower mean with their true signs. -/
theorem actualHalfNearClosedPrefixWork_eq_periodic_add_mean {A : ℝ}
    (hA : 25600 ≤ A) :
    actualHalfNearClosedPrefixWork A = actualHalfNearPeriodicWork A +
      actualHalfCutPeriodMeanTrace A - actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
          actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t
            (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) := by
  have hn := actualHalfNearPeriodicWork_intervalIntegrable hA
  have hv := actualPeriodMeanTimeFactor_intervalIntegrable hA (A / 2)
  have ha := actualPeriodMeanTimeFactor_intervalIntegrable hA
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
  have he : actualHalfNearClosedPrefixWork A =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualPhysicalPeriodicPrefixRow A t
          ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) +
        actualCenteredPrefixPeriodMean (vaughanCutoff A) *
          (actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t (A / 2) -
            actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t
              (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only [actualHalfNearClosedPrefixWork]
    rw [actualHalfNearClosedPrefixRow_eq_periodic_add_mean hA t]
    ring
  rw [he, intervalIntegral.integral_add hn
    ((hv.sub ha).const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A))),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_sub hv ha]
  dsimp only [actualHalfNearPeriodicWork, actualHalfCutPeriodMeanTrace]
  ring

/-- Lower mean copies cancel inside the actual closed-prefix near work.
The full original compensation ledger remains literal. -/
theorem actualHalfNearMeanRetainedRemainder_eq_closedPrefix_sub_upper {A : ℝ}
    (hA : 25600 ≤ A) :
    actualHalfNearMeanRetainedRemainder A =
      actualHalfNearClosedPrefixRetainedRemainder A - actualUpperPeriodMeanTrace A := by
  have hb := actualAdjustedColumnBoundaryTime_intervalIntegrable hA
  have hc := actualPeriodMeanTimeFactor_intervalIntegrable hA (actualColumnUpper A)
  have ha := actualPeriodMeanTimeFactor_intervalIntegrable hA
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
  have he : actualIntegratedMeanResolvedBoundary A =
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualPeriodicAdjustedColumnBoundary A t) -
      actualUpperPeriodMeanTrace A + actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
          actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t
            (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) := by
    have he0 : actualIntegratedMeanResolvedBoundary A =
        ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
          actualAdjointTimePrimitive A 0 t * actualPeriodicAdjustedColumnBoundary A t -
          actualCenteredPrefixPeriodMean (vaughanCutoff A) *
            (actualAdjointTimePrimitive A 0 t *
              actualRetainedMeanSourcePrimitive A t (actualColumnUpper A) -
             actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t
               (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
      apply intervalIntegral.integral_congr
      intro t _
      dsimp only
      unfold actualMeanResolvedColumnBoundary
      ring
    rw [he0]
    rw [intervalIntegral.integral_sub hb
      ((hc.sub ha).const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A))),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_sub hc ha]
    unfold actualUpperPeriodMeanTrace
    ring
  have hn := actualHalfNearClosedPrefixWork_eq_periodic_add_mean hA
  unfold actualHalfNearMeanRetainedRemainder actualHalfNearMeanInterior
    actualHalfNearClosedPrefixRetainedRemainder
  rw [he]
  linarith

/-- Only the true upper mean is discarded by a proved exponentially decaying discrepancy. -/
theorem actualHalfNearMean_closedPrefix_discrepancy_abs_le {A : ℝ}
    (hA : 25600 ≤ A) :
    |actualHalfNearMeanRetainedRemainder A - actualHalfNearClosedPrefixRetainedRemainder A| ≤
      135 * (Real.log 4 + 4 + Real.log 2) * Real.exp (3 / 2) / (A * Real.exp A) := by
  rw [actualHalfNearMeanRetainedRemainder_eq_closedPrefix_sub_upper hA,
    sub_sub_cancel_left, abs_neg]
  exact actualUpperPeriodMeanTrace_abs_le (by linarith)

end
end FormalResearch.RiemannHypothesis.SourceActualHalfNearClosedPrefix
```
