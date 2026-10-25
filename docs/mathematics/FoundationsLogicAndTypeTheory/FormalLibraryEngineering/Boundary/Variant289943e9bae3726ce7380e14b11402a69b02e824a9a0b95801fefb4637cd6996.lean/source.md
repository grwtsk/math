# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variant289943e9bae3726ce7380e14b11402a69b02e824a9a0b95801fefb4637cd6996

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `953722177b3155e229b6f5e736f5716357613435` · SHA-256 `fe208a3de7f5785dd6a5185550674617bd56bde9c5993a44a94311b02d4085dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryObservation.Variant4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundaryObservation.Variant4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51","mathematical_subject":"Foundations.Unclassified","original_sha256":"4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Surgery/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Surgery.Obstruction

/-! # Boundary observations are not surgery requests -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryObservation.Variant4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51

namespace Mathematics.Surgery

structure BoundaryObservation where
  before : Orbit.Status
  after : Orbit.Status
  obstruction : Obstruction
  deriving DecidableEq, Repr

end Mathematics.Surgery
```
