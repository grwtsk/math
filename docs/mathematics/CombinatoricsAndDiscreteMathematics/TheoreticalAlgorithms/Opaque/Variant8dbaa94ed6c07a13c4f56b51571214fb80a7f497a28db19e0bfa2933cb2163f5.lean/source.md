# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Opaque.Variant8dbaa94ed6c07a13c4f56b51571214fb80a7f497a28db19e0bfa2933cb2163f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e186a2a4fd46439825d9eec08928921f0ecf3372` · SHA-256 `11b89bd2ca6504eb1bb5dccb32b1e29c9454201e6a7348442610a81830770dee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OpacityReason.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OpacityReason.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","mathematical_subject":"Computation.DataStructures","original_sha256":"4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Opaque.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Raw

/-! # Explicit opaque-artifact retention -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OpacityReason.Variant4e46ca37c6552a9c0387cd0dd1dced2751cb73c1db9c8f56f2bef3062321bde0

namespace Mathematics.Ingestion

inductive OpacityReason
  | unsupportedMedia
  | parserUnavailable
  | toolchainUnavailable
  | encrypted
  | intentionallyOpaque
  deriving DecidableEq, Repr

/-- An unparsed artifact remains byte-addressed and queryable. -/
structure OpaqueArtifact where
  artifact : Ecosystem.RawArtifact
  reason : OpacityReason
  diagnosticArtifactIds : List StableId
  classificationDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ingestion
```
