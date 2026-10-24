# Complete source: GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages.Translations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a3b6d9f31f0ab614e31e82a9c23d9b763b6dbfc` · SHA-256 `04511ab4313d28eb3695c0f07557bd60f500518f8b7eea8f8331af49ce5bc3c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled individually reviewed candidate: FullLineL2Translations

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
PMD: 510.5.060.010 lebesgue spaces; editorial placement only.
This component retains the full-line complex L² carrier, translation isometry,
almost-everywhere formula and parameter continuity. Legacy dependency binding is
UNRESOLVED; same-basename Scratch variants are not silently substituted.
All retained statements, explicit premises and proof/definition text are exact copies.
Namespace, candidate imports and any explicit ambient-context edits are receipted.
Original dependency selection, elaboration and proof checking remain unreplayed.
This candidate is outside the public umbrella. Lean and Lake have not been invoked.
-/

import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

set_option autoImplicit false
namespace GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section
abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def fullShift (a : ℝ) : FullH →ₗᵢ[ℂ] FullH :=
  Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a)

theorem fullShift_ae (a : ℝ) (f : FullH) :
    fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sub_right volume a)

theorem fullShift_continuous (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := by
  let g : ℝ → C(ℝ, ℝ) := fun a => ⟨fun x => x - a, continuous_id.sub continuous_const⟩
  have hg : Continuous g := ContinuousMap.continuous_of_continuous_uncurry g (by
    change Continuous (fun p : ℝ × ℝ => p.2 - p.1)
    fun_prop)
  exact continuous_const.compMeasurePreservingLp hg
    (fun a => measurePreserving_sub_right volume a) (by norm_num)

end
end GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages
```
