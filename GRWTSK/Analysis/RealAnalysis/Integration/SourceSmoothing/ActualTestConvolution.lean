/-
# Uncompiled individually reviewed candidate: ActualTestConvolution

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
Whole-file documentation is retained. The missing legacy actualTest import is
bound to the canonical pointwise source definitions; the selected component
keeps its original unnormalized convolution expression.
Statements, hypotheses, declaration comments and bodies are exact source copies.
Containing namespace, explicit namespace context and candidate imports are receipted
changes. Historical proof-checking language is not a fresh replay claim.
Outside the public library umbrella; Lean and Lake have not been invoked.
-/

import GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.ActualTest
import Mathlib.Analysis.Calculus.BumpFunction.Convolution
import GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.NormalizedBumpKernel

/-!
# Source-faithful smoothing of the actual zero-side test

The kernel is a real, even, nonnegative smooth bump of integral one and support
inside `[-ε, ε]`. It is convolved with the unchanged unnormalized `actualTest A`
from RH-0010, equation (16). This supplies concrete smooth compact tests and
pointwise approximation, not the still-required H¹ or logarithmic-norm
convergence, smooth explicit formula, or dominated zero-side descent.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing

open MeasureTheory Set Filter
open scoped ContDiff Convolution Topology Pointwise

noncomputable section

/-- Convolution uses the actual unnormalized source test, with real multiplication. -/
def smoothedTest (A ε : ℝ) (hε : 0 < ε) : ℝ → ℝ :=
  mollifier ε hε ⋆[ContinuousLinearMap.lsmul ℝ ℝ, volume] ZeroSideTargets.actualTest A

/-- The displayed real integral fixes the orientation and normalization of smoothing. -/
theorem smoothedTest_eq_integral (A ε : ℝ) (hε : 0 < ε) (x : ℝ) :
    smoothedTest A ε hε x =
      ∫ y, mollifier ε hε y * ZeroSideTargets.actualTest A (x - y) := rfl


end
end GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing
