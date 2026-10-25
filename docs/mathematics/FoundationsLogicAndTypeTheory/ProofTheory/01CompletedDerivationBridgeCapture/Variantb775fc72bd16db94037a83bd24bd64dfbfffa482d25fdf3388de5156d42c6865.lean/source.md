# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01CompletedDerivationBridgeCapture.Variantb775fc72bd16db94037a83bd24bd64dfbfffa482d25fdf3388de5156d42c6865

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d82df3f002ae30c45cfcf1f4326c936eaaabfa67` · SHA-256 `f9f0671ab8a935a8a5cfe2fa0a5b3d7972cb8f8f757090252940aa15b39716cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CircularBridge.Variantb4285a51ce047db2c2cb874927f3a250df261cba20df7c0e0c07a8ddb3bbe724","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4285a51ce047db2c2cb874927f3a250df261cba20df7c0e0c07a8ddb3bbe724","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.CircularBridge.Variantb4285a51ce047db2c2cb874927f3a250df261cba20df7c0e0c07a8ddb3bbe724","mathematical_subject":"Logic.ProofTheory","original_sha256":"b4285a51ce047db2c2cb874927f3a250df261cba20df7c0e0c07a8ddb3bbe724","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-formal-conformance-cycle-5/reproductions/01_completed_derivation_bridge_capture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CircularBridge.Variantb4285a51ce047db2c2cb874927f3a250df261cba20df7c0e0c07a8ddb3bbe724

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle5BridgeCapture

open FCRS.Transport

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
variable {derivationRef : ArtifactRef .transportDerivation}
variable {profile : IntervalProfile Input Witness}
variable {certified : CertifiedIntervalTheorem profile}
variable {input : Input}
variable {methodKind : SelectionMethodKind}
variable {method : SelectionMethod methodKind Input Witness}
variable {interpretation : BinaryInterpretation Input Witness Coordinate}
variable {constraint : BinaryConstraint Coordinate}
variable {interpretationBridge : InterpretationBridge profile interpretation constraint}
variable {specification : SieveSpecification Coordinate}
variable {procedure : SieveProcedure specification}
variable {soundness : SieveSoundness procedure}
variable {completeness : Option (SieveCompleteness procedure)}
variable {evidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness}
variable {constraintSieveBridge : ConstraintSieveBridge constraint specification}
variable {intensionalGraph : CoordinateGraph .Intensional Coordinate IntensionalEdge}
variable {intensionalSemantics : IntensionalGraphSemantics specification intensionalGraph}
variable {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
variable {realizationContract : RealizationContract soundness materializedGraph}
variable {consequence : GraphConsequence materializedGraph}

local notation "CompletedNativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-!
The public predecessor value already contains the target proof.  Although the
new bridge type does not mention a completed derivation, a caller can define a
bridge that closes over that value and then copy all pre-proof fields into the
new bridge-indexed record.
-/
def circularBridge (derivation : CompletedNativeDerivation) :
    FullNativePreservationBridge
      (profile := profile) (input := input) (consequence := consequence) where
  bridgeArtifact := projectionVersion "cycle-5-circular-bridge"
  law := fun _sourceProof => derivation.graphConsequenceProof.proof

def circularEvidence (derivation : CompletedNativeDerivation) :
    @FullNativePreservationEvidence
      Input Witness Coordinate IntensionalEdge MaterializedEdge
      derivationRef profile certified input methodKind method interpretation
      constraint interpretationBridge specification procedure soundness
      completeness evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence
      (circularBridge derivation) where
  theoremApplication := derivation.theoremApplication
  existenceEvidence := derivation.existenceEvidence
  selectionEvent := derivation.selectionEvent
  selectedWitness := derivation.selectedWitness
  materializableSelection := derivation.materializableSelection
  arithmeticWitness := derivation.arithmeticWitness
  interpretationEvent := derivation.interpretationEvent
  constraintEvidence := derivation.constraintEvidence
  constraintSieveEvidence := derivation.constraintSieveEvidence
  sieveEvidenceTheory := derivation.sieveEvidenceTheory
  sieveEvidenceTheoryExact := derivation.sieveEvidenceTheoryExact
  constraintSieveBridgeArtifact := constraintSieveBridge.version
  constraintSieveBridgeArtifactExact := rfl
  procedureAcceptanceEvidence := derivation.procedureAcceptanceEvidence
  sieveResult := derivation.sieveResult
  sieveEvaluation := derivation.sieveEvaluation
  sieveResultExact := derivation.sieveResultExact
  sieveWitness := derivation.sieveWitness
  intensionalOccurrence := derivation.intensionalOccurrence
  intensionalSemanticsArtifact := intensionalSemantics.evidenceArtifact
  intensionalSemanticsArtifactExact := rfl
  realizationRecord := derivation.realizationRecord
  theoremDerivedEdge := derivation.theoremDerivedEdge
  graphConsequenceProofArtifact := derivation.graphConsequenceProof.proofArtifact
  bridgeDistinctFromTargetProof := by
    intro equality
    cases equality
  validationExecution := derivation.validationExecution
  validationResult := derivation.validationResult
  acceptanceDecision := derivation.acceptanceDecision
  operationalCommitment := derivation.operationalCommitment

#check circularBridge
#check circularEvidence

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle5BridgeCapture
```
