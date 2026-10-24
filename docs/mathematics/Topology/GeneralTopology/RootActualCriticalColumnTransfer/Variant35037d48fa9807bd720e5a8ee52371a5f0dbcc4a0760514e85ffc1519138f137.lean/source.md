# Complete source: GRWTSK.Topology.GeneralTopology.RootActualCriticalColumnTransfer.Variant35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96dec076113d24324d29582b1f6d7e9575102eb8` · SHA-256 `35037d48fa9807bd720e5a8ee52371a5f0dbcc4a0760514e85ffc1519138f137`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualHomogeneousColumnCancellation
import SourceActualCenteredHalfUpperDecay

/-!
Remove the independently specified critical half main from the genuine column
primitive. Full interval integrability transports this shift through the
original two-dimensional signed work, with its true upper column trace.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualCriticalColumnTransfer
open MeasureTheory Set
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open SourceActualDoubleMixedKernel SourceActualCovariantKernel RootActualCovariantWorkKernel
open RootActualDoubleAdjointTransfer RootActualHomogeneousColumnCancellation
open SourceActualCenteredHalfZetaReduction SourceActualCenteredHalfUpperDecay SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) ∧
      actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
        Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have hU1 : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by simp
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hUN, Real.log_le_log hU hU1,
    Real.log_le_log (hU.trans_le hU1) hK⟩

private theorem twisted_time_continuous {A : ℝ} (hA : 0 < A) (s : ℝ) :
    Continuous (fun t => actualTwistedTimeDensity A t s) := by
  have h1 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3
    (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

private theorem covariant_column_continuous {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Continuous (fun s => covariantMixedDerivative (actualLogMixedDensity A) t s) := by
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  simp_rw [actual_covariant_ordinary_work_kernel A hA]
  fun_prop

private theorem time_trace_integrable {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualTwistedTimeDensity A t s) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ht := (actual_orders hA).1
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  exact (hp.intervalIntegrable_of_Icc ht).mul_continuousOn
    (twisted_time_continuous (by linarith) s).continuousOn

/-- The actual critical homogeneous profile is subtracted from the actual column primitive. -/
def actualCriticalAdjustedColumnPrimitive (A s : ℝ) : ℝ :=
  actualAdjointColumnPrimitive A s +
    2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (s / 2)

/-- Its genuine opposite boundary keeps the original time primitive and first twisted jet. -/
def actualCriticalAdjustedLowerColumnTrace (A : ℝ) : ℝ :=
  actualCriticalAdjustedColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) *
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        actualTwistedTimeDensity A t (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))

/-- The full signed adjusted interior retains the original C4-C2/4 kernel. -/
def actualCriticalAdjustedInterior (A : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
    ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualAdjointTimePrimitive A 0 t * actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s

/-- The true upper-column trace carries the actual signed critical half main. -/
def actualCriticalUpperColumnTrace (A : ℝ) : ℝ :=
  -2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (actualColumnUpper A / 2) *
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t (actualColumnUpper A)

/-- The lower adjusted primitive is exactly the already estimated complete finite correction. -/
theorem actualCriticalAdjustedColumnPrimitive_at_lower (A : ℝ) :
    actualCriticalAdjustedColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) =
      actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) -
        actualCriticalColumnTraceMain A := by
  have he : Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) =
      Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    rw [Real.exp_half, Real.exp_log (by positivity)]
  unfold actualCriticalAdjustedColumnPrimitive actualCriticalColumnTraceMain
  rw [he]
  ring

/-- This concrete lower correction has a quantitative budget including the terminal prefix. -/
theorem actualCriticalAdjustedColumnPrimitive_lower_abs_le {A : ℝ} (hA : 4 ≤ A) :
    |actualCriticalAdjustedColumnPrimitive A
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))| ≤ 24 * A ^ 4 * Real.exp (-A) := by
  rw [actualCriticalAdjustedColumnPrimitive_at_lower A]
  exact actualAdjointColumnPrimitive_sub_criticalMain_abs_le hA

