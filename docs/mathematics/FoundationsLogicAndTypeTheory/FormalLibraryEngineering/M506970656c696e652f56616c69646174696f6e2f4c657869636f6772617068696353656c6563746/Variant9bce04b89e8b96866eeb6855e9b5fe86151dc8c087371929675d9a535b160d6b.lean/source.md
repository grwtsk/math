# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746.Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `290ee11c4847bfc615f8af9fe4fc914b7df0eb47` · SHA-256 `9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std


/- source-tree-label: STL1|L|addr=110111010|role=proof_code_atom|slug=pipeline-validation-lexicographicselector|owner=canonical_owner|core=Pipeline/Validation/LexicographicSelector.lean|leaf=M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746f722e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Validation

inductive SelectorWeightComponent where
  | hardValidity
  | authorityRank
  | residueReduction
  | centroidMedoidGeometry
  | torsionOrdering
  | proofSearchCost
  | codexTokenCost
  | canonicalDigest
  deriving DecidableEq, Repr

def selectorWeightComponents : List SelectorWeightComponent := [
  SelectorWeightComponent.hardValidity,
  SelectorWeightComponent.authorityRank,
  SelectorWeightComponent.residueReduction,
  SelectorWeightComponent.centroidMedoidGeometry,
  SelectorWeightComponent.torsionOrdering,
  SelectorWeightComponent.proofSearchCost,
  SelectorWeightComponent.codexTokenCost,
  SelectorWeightComponent.canonicalDigest
]

theorem selector_weight_component_count_declared :
    selectorWeightComponents.length = 8 := by
  rfl

inductive SelectorProofStatus where
  | checkedLean
  | checkedTheorem
  | checkedRust
  | checkedEvidence
  | documentedBoundary
  | refereeTask
  | researchContext
  | residue
  deriving DecidableEq, Repr

def selectorAuthorityRank : SelectorProofStatus -> Nat
  | SelectorProofStatus.checkedLean => 0
  | SelectorProofStatus.checkedTheorem => 0
  | SelectorProofStatus.checkedRust => 1
  | SelectorProofStatus.checkedEvidence => 2
  | SelectorProofStatus.documentedBoundary => 5
  | SelectorProofStatus.refereeTask => 8
  | SelectorProofStatus.researchContext => 13
  | SelectorProofStatus.residue => 21

def selectorAuthorityStatuses : List SelectorProofStatus := [
  SelectorProofStatus.checkedLean,
  SelectorProofStatus.checkedTheorem,
  SelectorProofStatus.checkedRust,
  SelectorProofStatus.checkedEvidence,
  SelectorProofStatus.documentedBoundary,
  SelectorProofStatus.refereeTask,
  SelectorProofStatus.researchContext,
  SelectorProofStatus.residue
]

theorem selector_authority_status_count_declared :
    selectorAuthorityStatuses.length = 8 := by
  rfl

theorem checked_lean_rank_beats_checked_rust :
    selectorAuthorityRank SelectorProofStatus.checkedLean <
      selectorAuthorityRank SelectorProofStatus.checkedRust := by
  decide

theorem checked_rust_rank_beats_referee_task :
    selectorAuthorityRank SelectorProofStatus.checkedRust <
      selectorAuthorityRank SelectorProofStatus.refereeTask := by
  decide

theorem referee_task_rank_beats_residue :
    selectorAuthorityRank SelectorProofStatus.refereeTask <
      selectorAuthorityRank SelectorProofStatus.residue := by
  decide

inductive SelectorAuthorityRung where
  | observedResidue
  | researchQuestion
  | researchContext
  | formalStatement
  | localDefinition
  | executableValidator
  | checkedLean
  | checkedTheorem
  | releasedOrResidue
  deriving DecidableEq, Repr

def selectorAuthorityLadder : List SelectorAuthorityRung := [
  SelectorAuthorityRung.observedResidue,
  SelectorAuthorityRung.researchQuestion,
  SelectorAuthorityRung.researchContext,
  SelectorAuthorityRung.formalStatement,
  SelectorAuthorityRung.localDefinition,
  SelectorAuthorityRung.executableValidator,
  SelectorAuthorityRung.checkedLean,
  SelectorAuthorityRung.checkedTheorem,
  SelectorAuthorityRung.releasedOrResidue
]

theorem selector_authority_ladder_count_declared :
    selectorAuthorityLadder.length = 9 := by
  rfl

inductive SelectorStallRecoveryPacket where
  | pipelineBranchStallResidue
  | backtrackMorphismInvalid
  | backtrackReturnedToParent
  | validSiblingEdgeNotFound
  | residueLeafAdded
  | centroidRecomputedAfterResidue
  | medoidRecomputedAfterResidue
  | medoidMoveAcceptedAfterResidue
  | medoidMoveRejectedAfterResidue
  | residueEliminatorTreeNotConnected
  | pipelineFixedPointResidue
  deriving DecidableEq, Repr

