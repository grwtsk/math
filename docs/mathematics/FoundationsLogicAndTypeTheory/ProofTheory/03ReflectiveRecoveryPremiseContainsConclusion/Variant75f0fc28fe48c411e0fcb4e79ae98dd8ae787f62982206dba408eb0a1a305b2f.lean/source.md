# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.03ReflectiveRecoveryPremiseContainsConclusion.Variant75f0fc28fe48c411e0fcb4e79ae98dd8ae787f62982206dba408eb0a1a305b2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8d86ce706b0fbc779a189c3b4a9feee4c1e982f` · SHA-256 `18dd3936246a556592774ae6405982876cec0b431611e942a1185e1b3122ecd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RecoveryWithoutTargetOccurrenceOrReflection.Variantfa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.RecoveryWithoutTargetOccurrenceOrReflection.Variantfa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396","mathematical_subject":"Logic.ProofTheory","original_sha256":"fa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-formal-conformance-cycle-5/reproductions/03_reflective_recovery_premise_contains_conclusion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.RecoveryWithoutTargetOccurrenceOrReflection.Variantfa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396

namespace FCRS.Transport.Theorems.Cycle5ReflectiveRecovery

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

local notation "CompletedDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-!
This has exactly the conclusion of `tt11_reflectiveRecovery`, but needs none of
its occurrence, validation, acceptance, or reflection arguments.  The complete
derivation premise already stores an `IntervalWitness`, whose evidence field is
the desired source proposition.
-/
theorem recoveryWithoutTargetOccurrenceOrReflection
    (derivation : CompletedDerivation) :
    profile.admissible input derivation.selectedWitness.value :=
  derivation.selectedWitness.intervalWitness.evidence

#check recoveryWithoutTargetOccurrenceOrReflection

end FCRS.Transport.Theorems.Cycle5ReflectiveRecovery
```
