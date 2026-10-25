# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF04TraversalPreservation.Variant61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93bdac3b1fbf2dcf4daba2b0692a9fc6bd880348` · SHA-256 `61e4f5fb3ab00b5f30138c6a8de639f01a640c5ebcabfcd48f497d493fea160f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/--
CF-04 research-rule projection for one-way source-occurrence preservation and
edgewise weight preservation.  It makes no target-occurrence reflection or
bijection claim.
-/
theorem cf04_traversalPreservation
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF04Claim M := by
  exact {
    preserved := by
      intro c
      exact ⟨
        occurrencePreserved_of_sieveTransport (M.sieveTransport c),
        registry.cf04.weightPreserved c
      ⟩
    sourceWeightCorrect := registry.cf04.sourceWeightCorrect
    fixedWeightCorrect := registry.cf04.fixedWeightCorrect
  }

end FCRS.ControlledPlane.Theorems
```
