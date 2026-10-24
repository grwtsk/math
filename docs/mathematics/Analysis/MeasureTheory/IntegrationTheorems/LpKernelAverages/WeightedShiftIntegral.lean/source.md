# Complete source: GRWTSK.Analysis.MeasureTheory.IntegrationTheorems.LpKernelAverages.WeightedShiftIntegral

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a26a6dd9f777d5d970ce833443296abbe34a7ef0` · SHA-256 `4c473dbccda391f35400f67ddce942457c9faa2d808f59a08899ac38fb23ca4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled individually reviewed candidate: WeightedL2ShiftIntegral

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

Original source SHA-256: 028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5
Organized source SHA-256: 5023d9cbf1f63eff50f5ccca5411557b5209203afafd9ddec4c04c9cb08b95fb
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.020.030 integration theorems; editorial placement only.
Secondary topic: 510.5.060.010 lebesgue spaces.
This component retains the weighted-shift integrability, L²-valued integral and
integral norm bound. Its dependency on the translation candidate is explicit.
The original comment excludes a claimed half-line convolution operator; legacy
fixedKernel binding is UNRESOLVED, and no spectral or RH consequence is asserted.
All retained statements, explicit premises and proof/definition text are exact copies.
Namespace, candidate imports and any explicit ambient-context edits are receipted.
Original dependency selection, elaboration and proof checking remain unreplayed.
This candidate is outside the public umbrella. Lean and Lake have not been invoked.
-/

import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages.Translations

set_option autoImplicit false
namespace GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section
theorem weighted_shift_integrable (f : FullH) :
    Integrable (fun a : ℝ => (fixedKernel a : ℂ) • fullShift a f) := by
  refine (fixedKernel_integrable.norm.mul_const ‖f‖).mono' ?_ ?_
  · have hk : Integrable (fun a : ℝ => (fixedKernel a : ℂ)) := fixedKernel_integrable.ofReal
    exact hk.aestronglyMeasurable.smul (fullShift_continuous f).aestronglyMeasurable
  · filter_upwards [] with a
    simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map]
    exact le_rfl

/-- A vector-valued integral only; no half-line convolution operator is claimed here. -/
def bochnerVector (f : FullH) : FullH := ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f

theorem bochnerVector_norm_le (f : FullH) :
    ‖bochnerVector f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ := by
  calc
    _ ≤ ∫ a : ℝ, ‖(fixedKernel a : ℂ) • fullShift a f‖ := norm_integral_le_integral_norm _
    _ = _ := by
      simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map, integral_mul_const]

end
end GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages
```
