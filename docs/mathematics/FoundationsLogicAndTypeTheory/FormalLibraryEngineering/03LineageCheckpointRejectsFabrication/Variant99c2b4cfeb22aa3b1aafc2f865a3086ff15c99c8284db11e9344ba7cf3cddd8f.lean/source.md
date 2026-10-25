# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.03LineageCheckpointRejectsFabrication.Variant99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c791c32841877e629b411c9d7acc775d19cc2c6` · SHA-256 `99c2b4cfeb22aa3b1aafc2f865a3086ff15c99c8284db11e9344ba7cf3cddd8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.Derivation

namespace FCRS.TheoremTransfer.Cycle6.LineageCheckpoint

variable {graph : TransferDependencyGraph}
variable {source middle target : graph.Node}
variable {first second : TranslationLineage}
variable {expectedTheory expectedProposition fabricatedTheory fabricatedProposition :
  VersionId}
variable (theoryDiffers : fabricatedTheory ≠ expectedTheory)
variable (propositionDiffers : fabricatedProposition ≠ expectedProposition)
variable (middleTheoryFabricated :
  (graph.node middle).theoryVersionArtifact.identity = fabricatedTheory)
variable (middlePropositionFabricated :
  (graph.node middle).propositionArtifact = some ⟨fabricatedProposition⟩)
variable (firstRealization :
  TranslationLineageRealization graph first source middle)
variable (secondRealization :
  TranslationLineageRealization graph second middle target)

/-- A caller-selected middle node cannot override the lineage's committed IDs. -/
example : True := by
  fail_if_success
    exact (.composite middle middleTheoryFabricated middlePropositionFabricated
      firstRealization secondRealization :
      TranslationLineageRealization graph
        (.composite expectedTheory expectedProposition first second)
        source target)
  trivial

end FCRS.TheoremTransfer.Cycle6.LineageCheckpoint
```
