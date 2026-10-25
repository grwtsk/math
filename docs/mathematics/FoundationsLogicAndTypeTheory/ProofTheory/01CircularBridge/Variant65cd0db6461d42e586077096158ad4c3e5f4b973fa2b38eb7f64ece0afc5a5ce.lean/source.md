# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01CircularBridge.Variant65cd0db6461d42e586077096158ad4c3e5f4b973fa2b38eb7f64ece0afc5a5ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f74216d0a1c0cfc03ba19108029487f281653d74` · SHA-256 `8d7f71f9ed4bb4f93be56099e781eb3b7a3189713500c8c13d3a52e5eb521318`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CircularBridge.Variant668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.CircularBridge.Variant668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b","mathematical_subject":"Logic.ProofTheory","original_sha256":"668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-adversarial-cycle-3/reproductions/01_circular_bridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.CircularBridge.Variant668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3Witness

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

/-- The bridge ignores its source premise and reuses the completed target proof. -/
def circularBridge (derivation : NativeDerivation) :
    FullNativePreservationBridge derivation where
  bridgeArtifact := projectionVersion "cycle-3-circular-bridge"
  bridgeDistinctFromTargetProof := by
    intro equality
    cases equality
  law := fun _sourceProof => derivation.graphConsequenceProof.proof

#check circularBridge

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3Witness
```
