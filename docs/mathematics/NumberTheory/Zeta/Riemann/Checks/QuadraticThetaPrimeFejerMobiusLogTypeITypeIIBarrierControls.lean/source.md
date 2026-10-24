# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b7421c89e51b3a08d122cbce336743ef8f59827` · SHA-256 `b9504132ca33413f68d96a0dbf88e760c96ff6d62f1c05cd42a868eddb6265a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the squarefree-gcd aggregate is split exactly at g <= sqrt(X) and g > sqrt(X)",
   "the complete centered anchor, mixed, and genuine channels remain in the signed Type I block",
   "every high-g Type II pair is genuine/genuine",
   "signed high-g control is dominated by the absolute high-g majorant",
   "the absolute low-g majorant contains the anchor/anchor term in the g=1 class",
   "the absolute low-g majorant dominates the complete Fejer anchor autocorrelation",
   "therefore absolute Type I control requires a separate target-scale anchor autocorrelation theorem",
   "signed Type I plus absolute Type II implies the complete squarefree-gcd supplier",
   "the bridge reaches the existing seven-eighths partial-prime discrepancy target",
   "the signed low-g Type I estimate remains open",
   "the absolute high-g Type II estimate remains open",
   "no sibling signed-kernel or centered-winding theorem is imported because no proved identity with this aggregate was found",
   "no threshold descent or Riemann Hypothesis result is supplied"]

theorem highGCDAnchorExclusionClosed
    {n h Y g : ℕ}
    {uv : Option ℕ × Option ℕ}
    (hY : 1 ≤ Y)
    (hg : g ∈ centeredMobiusLogHighGCDSet h Y)
    (huv :
      uv ∈ centeredMobiusLogSquarefreePairGCDClassIndexSet n h g) :
    ∃ d e : ℕ, uv = (some d, some e) :=
  centeredMobiusLogHighGCDClass_pair_is_genuine hY hg huv

theorem absoluteTypeIAnchorBarrierClosed
    (habs : SevenEighthsBoundaryMinimalAbsoluteLowGCDTypeIBound) :
    SevenEighthsBoundaryMinimalAnchorAutocorrelationBound :=
  absoluteLowGCDTypeIBound_to_anchorAutocorrelationBound habs

def remainingSignedTypeIFrontier : Prop :=
  SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound

def remainingAbsoluteTypeIIFrontier : Prop :=
  SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrierControls
```
