# Complete source: GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.HalfLineExtension.ZeroExtensionMemLp

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9670f92d85058826f18a58a6febf0514c572075` · SHA-256 `54368ff551eb781ea207ba2fc786ad85a655b415bf8f1f75d4b550c17d0d1743`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Uncompiled individually reviewed candidate: HalfLineZeroExtensionMemLp

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
This component retains only the half-line zero-extension MemLp lemma.
It asserts no Sobolev derivative or boundary-trace theorem. The exact imported H
and its historical dependency variant remain UNRESOLVED and unreplayed.
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
theorem halfLine_zeroExtension_memLp (f : H) :
    MemLp ((Ioi (0 : ℝ)).indicator (fun x => f x)) 2 volume := by
  apply (memLp_indicator_iff_restrict measurableSet_Ioi).mpr
  exact Lp.memLp f

end
end GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages
```
