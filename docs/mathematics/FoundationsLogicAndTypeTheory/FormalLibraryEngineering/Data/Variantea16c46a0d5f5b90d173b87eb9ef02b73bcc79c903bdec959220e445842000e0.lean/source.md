# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Data.Variantea16c46a0d5f5b90d173b87eb9ef02b73bcc79c903bdec959220e445842000e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37217c571c932564cdb6f039aeb987c565256dda` · SHA-256 `2459d6d98a59c724e3da5e3a7870641d3dabb5a98490cc4eeca275094164dc04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DataRecord.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DataRecord.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","mathematical_subject":"Foundations.Unclassified","original_sha256":"bf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Data.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Source

/-! # Research data artifacts -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DataRecord.Variantbf56148330e229e75841acf65fab1fa1cf5ec62e568cdfe8bea041b0d9851ce5

namespace Mathematics.Ingestion

structure DataRecord where
  dataId : StableId
  artifact : Ecosystem.RawArtifact
  schemaDigest : Option Digest
  rowCount : Option Nat
  semanticStatus : String
  immutableBytes : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
