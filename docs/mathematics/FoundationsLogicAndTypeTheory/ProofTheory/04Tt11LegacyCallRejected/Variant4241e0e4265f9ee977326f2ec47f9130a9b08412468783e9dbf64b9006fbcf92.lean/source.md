# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.04Tt11LegacyCallRejected.Variant4241e0e4265f9ee977326f2ec47f9130a9b08412468783e9dbf64b9006fbcf92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0296328cdb0e8eb2025cca568140094ab5e4f59` · SHA-256 `a3f9fa7e7b649aa852eefd6f90b2831bb2d135cc6a80720931fb41f38cc75ab8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TT11ReflectiveRecovery.Variant5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.TT11ReflectiveRecovery.Variant5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51","mathematical_subject":"Logic.ProofTheory","original_sha256":"5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-6/reproductions/04_tt11_legacy_call_rejected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TT11ReflectiveRecovery.Variant5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51

namespace FCRS.Transport.Theorems.Cycle6.LegacyCall

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
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
variable {derivationRef : ArtifactRef .transportDerivation}

local notation "LegacyCompletedDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-- The complete superseded argument sequence cannot call the corrected TT-11. -/
example
    (derivation : LegacyCompletedDerivation)
    (provenance : ReflectiveRecoveryProvenance derivation)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (validationDecision : AcceptanceDecision validationResult)
    (realizationReflects : RealizationReflection specification materializedGraph)
    (sieveReflects : SieveReflection constraint specification)
    (coordinateReflects : InterpretationReflection profile interpretation constraint) :
    True := by
  fail_if_success
    exact tt11_reflectiveRecovery derivation provenance validationExecution
      validationResult validationDecision realizationReflects sieveReflects
      coordinateReflects
  trivial

end FCRS.Transport.Theorems.Cycle6.LegacyCall
```