/-- Genuine full-source linearity shifts the actual critical main to its true upper trace. -/
theorem jointMangoldtErrorWork_eq_critical_adjusted_adjoint {A : ℝ} (hA : 1 ≤ A) :
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      -actualCriticalAdjustedLowerColumnTrace A - actualCriticalAdjustedInterior A -
        actualCriticalUpperColumnTrace A := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  let P := actualAdjointTimePrimitive A 0
  let Q := actualAdjointColumnPrimitive A
  let J := covariantMixedDerivative (actualLogMixedDensity A)
  let coefficient := -2 * actualCenteredHalfZetaMain (vaughanCutoff A)
  obtain ⟨ht, hl, hs⟩ := actual_orders hA
  have hQ := (actualAdjointColumnPrimitive_absolutelyContinuous hA hl hs).continuousOn
  rw [uIcc_of_le hs] at hQ
  have hcol (t : ℝ) : IntervalIntegrable (fun s => Q s * J t s) volume a c := by
    exact (hQ.intervalIntegrable_of_Icc hs).mul_continuousOn
      (covariant_column_continuous (by linarith) t).continuousOn
  have hexp (t : ℝ) : IntervalIntegrable
      (fun s => coefficient * Real.exp (s / 2) * J t s) volume a c := by
    exact ((by fun_prop : Continuous (fun s : ℝ => coefficient * Real.exp (s / 2))).mul
      (covariant_column_continuous (by linarith) t)).intervalIntegrable a c
  have hinner (t : ℝ) : (∫ s in a..c, coefficient * Real.exp (s / 2) * J t s) =
      coefficient * Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        coefficient * Real.exp (a / 2) * actualTwistedTimeDensity A t a := by
    simp_rw [mul_assoc, intervalIntegral.integral_const_mul]
    rw [actualHomogeneousColumnInner_eq_boundary (by linarith : 0 < A)]
    ring
  have hhom : IntervalIntegrable (fun t => P t *
      ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s) volume l b := by
    simp_rw [hinner]
    have he : (fun t => P t *
        (coefficient * Real.exp (c / 2) * actualTwistedTimeDensity A t c -
          coefficient * Real.exp (a / 2) * actualTwistedTimeDensity A t a)) =
        (fun t => coefficient * Real.exp (c / 2) * (P t * actualTwistedTimeDensity A t c) -
          coefficient * Real.exp (a / 2) * (P t * actualTwistedTimeDensity A t a)) := by
      funext t
      ring
    rw [he]
    exact ((time_trace_integrable hA c).const_mul _).sub
      ((time_trace_integrable hA a).const_mul _)
  have hPQ : IntervalIntegrable (fun t => P t * ∫ s in a..c, Q s * J t s) volume l b := by
    have hi := actualAdjointInteriorBox_integrable hA
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
    simpa only [l, b, a, c, P, Q, J, IntegrableOn,
      intervalIntegral.integral_of_le hs, integral_const_mul] using hi.integral_prod_left
  have hi : actualCriticalAdjustedInterior A = actualAdjointInterior A -
      (∫ t in l..b, P t * ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s) := by
    have hadj (t : ℝ) : (∫ s in a..c, actualCriticalAdjustedColumnPrimitive A s * J t s) =
        (∫ s in a..c, Q s * J t s) -
          ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s := by
      have he : (fun s => actualCriticalAdjustedColumnPrimitive A s * J t s) =
          (fun s => Q s * J t s - coefficient * Real.exp (s / 2) * J t s) := by
        funext s
        unfold actualCriticalAdjustedColumnPrimitive coefficient Q
        ring
      rw [he, intervalIntegral.integral_sub (hcol t) (hexp t)]
    have ho : actualAdjointInterior A = ∫ t in l..b, P t * ∫ s in a..c, Q s * J t s := by
      unfold actualAdjointInterior
      simp_rw [mul_assoc, ← intervalIntegral.integral_const_mul]
      rfl
    unfold actualCriticalAdjustedInterior
    have he : (∫ t in l..b, ∫ s in a..c, P t * actualCriticalAdjustedColumnPrimitive A s *
        J t s) = ∫ t in l..b, P t * ∫ s in a..c,
          actualCriticalAdjustedColumnPrimitive A s * J t s := by
      simp_rw [mul_assoc, ← intervalIntegral.integral_const_mul]
    change (∫ t in l..b, ∫ s in a..c, P t * actualCriticalAdjustedColumnPrimitive A s *
      J t s) = _
    rw [he]
    simp_rw [hadj, mul_sub]
    rw [intervalIntegral.integral_sub hPQ hhom, ho]
  have hlower : actualCriticalAdjustedLowerColumnTrace A = actualAdjointLowerColumnTrace A -
      coefficient * Real.exp (a / 2) *
        (∫ t in l..b, P t * actualTwistedTimeDensity A t a) := by
    unfold actualCriticalAdjustedLowerColumnTrace actualAdjointLowerColumnTrace
      actualCriticalAdjustedColumnPrimitive
    dsimp only [coefficient, a, P, l, b]
    ring
  have hc : actualCriticalHomogeneousColumnCompensation A =
      coefficient * Real.exp (a / 2) *
        (∫ t in l..b, P t * actualTwistedTimeDensity A t a) +
          ∫ t in l..b, P t * ∫ s in a..c, coefficient * Real.exp (s / 2) * J t s := rfl
  have hu : actualCriticalHomogeneousColumnCompensation A = actualCriticalUpperColumnTrace A :=
    actualCriticalHomogeneousColumnCompensation_eq_upper_trace hA
  rw [jointMangoldtErrorWork_eq_actual_double_adjoint hA, hlower, hi, ← hu, hc]
  ring

end
end FormalResearch.RiemannHypothesis.RootActualCriticalColumnTransfer
```
