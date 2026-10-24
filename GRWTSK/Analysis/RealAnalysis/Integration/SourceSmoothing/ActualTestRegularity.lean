/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Mathlib retains its upstream authorship and license. -/
import GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.ActualTestConvolution
import Mathlib.Analysis.Calculus.ContDiff.Convolution

/-! # Regularity candidates for the actual source convolution
The test and mollifier are the unchanged unnormalized source test and mass-one
kernel. Compact support uses positive scale. Integral existence and smoothness
retain the source radius hypothesis 1 ≤ A and the kernel hypothesis 0 < ε.
Existence of the convolution integral is stated separately, so a totalized
integral is not used as evidence of integrability. H1/logarithmic-norm limits,
pointwise approximation, the smooth explicit formula and zero-side descent
remain separate obligations. Native compilation/kernel/axiom checks are NOT_RUN.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
open MeasureTheory Set
open scoped ContDiff Convolution Topology

noncomputable section

/-- The actual test retains the exact closed source interval as a support bound. -/
theorem actualTest_support_subset (A : ℝ) (hA : 0 < A) :
    Function.support (ZeroSideTargets.actualTest A) ⊆ Icc (-A) A := by
  classical
  intro x hx
  by_contra outside
  change ZeroSideTargets.actualTest A x ≠ 0 at hx
  apply hx
  rw [ZeroSideTargets.actualTest_eq_indicator A hA]
  simp only [Set.indicator_apply, if_neg outside]

/-- Compact support is proved for the actual test, without a realization field. -/
theorem actualTest_hasCompactSupport (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (ZeroSideTargets.actualTest A) := by
  rw [hasCompactSupport_def]
  exact (isCompact_Icc : IsCompact (Icc (-A) A)).of_isClosed_subset
    isClosed_closure (closure_minimal (actualTest_support_subset A hA) isClosed_Icc)

/-- The convolution integral exists at every point in the original radius domain. -/
theorem smoothedTest_convolution_exists (A : ℝ) (hA : 1 ≤ A)
    (ε : ℝ) (hε : 0 < ε) :
    ConvolutionExists (mollifier ε hε) (ZeroSideTargets.actualTest A)
      (ContinuousLinearMap.lsmul ℝ ℝ) volume :=
  HasCompactSupport.convolutionExists_left
    (L := ContinuousLinearMap.lsmul ℝ ℝ) (μ := volume)
    (mollifier_hasCompactSupport ε hε) (mollifier_contDiff ε hε).continuous
    (ZeroSideTargets.actualTest_integrable A hA).locallyIntegrable

/-- The actual smoothed test is smooth, including its support boundary. -/
theorem smoothedTest_contDiff (A : ℝ) (hA : 1 ≤ A) (ε : ℝ) (hε : 0 < ε) :
    ContDiff ℝ ∞ (smoothedTest A ε hε) := by
  unfold smoothedTest
  exact HasCompactSupport.contDiff_convolution_left
    (L := ContinuousLinearMap.lsmul ℝ ℝ) (μ := volume) (n := ∞)
    (mollifier_hasCompactSupport ε hε) (mollifier_contDiff ε hε)
    (ZeroSideTargets.actualTest_integrable A hA).locallyIntegrable

/-- Compact support is retained after convolution with the prescribed kernel. -/
theorem smoothedTest_hasCompactSupport (A : ℝ) (hA : 0 < A)
    (ε : ℝ) (hε : 0 < ε) : HasCompactSupport (smoothedTest A ε hε) := by
  unfold smoothedTest
  exact HasCompactSupport.convolution
    (L := ContinuousLinearMap.lsmul ℝ ℝ) (μ := volume)
    (mollifier_hasCompactSupport ε hε) (actualTest_hasCompactSupport A hA)

end
end GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