def selectorStallRecoveryPackets : List SelectorStallRecoveryPacket := [
  SelectorStallRecoveryPacket.pipelineBranchStallResidue,
  SelectorStallRecoveryPacket.backtrackMorphismInvalid,
  SelectorStallRecoveryPacket.backtrackReturnedToParent,
  SelectorStallRecoveryPacket.validSiblingEdgeNotFound,
  SelectorStallRecoveryPacket.residueLeafAdded,
  SelectorStallRecoveryPacket.centroidRecomputedAfterResidue,
  SelectorStallRecoveryPacket.medoidRecomputedAfterResidue,
  SelectorStallRecoveryPacket.medoidMoveAcceptedAfterResidue,
  SelectorStallRecoveryPacket.medoidMoveRejectedAfterResidue,
  SelectorStallRecoveryPacket.residueEliminatorTreeNotConnected,
  SelectorStallRecoveryPacket.pipelineFixedPointResidue
]

theorem selector_stall_recovery_packet_count_declared :
    selectorStallRecoveryPackets.length = 11 := by
  rfl

structure PipelineLexicographicSelectorBoundary where
  finiteGraph : Bool
  hardValidityFirst : Bool
  invalidEdgesForbidden : Bool
  authorityBeforeResidue : Bool
  residueBeforeGeometry : Bool
  geometryBeforeTorsion : Bool
  torsionBeforeProofCost : Bool
  proofCostBeforeTokenCost : Bool
  digestFinalTieBreaker : Bool
  residueAtLeafBoundary : Bool
  stallResidueFirst : Bool
  backtrackMorphismChecked : Bool
  residueChangesLatticeBeforeMedoid : Bool
  medoidMoveNotHeuristic : Bool
  canonicalTreeRecomputed : Bool
  fixedPointResidueOnDisconnectedGraph : Bool
  nonClaimsPreserved : Bool
  theoremAuthorityClaimed : Bool
  deriving Repr

def finitePipelineLexicographicSelectorBoundary : PipelineLexicographicSelectorBoundary := {
  finiteGraph := true,
  hardValidityFirst := true,
  invalidEdgesForbidden := true,
  authorityBeforeResidue := true,
  residueBeforeGeometry := true,
  geometryBeforeTorsion := true,
  torsionBeforeProofCost := true,
  proofCostBeforeTokenCost := true,
  digestFinalTieBreaker := true,
  residueAtLeafBoundary := true,
  stallResidueFirst := true,
  backtrackMorphismChecked := true,
  residueChangesLatticeBeforeMedoid := true,
  medoidMoveNotHeuristic := true,
  canonicalTreeRecomputed := true,
  fixedPointResidueOnDisconnectedGraph := true,
  nonClaimsPreserved := true,
  theoremAuthorityClaimed := false
}

def PipelineLexicographicSelectorFiniteWitness : Prop :=
  selectorWeightComponents.length = 8 ∧
  selectorAuthorityStatuses.length = 8 ∧
  selectorAuthorityLadder.length = 9 ∧
  selectorStallRecoveryPackets.length = 11 ∧
  selectorAuthorityRank SelectorProofStatus.checkedLean = 0 ∧
  selectorAuthorityRank SelectorProofStatus.checkedTheorem = 0 ∧
  selectorAuthorityRank SelectorProofStatus.checkedRust = 1 ∧
  selectorAuthorityRank SelectorProofStatus.checkedEvidence = 2 ∧
  selectorAuthorityRank SelectorProofStatus.refereeTask = 8 ∧
  selectorAuthorityRank SelectorProofStatus.researchContext = 13 ∧
  selectorAuthorityRank SelectorProofStatus.residue = 21 ∧
  finitePipelineLexicographicSelectorBoundary.finiteGraph = true ∧
  finitePipelineLexicographicSelectorBoundary.hardValidityFirst = true ∧
  finitePipelineLexicographicSelectorBoundary.invalidEdgesForbidden = true ∧
  finitePipelineLexicographicSelectorBoundary.authorityBeforeResidue = true ∧
  finitePipelineLexicographicSelectorBoundary.residueBeforeGeometry = true ∧
  finitePipelineLexicographicSelectorBoundary.geometryBeforeTorsion = true ∧
  finitePipelineLexicographicSelectorBoundary.torsionBeforeProofCost = true ∧
  finitePipelineLexicographicSelectorBoundary.proofCostBeforeTokenCost = true ∧
  finitePipelineLexicographicSelectorBoundary.digestFinalTieBreaker = true ∧
  finitePipelineLexicographicSelectorBoundary.residueAtLeafBoundary = true ∧
  finitePipelineLexicographicSelectorBoundary.stallResidueFirst = true ∧
  finitePipelineLexicographicSelectorBoundary.backtrackMorphismChecked = true ∧
  finitePipelineLexicographicSelectorBoundary.residueChangesLatticeBeforeMedoid = true ∧
  finitePipelineLexicographicSelectorBoundary.medoidMoveNotHeuristic = true ∧
  finitePipelineLexicographicSelectorBoundary.canonicalTreeRecomputed = true ∧
  finitePipelineLexicographicSelectorBoundary.fixedPointResidueOnDisconnectedGraph = true ∧
  finitePipelineLexicographicSelectorBoundary.nonClaimsPreserved = true ∧
  finitePipelineLexicographicSelectorBoundary.theoremAuthorityClaimed = false

theorem pipeline_lexicographic_selector_finite_witness :
    PipelineLexicographicSelectorFiniteWitness := by
  simp [PipelineLexicographicSelectorFiniteWitness, selectorWeightComponents,
    selectorAuthorityStatuses, selectorAuthorityLadder, selectorStallRecoveryPackets,
    selectorAuthorityRank, finitePipelineLexicographicSelectorBoundary]

end Think.Pipeline.Validation
```
