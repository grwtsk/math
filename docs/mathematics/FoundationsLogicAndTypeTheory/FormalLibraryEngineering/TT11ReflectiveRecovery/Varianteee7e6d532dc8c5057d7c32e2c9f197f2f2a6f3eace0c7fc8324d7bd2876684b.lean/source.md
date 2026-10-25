# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT11ReflectiveRecovery.Varianteee7e6d532dc8c5057d7c32e2c9f197f2f2a6f3eace0c7fc8324d7bd2876684b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9e0ec98b763df3f771363b53d655fa1f1824e88` · SHA-256 `56144510f9ff950ad52f9997ec5155c7883c7dde8e9218338098e9816ab3c530`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt11ReflectiveRecovery.Variantc8171b439ab9a9eeb6e8ecc7cd5d2dc20b6b7a5fe1c41fc31395548f74851bff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8171b439ab9a9eeb6e8ecc7cd5d2dc20b6b7a5fe1c41fc31395548f74851bff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt11ReflectiveRecovery.Variantc8171b439ab9a9eeb6e8ecc7cd5d2dc20b6b7a5fe1c41fc31395548f74851bff","mathematical_subject":"Foundations.Unclassified","original_sha256":"c8171b439ab9a9eeb6e8ecc7cd5d2dc20b6b7a5fe1c41fc31395548f74851bff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT11_ReflectiveRecovery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Derivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt11ReflectiveRecovery.Variantc8171b439ab9a9eeb6e8ecc7cd5d2dc20b6b7a5fe1c41fc31395548f74851bff

universe uInput uWitness uCoordinate uMaterializedEdge

namespace FCRS.Transport.Theorems

/-!
This converse begins with an independently supplied materialized occurrence and
the theorem-derived declaration indexed by that exact occurrence.  It requires
accepted validation of the exact graph version and three independent reflection
capabilities.  No completed forward derivation, selected source witness, or
source admissibility proof occurs in the theorem's premises.
-/

theorem tt11_reflectiveRecovery
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {input : Input}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {specification : SieveSpecification Coordinate}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    (observation : ReflectiveRecoveryObservation profile input interpretation
      materializedGraph)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (_validationDecision : AcceptanceDecision validationResult)
    (realizationReflects : RealizationReflection
      specification materializedGraph)
    (sieveReflects : SieveReflection constraint specification)
    (coordinateReflects : InterpretationReflection
      profile interpretation constraint) :
    profile.admissible input observation.witness :=
  coordinateReflects.reflects input observation.witness
    (sieveReflects.reflects
      (interpretation.source input)
      (interpretation.target observation.witness)
      (realizationReflects.reflects observation.occurrence))

end FCRS.Transport.Theorems
```
