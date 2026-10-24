# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualFullPhysicalPeriodicInterior.Variantc0566bed37347bfdb281954588e8af4db8b2c969e60b59675a525da6dd298bac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e68d1811f5c9e0a51c9ff825b47906b3b714c73b` · SHA-256 `c0566bed37347bfdb281954588e8af4db8b2c969e60b59675a525da6dd298bac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualFarPeriodicBudget
import SourceActualPeriodicInteriorAbel

/-!
The complete original periodic column row is exactly its genuine physical
prefix Abel row. Both physical point traces, the mean, and the actual source
interior are retained. A split at any actual physical point keeps both pieces.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualFullPhysicalPeriodicInterior
open MeasureTheory Set
open scoped Interval
open SourceActualFarPeriodicBudget SourceActualPhysicalPeriodicPrimitive
open SourceActualPeriodicColumnPrimitive SourceActualPeriodicInteriorAbel
open RootActualPeriodicPhysicalCell SourceActualLogColumnTransport
open SourceActualAdjointAbelPrimitives RootActualDoubleAdjointTransfer
open RootActualCriticalColumnTransfer SourceActualCovariantKernel SourceActualDoubleMixedKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateBetaCentering Realization RH16IndependentChallengeNext
noncomputable section

/-- The true complete periodic row has the original physical column endpoints. -/
def actualFullPhysicalPeriodicRow (A t : ℝ) : ℝ :=
  actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
    ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)

/-- The full density retains the mean and adjusted source boundary with the physical row. -/
def actualFullPhysicalPeriodicInteriorDensity (A t : ℝ) : ℝ :=
  actualAdjointTimePrimitive A 0 t *
    (actualPeriodicAdjustedColumnBoundary A t -
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          actualTwistedTimeDensity A t s) - actualFullPhysicalPeriodicRow A t)

private theorem physical_orders {A : ℝ} (hA : 1 ≤ A) :
    (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
      ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  exact ⟨by simp, by exact_mod_cast actual_column_window_nonempty hA⟩

private theorem twisted_continuous {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Continuous (actualTwistedTimeDensity A t) := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

/-- The physical row equals the exact finite Abel inventory, including its preceding cell. -/
theorem actualFullPhysicalPeriodicRow_eq_finite_abel {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t = actualPeriodicColumnAbelRow A t := by
  obtain ⟨_, hk⟩ := physical_orders hA
  have hl : (0 : ℝ) < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have hT := twisted_continuous hA t
  have hi := actualLogColumnPrefix_mul_intervalIntegrable A
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (actual_column_window_nonempty hA)
    (actualTwistedTimeDensity A t) hT
  have hm : IntervalIntegrable (fun s => actualCenteredPrefixPeriodMean (vaughanCutoff A) *
      actualTwistedTimeDensity A t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) :=
    (hT.const_mul _).intervalIntegrable _ _
  unfold actualFullPhysicalPeriodicRow
  rw [actualPhysicalPeriodicPrefixRow_eq_log hl hk]
  change (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
    (actualLogColumnPrefix A s - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
      actualTwistedTimeDensity A t s) = _
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub hi hm, intervalIntegral.integral_const_mul,
    actual_prefix_T_eq_mean_add_abel_row hA t]
  ring

/-- Genuine physical Abel exposes both source point traces and all variation on the full window. -/
theorem actualFullPhysicalPeriodicRow_eq_physical_abel {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t =
      actualPhysicalPeriodicPrimitive (vaughanCutoff A)
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) *
        actualPeriodicPhysicalCellProfile A t
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) -
      actualPhysicalPeriodicPrimitive (vaughanCutoff A) ((vaughanCutoff A + 1 : ℕ) : ℝ) *
        actualPeriodicPhysicalCellProfile A t ((vaughanCutoff A + 1 : ℕ) : ℝ) -
      ∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ),
        actualPhysicalPeriodicPrimitive (vaughanCutoff A) x *
          deriv (actualPeriodicPhysicalCellProfile A t) x := by
  obtain ⟨hu, hk⟩ := physical_orders hA
  apply actual_physical_prefix_abel (vaughanCutoff A) (vaughanCutoff_pos A hA) hu hk
  rw [uIcc_of_le hk]
  exact actualPeriodicPhysicalCellProfile_contDiffOn (by linarith : 0 < A)
    (by positivity) _ t

/-- A split at any actual physical point retains the near row and the complete far row. -/
theorem actualFullPhysicalPeriodicRow_eq_near_add_far {A l : ℝ} (hA : 1 ≤ A)
    (hl : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ l)
    (hk : l ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t =
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ) l +
        actualPhysicalPeriodicPrefixRow A t l
          ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  have hu : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by simp
  unfold actualFullPhysicalPeriodicRow actualPhysicalPeriodicPrefixRow
  exact (intervalIntegral.integral_add_adjacent_intervals
    (actualPhysicalPeriodicPrefixRow_intervalIntegrable hA hu hl)
    (actualPhysicalPeriodicPrefixRow_intervalIntegrable hA (hu.trans hl) hk)).symm

/-- The entire new density is exactly the previously checked full signed density. -/
theorem actualFullPhysicalPeriodicInteriorDensity_eq {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicInteriorDensity A t = actualPeriodicInteriorDensity A t := by
  unfold actualFullPhysicalPeriodicInteriorDensity actualPeriodicInteriorDensity
  rw [actualFullPhysicalPeriodicRow_eq_finite_abel hA t]

/-- Full source L1 is retained before any time integration or component estimate. -/
theorem actualFullPhysicalPeriodicInteriorDensity_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (actualFullPhysicalPeriodicInteriorDensity A) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have he : actualFullPhysicalPeriodicInteriorDensity A = actualPeriodicInteriorDensity A :=
    funext (actualFullPhysicalPeriodicInteriorDensity_eq hA)
  rw [he]
  exact actualPeriodicInteriorDensity_intervalIntegrable hA

/-- The original adjusted interior equals the full physical density integral at every real scale. -/
theorem actual_adjusted_interior_eq_full_physical {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalAdjustedInterior A =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualFullPhysicalPeriodicInteriorDensity A t := by
  rw [actual_adjusted_interior_eq_mean_periodic hA]
  apply intervalIntegral.integral_congr
  intro t _
  exact (actualFullPhysicalPeriodicInteriorDensity_eq hA t).symm

end
end FormalResearch.RiemannHypothesis.RootActualFullPhysicalPeriodicInterior
```
