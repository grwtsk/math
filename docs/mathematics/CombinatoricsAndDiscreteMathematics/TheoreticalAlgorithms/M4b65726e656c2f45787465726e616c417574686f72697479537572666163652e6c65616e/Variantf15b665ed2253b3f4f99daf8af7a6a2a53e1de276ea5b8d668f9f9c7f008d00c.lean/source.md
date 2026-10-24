# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e.Variantf15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fba531f5fb91dac4210bdf547b7727afe0acc78f` · SHA-256 `f15b665ed2253b3f4f99daf8af7a6a2a53e1de276ea5b8d668f9f9c7f008d00c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M4b65726e656c2f417574686f72697479476174652e6c65616e


/- source-tree-label: STL1|L|addr=11001100|role=proof_code_atom|slug=kernel-externalauthoritysurface|owner=canonical_owner|core=Kernel/ExternalAuthoritySurface.lean|leaf=M4b65726e656c2f45787465726e616c417574686f72697479537572666163652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Kernel.ExternalAuthoritySurface

inductive ExternalSurfaceKind where
  | formalLeanArtifact
  | formalProofArtifact
  | publishedPaper
  | arxivPaper
  | officialSpecification
  | repositorySource
  | buildLog
  | testLog
  | continuousIntegrationRun
  | dataset
  | benchmark
  | expertReview
  | refereeReport
  | documentation
  | tutorial
  | encyclopedia
  | searchResult
  | llmOutput
  | jepaPrediction
  | localModelOutput
deriving Repr, DecidableEq

inductive CanonicalStatus where
  | nonAuthoritative
  | discoveryOnly
  | externalSupportOnly
  | reviewSupportOnly
  | openResidue
  | candidateGeneralization
  | finiteWitnessOnly
  | refused
  | checkedProof
  | trustedImport
  | leanChecked
  | compileChecked
  | testChecked
  | buildChecked
deriving Repr, DecidableEq

def defaultExternalStatus : ExternalSurfaceKind → CanonicalStatus
  | .formalLeanArtifact => .openResidue
  | .formalProofArtifact => .openResidue
  | .publishedPaper => .externalSupportOnly
  | .arxivPaper => .openResidue
  | .officialSpecification => .externalSupportOnly
  | .repositorySource => .externalSupportOnly
  | .buildLog => .finiteWitnessOnly
  | .testLog => .finiteWitnessOnly
  | .continuousIntegrationRun => .finiteWitnessOnly
  | .dataset => .openResidue
  | .benchmark => .openResidue
  | .expertReview => .reviewSupportOnly
  | .refereeReport => .reviewSupportOnly
  | .documentation => .externalSupportOnly
  | .tutorial => .discoveryOnly
  | .encyclopedia => .discoveryOnly
  | .searchResult => .discoveryOnly
  | .llmOutput => .nonAuthoritative
  | .jepaPrediction => .nonAuthoritative
  | .localModelOutput => .nonAuthoritative

structure SourcePin where
  present : Bool
deriving Repr, DecidableEq

structure ClaimMap where
  exact : Bool
  mapped : Bool
deriving Repr, DecidableEq

structure ReplayWitness where
  exitCode : Int
deriving Repr, DecidableEq

structure ExternalSurface where
  kind : ExternalSurfaceKind
  sourcePin : Option SourcePin
  claimMaps : List ClaimMap
  trustPolicyPresent : Bool
  replayWitness : Option ReplayWitness
deriving Repr, DecidableEq

def sourcePinned (surface : ExternalSurface) : Bool :=
  match surface.sourcePin with
  | some pin => pin.present
  | none => false

def exactClaimMapPresent (surface : ExternalSurface) : Bool :=
  !surface.claimMaps.isEmpty &&
    surface.claimMaps.all (fun m => m.exact && m.mapped)

def replayPassed (surface : ExternalSurface) : Bool :=
  match surface.replayWitness with
  | some witness => witness.exitCode = 0
  | none => false

def mayPromoteToTrustedImport (surface : ExternalSurface) : Bool :=
  sourcePinned surface &&
    surface.trustPolicyPresent &&
    exactClaimMapPresent surface

def mayPromoteToCheckedProof (surface : ExternalSurface) : Bool :=
  (surface.kind = ExternalSurfaceKind.formalLeanArtifact ||
    surface.kind = ExternalSurfaceKind.formalProofArtifact) &&
    sourcePinned surface &&
    exactClaimMapPresent surface &&
    replayPassed surface

theorem arxiv_default_not_checkedProof :
    defaultExternalStatus ExternalSurfaceKind.arxivPaper ≠
      CanonicalStatus.checkedProof := by
  decide

theorem llm_output_default_not_trustedImport :
    defaultExternalStatus ExternalSurfaceKind.llmOutput ≠
      CanonicalStatus.trustedImport := by
  decide

theorem jepa_prediction_default_not_authority :
    defaultExternalStatus ExternalSurfaceKind.jepaPrediction =
      CanonicalStatus.nonAuthoritative := by
  rfl

theorem expert_review_default_not_checkedProof :
    defaultExternalStatus ExternalSurfaceKind.expertReview ≠
      CanonicalStatus.checkedProof := by
  decide

theorem arxiv_without_gate_not_checkedProof :
    mayPromoteToCheckedProof {
      kind := ExternalSurfaceKind.arxivPaper
      sourcePin := none
      claimMaps := []
      trustPolicyPresent := false
      replayWitness := none
    } = false := by
  rfl

theorem llm_output_without_gate_not_trustedImport :
    mayPromoteToTrustedImport {
      kind := ExternalSurfaceKind.llmOutput
      sourcePin := none
      claimMaps := []
      trustPolicyPresent := false
      replayWitness := none
    } = false := by
  rfl

end Think.Kernel.ExternalAuthoritySurface
```
