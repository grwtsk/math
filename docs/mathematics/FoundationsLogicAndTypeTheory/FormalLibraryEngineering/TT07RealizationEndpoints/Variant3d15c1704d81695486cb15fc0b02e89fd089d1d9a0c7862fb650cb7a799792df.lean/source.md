# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT07RealizationEndpoints.Variant3d15c1704d81695486cb15fc0b02e89fd089d1d9a0c7862fb650cb7a799792df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `058a92bbec2c998d609e9da2bae7cefbcabf5af6` · SHA-256 `39d7cf070ed3b55ceabfc47bb75b64e3ab59f9bc5ae24601b2145b61500e4232`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt07RealizationEndpoints.Variantf0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt07RealizationEndpoints.Variantf0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60","mathematical_subject":"Foundations.Unclassified","original_sha256":"f0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT07_RealizationEndpoints.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Graph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt07RealizationEndpoints.Variantf0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60

universe uCoordinate uMaterializedEdge

namespace FCRS.Transport.Theorems

/-- A realization record retains both exact materialized endpoint equations. -/
theorem tt07_realizationEndpoints
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {contract : RealizationContract soundness materializedGraph}
    {source target : Coordinate}
    {evaluation : SieveEvaluation procedure source target}
    {witness : SieveWitness soundness evaluation}
    (record : RealizationRecord contract evaluation witness) :
    materializedGraph.source record.occurrence.edge = source ∧
      materializedGraph.target record.occurrence.edge = target :=
  ⟨record.occurrence.sourceEquation, record.occurrence.targetEquation⟩

end FCRS.Transport.Theorems
```
