/-
# Uncompiled individually reviewed candidate: NormalizedBumpKernel

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians,
enthusiasts, and curious minds whose work and questions have helped shape these tools,
and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied;
the exact contribution, source ancestry, attribution and mechanism need clarification.
Existing contributor identities, intellectual sources and applicable notices remain
separate. No mathematical priority, new theorem credit or proof acceptance is claimed.

Original source SHA-256: b397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a
Organized source SHA-256: 9748d469bf3af377371b88f41fb6bb0720a622bacd8fcb5fd22b4cfb4253f04d
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.010.040 integration; editorial subject placement only.
All original imports and whole-file documentation are retained. This candidate
contains its selected component; the inherited introduction covers the whole source.
Statements, hypotheses, declaration comments and bodies are exact source copies.
Containing namespace, explicit namespace context and candidate imports are receipted
changes. Historical proof-checking language is not a fresh replay claim.
Outside the public library umbrella; Lean and Lake have not been invoked.
-/

import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
import Mathlib.Analysis.Calculus.BumpFunction.Convolution

/-!
# Source-faithful smoothing of the actual zero-side test

The kernel is a real, even, nonnegative smooth bump of integral one and support
inside `[-ε, ε]`. It is convolved with the unchanged unnormalized `actualTest A`
from RH-0010, equation (16). This supplies concrete smooth compact tests and
pointwise approximation, not the still-required H¹ or logarithmic-norm
convergence, smooth explicit formula, or dominated zero-side descent.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

open MeasureTheory Set Filter
open scoped ContDiff Convolution Topology Pointwise

noncomputable section

/-- A centered smooth bump with outer radius exactly the source smoothing scale. -/
def smoothingBump (ε : ℝ) (hε : 0 < ε) : ContDiffBump (0 : ℝ) where
  rIn := ε / 2
  rOut := ε
  rIn_pos := half_pos hε
  rIn_lt_rOut := half_lt_self hε

/-- The source smoothing kernel, normalized by its genuine positive Lebesgue integral. -/
def mollifier (ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  (smoothingBump ε hε).normed volume

/-- The source kernel has no negative mass. -/
theorem mollifier_nonneg (ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    0 ≤ mollifier ε hε x :=
  (smoothingBump ε hε).nonneg_normed x

/-- Reflection preserves the real kernel exactly. -/
theorem mollifier_even (ε : ℝ) (hε : 0 < ε) : Function.Even (mollifier ε hε) :=
  (smoothingBump ε hε).normed_neg

/-- Smoothness holds at every point, including the support boundary. -/
theorem mollifier_contDiff (ε : ℝ) (hε : 0 < ε) :
    ContDiff ℝ ∞ (mollifier ε hε) :=
  (smoothingBump ε hε).contDiff_normed

/-- The integral defining the mass is genuinely convergent. -/
theorem mollifier_integrable (ε : ℝ) (hε : 0 < ε) :
    Integrable (mollifier ε hε) volume :=
  (smoothingBump ε hε).integrable_normed

/-- The exact mass-one normalization is independent of the smoothing scale. -/
theorem mollifier_integral (ε : ℝ) (hε : 0 < ε) :
    (∫ x, mollifier ε hε x) = 1 :=
  (smoothingBump ε hε).integral_normed

/-- The kernel vanishes at and outside both source support endpoints. -/
theorem mollifier_support (ε : ℝ) (hε : 0 < ε) :
    Function.support (mollifier ε hε) = Ioo (-ε) ε := by
  simpa only [mollifier, smoothingBump, Real.ball_eq_Ioo, zero_sub, zero_add] using
    (smoothingBump ε hε).support_normed_eq (μ := volume)

/-- Its topological support is exactly the prescribed closed interval. -/
theorem mollifier_tsupport (ε : ℝ) (hε : 0 < ε) :
    tsupport (mollifier ε hε) = Icc (-ε) ε := by
  simpa only [mollifier, smoothingBump, Real.closedBall_eq_Icc, zero_sub, zero_add] using
    (smoothingBump ε hε).tsupport_normed_eq (μ := volume)

/-- Every kernel in the family has compact support. -/
theorem mollifier_hasCompactSupport (ε : ℝ) (hε : 0 < ε) :
    HasCompactSupport (mollifier ε hε) :=
  (smoothingBump ε hε).hasCompactSupport_normed

end
end GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
