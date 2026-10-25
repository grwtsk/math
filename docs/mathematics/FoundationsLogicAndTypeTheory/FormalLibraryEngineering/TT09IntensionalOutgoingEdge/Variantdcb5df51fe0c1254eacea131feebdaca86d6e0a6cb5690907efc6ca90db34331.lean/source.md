# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT09IntensionalOutgoingEdge.Variantdcb5df51fe0c1254eacea131feebdaca86d6e0a6cb5690907efc6ca90db34331

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e9a94d93b7d1b4b0c427c916f7b443662fef040` · SHA-256 `8de0c70e1554856d73fd85226f0d78c560987b884f866572cf101f78daa97280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","mathematical_subject":"Foundations.Unclassified","original_sha256":"c9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT09_IntensionalOutgoingEdge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorems.TT06_SieveCertificationSoundness
import FCRS.Transport.Graph


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3

universe uCoordinate uIntensionalEdge

namespace FCRS.Transport.Theorems

/--
An accepted sieve witness yields an intensional edge only through the exact
`accepts ↔ edge` semantics of the declared intensional graph.
-/
theorem tt09_intensionalOutgoingEdge
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    (semantics : IntensionalGraphSemantics specification intensionalGraph)
    {source target : Coordinate}
    (evaluation : SieveEvaluation procedure source target)
    (witness : SieveWitness soundness evaluation) :
    Nonempty (EdgeOccurrence intensionalGraph source target) :=
  ⟨semantics.realize (tt06_sieveCertificationSound witness)⟩

end FCRS.Transport.Theorems
```
