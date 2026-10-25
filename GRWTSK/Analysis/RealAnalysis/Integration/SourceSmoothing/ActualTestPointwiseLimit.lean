/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Mathlib retains its upstream authorship and license. -/
import GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.ActualTestRegularity
import Mathlib.Topology.Algebra.Indicator

/-! # Pointwise approximation candidates for the actual source test
The closed-interval zero extension is continuous because both displayed
polynomial terms vanish at both endpoints. The normalized convolution then
approximates this exact unnormalized test along every positive-scale family
tending to zero. The final statement includes the full positive real scale
domain, rather than only a selected sequence. These are source proof candidates:
native compilation, kernel replay, axiom audits and type checks are NOT_RUN.
H1/logarithmic-norm convergence, the smooth explicit formula, dominated zero-side
descent and RH remain separate obligations.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
open MeasureTheory Set Filter
open scoped Convolution Topology
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

/-- The actual zero extension is continuous across both source endpoints. -/
theorem actualTest_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (ZeroSideTargets.actualTest A) := by
  rw [ZeroSideTargets.actualTest_eq_indicator A hA]
  refine continuous_indicator ?_
    ((Realization.secondInterior_continuous A).sub
      ((Realization.bumpInterior_continuous A).div_const 4)).continuousOn
  intro x hx
  rw [frontier_Icc (by linarith : -A ≤ A)] at hx
  have hx' : x = -A ∨ x = A := by
    simpa only [mem_insert_iff, mem_singleton_iff] using hx
  rcases hx' with rfl | rfl
  · rw [(Realization.secondInterior_endpoints A hA.ne').1,
      (Realization.bumpInterior_endpoints A hA.ne').1]
    simp
  · rw [(Realization.secondInterior_endpoints A hA.ne').2,
      (Realization.bumpInterior_endpoints A hA.ne').2]
    simp

/-- Every positive-scale family tending to zero approximates the actual test. -/
theorem smoothedTest_tendsto_of_positive_family (A : ℝ) (hA : 0 < A)
    {ι : Type*} {l : Filter ι} (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hzero : Tendsto ε l (𝓝 0)) (x : ℝ) :
    Tendsto (fun i => smoothedTest A (ε i) (hε i) x) l
      (𝓝 (ZeroSideTargets.actualTest A x)) := by
  have hr : Tendsto (fun i => (smoothingBump (ε i) (hε i)).rOut) l (𝓝 0) := hzero
  simpa only [smoothedTest, mollifier] using
    (ContDiffBump.convolution_tendsto_right_of_continuous
      (μ := volume) (φ := fun i => smoothingBump (ε i) (hε i))
      hr (actualTest_continuous A hA) x)

/-- Approximation over the entire positive real scale domain at zero. -/
theorem smoothedTest_tendsto_positive_scale (A : ℝ) (hA : 0 < A) (x : ℝ) :
    Tendsto (fun ε : {ε : ℝ // 0 < ε} => smoothedTest A ε.val ε.property x)
      (Filter.comap (fun ε : {ε : ℝ // 0 < ε} => ε.val) (𝓝 (0 : ℝ)))
      (𝓝 (ZeroSideTargets.actualTest A x)) :=
  smoothedTest_tendsto_of_positive_family A hA
    (fun ε : {ε : ℝ // 0 < ε} => ε.val) (fun ε => ε.property) tendsto_comap x

end
end GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
