# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroSmoothingDerivative.Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fc53add077a85628df9ee4410594e6dfa1b9df8` · SHA-256 `985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothing

/-!
# The global derivative of the source smoothing

The derivative is taken after the original `actualTest A` is extended by zero.
The source polynomial and its first derivative have zero traces at both seams,
so the global derivative is the zero extension of `testInteriorDerivative A`.
Differentiation of the fixed source convolution then keeps this global
derivative on the right of the unchanged mollifier. No interior-only surrogate,
H¹ convergence, or transform identity is assumed here.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingDerivative

open MeasureTheory Set Filter
open scoped ContDiff Convolution Topology
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing

noncomputable section

/-- Both vanishing traces justify global differentiation through the zero-extension seams. -/
theorem actualTest_hasDerivAt (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    HasDerivAt (actualTest A)
      ((Icc (-A) A).indicator (testInteriorDerivative A) x) x := by
  rw [actualTest_eq_indicator A hA]
  exact CorrelationRegularity.indicator_hasDerivAt
    (testInterior_hasDerivAt A) (testInterior_frontier A hA) x

/-- This is the derivative of the entire zero-extended function, including both endpoints. -/
theorem actualTest_deriv_eq_indicator (A : ℝ) (hA : 1 ≤ A) :
    deriv (actualTest A) = (Icc (-A) A).indicator (testInteriorDerivative A) :=
  funext fun x ↦ (actualTest_hasDerivAt A hA x).deriv

/-- The proved global C¹ regularity includes continuity of the true derivative at both seams. -/
theorem actualTest_deriv_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (actualTest A)) :=
  (actualTest_contDiff A hA).continuous_deriv_one

/-- The global derivative vanishes outside the original source interval. -/
theorem actualTest_deriv_zero_of_notMem (A : ℝ) (hA : 1 ≤ A) (x : ℝ)
    (hx : x ∉ Icc (-A) A) : deriv (actualTest A) x = 0 := by
  rw [actualTest_deriv_eq_indicator A hA]
  exact indicator_of_notMem hx _

/-- The source derivative retains the exact support interval. -/
theorem actualTest_deriv_support_subset (A : ℝ) (hA : 1 ≤ A) :
    Function.support (deriv (actualTest A)) ⊆ Icc (-A) A := by
  intro x hx
  by_contra h
  exact hx (actualTest_deriv_zero_of_notMem A hA x h)

/-- Closure of the derivative support introduces no point outside the source interval. -/
theorem actualTest_deriv_tsupport_subset (A : ℝ) (hA : 1 ≤ A) :
    tsupport (deriv (actualTest A)) ⊆ Icc (-A) A :=
  closure_minimal (actualTest_deriv_support_subset A hA) isClosed_Icc

/-- Compactness belongs to the actual global derivative. -/
theorem actualTest_deriv_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (deriv (actualTest A)) :=
  isCompact_Icc.of_isClosed_subset isClosed_closure (actualTest_deriv_tsupport_subset A hA)

/-- Continuity and compact support prove genuine integrability of the global derivative. -/
theorem actualTest_deriv_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (actualTest A)) volume :=
  (actualTest_deriv_continuous A hA).integrable_of_hasCompactSupport
    (actualTest_deriv_hasCompactSupport A hA)

/-- Every derivative-convolution integral is genuinely integrable before it is used. -/
theorem smoothing_derivative_integrand_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (x : ℝ) :
    Integrable (fun y ↦ mollifier ε hε y * deriv (actualTest A) (x - y)) volume :=
  (mollifier_hasCompactSupport ε hε).convolutionExists_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_contDiff ε hε).continuous
    (actualTest_deriv_integrable A hA).locallyIntegrable x

/-- Differentiate the original compact C¹ test inside the fixed source convolution. -/
theorem smoothedTest_hasDerivAt (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (x : ℝ) :
    HasDerivAt (smoothedTest A ε hε)
      ((mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] deriv (actualTest A)) x) x :=
  (actualTest_hasCompactSupport A hA).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (mollifier_integrable ε hε).locallyIntegrable
    (actualTest_contDiff A hA) x

/-- The exact derivative identity uses the global derivative, with the same kernel and scale. -/
theorem smoothedTest_deriv_eq_convolution (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    deriv (smoothedTest A ε hε) =
      mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] deriv (actualTest A) :=
  funext fun x ↦ (smoothedTest_hasDerivAt A ε hA hε x).deriv

/-- The derivative of the smooth source test is continuous. -/
theorem smoothedTest_deriv_continuous (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Continuous (deriv (smoothedTest A ε hε)) :=
  (smoothedTest_contDiff A ε hA hε).continuous_deriv (by simp)

/-- Differentiation does not enlarge the topological support of the smoothed test. -/
theorem smoothedTest_deriv_tsupport_subset (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    tsupport (deriv (smoothedTest A ε hε)) ⊆ Icc (-A - ε) (A + ε) :=
  tsupport_deriv_subset.trans (smoothedTest_tsupport_subset A ε hA hε)

/-- Both the smoothed test and its derivative have compact support. -/
theorem smoothedTest_deriv_hasCompactSupport (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    HasCompactSupport (deriv (smoothedTest A ε hε)) :=
  (smoothedTest_hasCompactSupport A ε hA hε).deriv

/-- The true derivative of the smoothed test is genuinely integrable. -/
theorem smoothedTest_deriv_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (deriv (smoothedTest A ε hε)) volume :=
  (smoothedTest_deriv_continuous A ε hA hε).integrable_of_hasCompactSupport
    (smoothedTest_deriv_hasCompactSupport A ε hA hε)

/-- All small-radius smoothed derivatives stay in the source's fixed common support. -/
theorem smoothedTest_deriv_tsupport_subset_common (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    (hε1 : ε ≤ 1) :
    tsupport (deriv (smoothedTest A ε hε)) ⊆ Icc (-A - 1) (A + 1) :=
  tsupport_deriv_subset.trans (smoothedTest_tsupport_subset_common A ε hA hε hε1)

/-- Shrinking the prescribed kernels recovers the continuous global derivative pointwise.
This supporting limit does not assert either of the required L² limits. -/
theorem smoothedTest_deriv_tendsto {ι : Type*} {l : Filter ι} (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) (x : ℝ) :
    Tendsto (fun i ↦ deriv (smoothedTest A (ε i) (hε i)) x) l
      (𝓝 (deriv (actualTest A) x)) := by
  have heq : (fun i ↦ deriv (smoothedTest A (ε i) (hε i)) x) =
      (fun i ↦ ((smoothingBump (ε i) (hε i)).normed volume ⋆[
        ContinuousLinearMap.lsmul ℝ ℝ, volume] deriv (actualTest A)) x) := by
    funext i
    rw [smoothedTest_deriv_eq_convolution A (ε i) hA (hε i)]
    rfl
  rw [heq]
  exact ContDiffBump.convolution_tendsto_right_of_continuous
    (φ := fun i ↦ smoothingBump (ε i) (hε i)) hlim
    (actualTest_deriv_continuous A hA) x

end
end ZeroSmoothingDerivative
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
