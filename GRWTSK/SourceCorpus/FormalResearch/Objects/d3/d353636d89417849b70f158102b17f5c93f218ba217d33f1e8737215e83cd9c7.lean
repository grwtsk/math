import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound

/-!
# The actual source kernel after the derivative-energy bound

This local consumer connects the existing, checked source correlation and its two
vanishing moments to the finite logarithmic sampling theorem. The cutoff is the
actual `exp (2 * A)` inventory; no abstract kernel is substituted.

Source: the RH conversation audited on 2026-10-08, Batch 25, and the source
definitions already present in this repository. Mathematical direction and
selection: grwtsk contributors. Lean implementation: OpenAI Codex.
The imported definitions and proofs retain their original names and attribution.
The new contribution is the assembled bound and its endpoint consumer.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ActualKernelBound

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceMobiusKernel EstimateMertensAbel EstimateLogSampling
open EstimateTwoMomentSampling EstimateTwoMomentSamplingBound EstimateMomentReflection

noncomputable section

/-- The actual support proves the tail condition needed by finite quadrature. -/
theorem actual_sampling_tail_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 1 ≤ x) :
    SamplingTailZero (sourceCorrelation Realization.explicitSecondDerivative A)
      x (sourceKernelCutoff A) := by
  intro u hu
  have huUpper : sourceUpper A < u :=
    (Nat.lt_floor_add_one (sourceUpper A)).trans hu
  have hu0 : 0 < u := (Real.exp_pos (2 * A)).trans huUpper
  have hlogu : 2 * A < Real.log u := by
    rw [Real.lt_log_iff_exp_lt hu0]
    exact huUpper
  have hlogx : 0 ≤ Real.log x := Real.log_nonneg hx
  have hzero := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
    A (Real.log x + Real.log u) (by linarith)
    (by linarith [le_abs_self (Real.log x + Real.log u)])
  simp [logSamplingTerm, hzero]

/-- Uniform actual-source kernel bound with the scale-sensitive derivative term. -/
theorem sourceMobiusKernel_abs_le {A x : ℝ} (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |sourceMobiusKernel A x| ≤ (8 + 20 / A) / Real.sqrt x := by
  have hx0 : 0 < x := by linarith
  have hB : ProfileSupBounds
      (sourceCorrelation Realization.explicitSecondDerivative A) 1 (5 / A) := by
    refine ⟨by norm_num, by positivity, ?_, ?_⟩
    · exact fun t => EstimateCorrelation.actual_correlation_abs_le_one A t hA
    · exact fun t => sourceCorrelation_deriv_abs_le_five_div hA t
  have h := two_moment_sampling_bound_sqrt
    (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith))
    (sourceCorrelation_twoMomentProfile A hA) hx0 hB
    (sourceKernelCutoff A) (actual_sampling_tail_zero hA hx)
  rw [leftSampleSum_source_eq A x (sourceKernelCutoff A) hx0] at h
  have hc : 8 * (1 : ℝ) + 4 * (5 / A) = 8 + 20 / A := by ring
  simpa only [sourceMobiusKernel, hc] using h

/-- The lower endpoint has square root exactly `A`, rather than a new scale. -/
theorem sourceMobiusKernel_lower_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |sourceMobiusKernel A (A ^ 2)| ≤ (8 + 20 / A) / A := by
  simpa only [Real.sqrt_sq (by linarith : 0 ≤ A)] using
    sourceMobiusKernel_abs_le hA (by nlinarith : 1 ≤ A ^ 2)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualKernelBound
