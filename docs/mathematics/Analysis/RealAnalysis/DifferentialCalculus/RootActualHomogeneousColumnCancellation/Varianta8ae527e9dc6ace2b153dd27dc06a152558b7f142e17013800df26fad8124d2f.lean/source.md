# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualHomogeneousColumnCancellation.Varianta8ae527e9dc6ace2b153dd27dc06a152558b7f142e17013800df26fad8124d2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1077691745e880dc16dc936e49564665c3c8bd` · SHA-256 `a8ae527e9dc6ace2b153dd27dc06a152558b7f142e17013800df26fad8124d2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import RootActualDoubleAdjointTransfer
import SourceActualCenteredHalfZetaReduction

/-!
The critical half-inventory contributes a homogeneous column profile. Its
lower trace and entire adjoint interior cancel exactly except for the genuine
upper column boundary. No upper column support zero is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualHomogeneousColumnCancellation
open MeasureTheory Set
open SourceActualAdjointAbelPrimitives SourceActualLogColumnTransport
open SourceActualDoubleMixedKernel SourceActualCovariantKernel RootActualCovariantWorkKernel
open RootActualDoubleAdjointTransfer SourceActualCenteredHalfZetaReduction SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  simpa only [iteratedDeriv_succ] using
    (((actual_correlation_contDiff_four A hA).differentiable_iteratedDeriv n
      (by exact_mod_cast hn)) z).hasDerivAt

private theorem twisted_time_continuous {A : ℝ} (hA : 0 < A) (s : ℝ) :
    Continuous (fun t => actualTwistedTimeDensity A t s) := by
  have h1 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3
    (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

private theorem time_trace_integrable {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualTwistedTimeDensity A t s) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  have ht : actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) :=
    Real.log_le_log hU hUN
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  exact (hp.intervalIntegrable_of_Icc ht).mul_continuousOn
    (twisted_time_continuous (by linarith) s).continuousOn

/-- The homogeneous column FTC preserves both column boundaries of the original kernel. -/
theorem actualHomogeneousColumnInner_eq_boundary {A : ℝ} (hA : 0 < A)
    (t a c : ℝ) :
    (∫ s in a..c, Real.exp (s / 2) *
      covariantMixedDerivative (actualLogMixedDensity A) t s) =
        Real.exp (c / 2) * actualTwistedTimeDensity A t c -
          Real.exp (a / 2) * actualTwistedTimeDensity A t a := by
  let F : ℝ → ℝ := fun s => Real.exp (t / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)
  have he (s : ℝ) : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
    rw [← Real.exp_add, show s / 2 + -s / 2 = 0 by ring, Real.exp_zero]
  have hd (s : ℝ) : HasDerivAt F
      (Real.exp (s / 2) * covariantMixedDerivative (actualLogMixedDensity A) t s) s := by
    have h3 := (jet_hasDerivAt hA 3 (by norm_num) (t + s)).comp s
      ((hasDerivAt_id s).const_add t)
    have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp s
      ((hasDerivAt_id s).const_add t)
    convert (h3.sub (h1.div_const 4)).const_mul (Real.exp (t / 2)) using 1 <;> try rfl
    rw [actual_covariant_ordinary_work_kernel A hA t s]
    calc
      _ = Real.exp (t / 2) * (Real.exp (s / 2) * Real.exp (-s / 2)) *
          (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s) -
            iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
        ring
      _ = _ := by rw [he]; ring
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  have hc : Continuous (fun s => Real.exp (s / 2) *
      covariantMixedDerivative (actualLogMixedDensity A) t s) := by
    simp_rw [actual_covariant_ordinary_work_kernel A hA]
    fun_prop
  have hf (s : ℝ) : F s = Real.exp (s / 2) * actualTwistedTimeDensity A t s := by
    unfold F actualTwistedTimeDensity
    calc
      _ = Real.exp (t / 2) * 1 *
          (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
        ring
      _ = Real.exp (t / 2) * (Real.exp (s / 2) * Real.exp (-s / 2)) *
          (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
        rw [he]
      _ = _ := by ring
  simpa only [hf] using intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => hd s) (hc.intervalIntegrable a c)

/-- This independently specifies the homogeneous lower trace plus its entire interior. -/
def actualHomogeneousColumnCompensation (A coefficient : ℝ) : ℝ :=
  coefficient * Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) *
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t
          (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) +
    ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          coefficient * Real.exp (s / 2) *
            covariantMixedDerivative (actualLogMixedDensity A) t s

/-- The actual signed critical half main fixes its homogeneous coefficient independently. -/
def actualCriticalHomogeneousColumnCompensation (A : ℝ) : ℝ :=
  actualHomogeneousColumnCompensation A
    (-2 * actualCenteredHalfZetaMain (vaughanCutoff A))

/-- Lower column cancellation is exact; the opposite upper column trace is retained. -/
theorem actualHomogeneousColumnCompensation_eq_upper_trace {A : ℝ}
    (hA : 1 ≤ A) (coefficient : ℝ) :
    actualHomogeneousColumnCompensation A coefficient =
      coefficient * Real.exp (actualColumnUpper A / 2) *
        (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
          actualAdjointTimePrimitive A 0 t *
            actualTwistedTimeDensity A t (actualColumnUpper A)) := by
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  have hi (t : ℝ) : (∫ s in a..c, coefficient * Real.exp (s / 2) *
      covariantMixedDerivative (actualLogMixedDensity A) t s) =
      coefficient * (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a) := by
    simp_rw [mul_assoc, intervalIntegral.integral_const_mul]
    rw [actualHomogeneousColumnInner_eq_boundary (by linarith : 0 < A)]
  unfold actualHomogeneousColumnCompensation
  change coefficient * Real.exp (a / 2) * _ +
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t *
        ∫ s in a..c, coefficient * Real.exp (s / 2) *
          covariantMixedDerivative (actualLogMixedDensity A) t s) = _
  simp_rw [hi]
  have he : (fun t => actualAdjointTimePrimitive A 0 t *
      (coefficient * (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a))) =
      (fun t => coefficient * Real.exp (c / 2) *
        (actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t c) -
          coefficient * Real.exp (a / 2) *
            (actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t a)) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub
    ((time_trace_integrable hA c).const_mul _) ((time_trace_integrable hA a).const_mul _)]
  simp only [intervalIntegral.integral_const_mul]
  ring

/-- This actual critical sector is controlled by a genuine upper trace, not a new guard. -/
theorem actualCriticalHomogeneousColumnCompensation_eq_upper_trace {A : ℝ}
    (hA : 1 ≤ A) :
    actualCriticalHomogeneousColumnCompensation A =
      -2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
        Real.exp (actualColumnUpper A / 2) *
          (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
            actualAdjointTimePrimitive A 0 t *
              actualTwistedTimeDensity A t (actualColumnUpper A)) :=
  actualHomogeneousColumnCompensation_eq_upper_trace hA _

end
end FormalResearch.RiemannHypothesis.RootActualHomogeneousColumnCancellation
```
