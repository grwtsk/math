# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualOuterHalfCutoffNative01.Variant37cfa591df749b714d42ba99e9eb110de62aa4137a18d28a5edaa3388ccd0633

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3be954dc877cecf4db4eeff75320f4ba4c13b841` · SHA-256 `37cfa591df749b714d42ba99e9eb110de62aa4137a18d28a5edaa3388ccd0633`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing
import FormalResearch.RiemannHypothesis.SourcePositiveSampling

/-!
# Actual scalar outer half cutoff and linked continuous/Euler cancellation

Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
The unchanged closed inventory is 1..floor(exp(2A)). The unit sampled log is
zero and every other sample touches the genuine closed correlation support
when the real outer variable is at least exp(2A)/2. This is a scalar source
consequence. Physical terminal translates are retained; no norm, signed cap,
half-weight Moebius bound, or deletion of the surviving rows is asserted.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualOuterHalfCutoff

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourcePositiveSampling SourceSamplingTaylor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceMobiusKernel EstimateWeightedMobiusPairing EstimateMertensAbel

noncomputable section

/-- Each positive integer sample is literally the selected actual logarithmic profile. -/
theorem sourceKernelTerm_eq_actualLogProfile (A : ℝ) {d : ℝ} (hd : 0 < d)
    {k : ℕ} (hk : 1 ≤ k) :
    sourceKernelTerm A k d = logProfile A d (k : ℝ) := by
  have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
  rw [sourceKernelTerm_eq_archive A d k hd hk, logProfile_eq_of_pos A d hk0,
    sourceLogSamplingTerm_eq_source_weight A hd hk0,
    Real.log_mul hd.ne' hk0.ne']
  ring

/-- The entire original finite closed row agrees with those actual samples. -/
theorem sourceMobiusKernel_eq_completeLogProfileSum (A : ℝ) {d : ℝ} (hd : 0 < d) :
    sourceMobiusKernel A d =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A d (k : ℝ) := by
  unfold sourceMobiusKernel
  apply Finset.sum_congr rfl
  intro k hk
  exact sourceKernelTerm_eq_actualLogProfile A hd (Finset.mem_Icc.mp hk).1

/-- Sharp scalar zero includes the touching half-support point and the true unit term. -/
theorem sourceMobiusKernel_sharp_upper_zero {A d : ℝ} (hA : 1 ≤ A)
    (hd : Real.exp (2 * A) / 2 ≤ d) : sourceMobiusKernel A d = 0 := by
  have hA0 : 0 < A := by linarith
  have hd0 : 0 < d := (by positivity : 0 < Real.exp (2 * A) / 2).trans_le hd
  unfold sourceMobiusKernel
  apply Finset.sum_eq_zero
  intro k hk
  by_cases hk1 : k = 1
  · subst k
    simp [sourceKernelTerm]
  · have hk2 : (2 : ℝ) ≤ k := by
      exact_mod_cast (by have := (Finset.mem_Icc.mp hk).1; omega : 2 ≤ k)
    have hprod : Real.exp (2 * A) ≤ d * (k : ℝ) := by
      nlinarith [mul_le_mul_of_nonneg_left hk2 hd0.le]
    have hlog : 2 * A ≤ Real.log (d * (k : ℝ)) := by
      have h := Real.log_le_log (Real.exp_pos (2 * A)) hprod
      simpa only [Real.log_exp] using h
    have hz := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A
      (Real.log (d * (k : ℝ))) hA0 (hlog.trans (le_abs_self _))
    simp [sourceKernelTerm, exponentialTest, hz]

/-- The genuine upper-unit continuous row; no below-unit profile is inserted. -/
def actualOuterContinuousLogRow (A d : ℝ) : ℝ :=
  ∫ u in Ioi (1 : ℝ), logProfile A d u

/-- The literal complete finite sample-minus-continuous discrepancy. -/
def actualOuterEulerLogRow (A d : ℝ) : ℝ :=
  (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A d (k : ℝ)) -
    actualOuterContinuousLogRow A d

/-- The actual continuous integral has genuine L1, inherited from true compact source support. -/
theorem actualOuterContinuousLogRow_integrable {A : ℝ} (hA : 1 ≤ A) (d : ℝ) :
    IntegrableOn (logProfile A d) (Ioi (1 : ℝ)) :=
  (logProfile_integrable (by linarith : 0 < A) d).integrableOn

/-- High outer Euler rows cancel their own continuous row before any Moebius triangle. -/
theorem actualOuterEulerLogRow_sharp_upper {A d : ℝ} (hA : 1 ≤ A)
    (hd : Real.exp (2 * A) / 2 ≤ d) :
    actualOuterEulerLogRow A d = -actualOuterContinuousLogRow A d := by
  have hd0 : 0 < d := (by positivity : 0 < Real.exp (2 * A) / 2).trans_le hd
  unfold actualOuterEulerLogRow
  rw [← sourceMobiusKernel_eq_completeLogProfileSum A hd0,
    sourceMobiusKernel_sharp_upper_zero hA hd, zero_sub]

/-- Every original high outer row and its actual signed coefficient remain in this zero identity. -/
theorem actualHighOuterContinuousEuler_sum_eq_zero (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ (Finset.Icc 1 (sourceKernelCutoff A)).filter
      (fun d => Real.exp (2 * A) / 2 ≤ (d : ℝ)),
      realMoebius d * (actualOuterContinuousLogRow A d + actualOuterEulerLogRow A d)) = 0 := by
  apply Finset.sum_eq_zero
  intro d hd
  rw [actualOuterEulerLogRow_sharp_upper hA (Finset.mem_filter.mp hd).2]
  ring

/-- The unchanged original residual retains every surviving row below the exact real half cutoff. -/
theorem mertensResidual_eq_survivingOuterSum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ (Finset.Icc 1 (sourceKernelCutoff A)).filter
        (fun d => (d : ℝ) < Real.exp (2 * A) / 2),
        realMoebius d * sourceMobiusKernel A d := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  symm
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro d hd hdnot
  have hnot : ¬ (d : ℝ) < Real.exp (2 * A) / 2 := by
    intro hlt
    exact hdnot (Finset.mem_filter.mpr ⟨hd, hlt⟩)
  rw [sourceMobiusKernel_sharp_upper_zero hA (le_of_not_gt hnot), mul_zero]

/-- Complete continuous-plus-Euler reconstruction keeps the actual signs of all surviving rows. -/
theorem mertensResidual_eq_survivingContinuousEulerSum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ (Finset.Icc 1 (sourceKernelCutoff A)).filter
        (fun d => (d : ℝ) < Real.exp (2 * A) / 2),
        realMoebius d * (actualOuterContinuousLogRow A d + actualOuterEulerLogRow A d) := by
  rw [mertensResidual_eq_survivingOuterSum A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp (Finset.mem_filter.mp hd).1).1;
      omega : 0 < d)
  rw [sourceMobiusKernel_eq_completeLogProfileSum A hd0]
  unfold actualOuterEulerLogRow
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualOuterHalfCutoff
```
