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
