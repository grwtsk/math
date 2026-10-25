# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TT11ReflectiveRecovery.Variantafb88c63bb0acb8d59c4c7a9d255f2037d5724c4ab2c33d70e4135f970aa3830

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `930056cc6d7758bb7af4d22d3c06d7af0c9d004a` · SHA-256 `a19a9746b08ba024e7e11b6a254765eb27a525eb4ee35d362294dcaab15ab7ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Tt11ReflectiveRecovery.Variant04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.Tt11ReflectiveRecovery.Variant04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af","mathematical_subject":"Logic.ProofTheory","original_sha256":"04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/baselines/fcrs-tta-1.0/retained/formal/lean/fcrs/FCRS/Transport/Theorems/TT11_ReflectiveRecovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Derivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Tt11ReflectiveRecovery.Variant04cf6e355b2c82dd9f511ef5fd289081f2bf42e6ad95e5b5c6c81ccf801d73af

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

namespace FCRS.Transport.Theorems

/-!
This converse begins with the exact materialized occurrence and theorem-derived
declaration retained by a complete `TransportDerivation`.  It additionally
requires an accepted validation of the exact graph version and three independent
reflection capabilities.  A detached declaration cannot license recovery.
-/

theorem tt11_reflectiveRecovery
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {methodKind : SelectionMethodKind}
    {method : SelectionMethod methodKind Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {interpretationBridge : InterpretationBridge
      profile interpretation constraint}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {completeness : Option (SieveCompleteness procedure)}
    {evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) completeness}
    {constraintSieveBridge : ConstraintSieveBridge constraint specification}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    {intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {realizationContract : RealizationContract soundness materializedGraph}
    {consequence : GraphConsequence materializedGraph}
    {derivationRef : ArtifactRef .transportDerivation}
    (derivation : TransportDerivation
      derivationRef profile certified input method interpretation constraint
      interpretationBridge specification procedure soundness completeness
      evidenceTheory constraintSieveBridge intensionalGraph
      intensionalSemantics materializedGraph realizationContract consequence)
    (provenance : ReflectiveRecoveryProvenance derivation)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (_validationDecision : AcceptanceDecision validationResult)
    (realizationReflects : RealizationReflection
      specification materializedGraph)
    (sieveReflects : SieveReflection constraint specification)
    (coordinateReflects : InterpretationReflection
      profile interpretation constraint) :
    profile.admissible input derivation.selectedWitness.value :=
  coordinateReflects.reflects input derivation.selectedWitness.value
    (sieveReflects.reflects
      (interpretation.source input)
      (interpretation.target derivation.selectedWitness.value)
      (realizationReflects.reflects provenance.occurrence))

end FCRS.Transport.Theorems
```
