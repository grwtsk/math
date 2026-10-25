# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT06SieveCertificationSoundness.Variant24a3d3624e3f564bb10388df512e8fb0a876319b89fbaed9a8f3ca15ef471783

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee67d16ad4a526fd178f0b08d734de62d9c2c727` · SHA-256 `530b0a1a3fbfb3f54ae6e777df24adbf455ed0c144670f9e15a7258cd5fadc14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt06SieveCertificationSound.Variant44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt06SieveCertificationSound.Variant44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42","mathematical_subject":"Foundations.Unclassified","original_sha256":"44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT06_SieveCertificationSoundness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Sieve


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt06SieveCertificationSound.Variant44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42

universe uCoordinate

namespace FCRS.Transport.Theorems

/-- An accepted evaluation entails its specification only by procedure soundness. -/
theorem tt06_sieveCertificationSound
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {left right : Coordinate}
    {evaluation : SieveEvaluation procedure left right}
    (witness : SieveWitness soundness evaluation) :
    specification.accepts left right := by
  apply soundness.sound left right
  calc
    procedure.evaluate left right = evaluation.result.decision :=
      evaluation.result.resultMatches.symm
    _ = .Accepted := witness.accepted

end FCRS.Transport.Theorems
```
