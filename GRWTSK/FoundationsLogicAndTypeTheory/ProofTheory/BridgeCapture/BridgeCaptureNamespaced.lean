-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CircularEvidence.Variant19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.CircularEvidence.Variant19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674","mathematical_subject":"Logic.ProofTheory","original_sha256":"19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-4/reproductions/01_bridge_capture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CircularEvidence.Variant19064e78a1e101193a9e760f5ab2762fa8c9695370da865280adff1eecd6f674

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle4BridgeCapture

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

local notation "NativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-!
The bridge record's *type* no longer mentions the completed derivation, but a
bridge value can still close over that derivation and project the target proof.
The post-binding inequality constrains only artifact identities.
-/
def circularEvidence (derivation : NativeDerivation) :
    FullNativePreservationEvidence derivation where
  bridge := {
    bridgeArtifact := projectionVersion "cycle-4-circular-bridge"
    law := fun _sourceProof => derivation.graphConsequenceProof.proof
  }
  bridgeDistinctFromTargetProof := by
    intro equality
    cases equality

#check circularEvidence

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle4BridgeCapture
