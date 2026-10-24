# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Provenance.Variant48eed2f50848ebe9d63b61ffe075e0997d6a510b6a4995316cbcd0314b5ac114

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94336265c6ae3f3694068febfedbe0a3d94bf161` · SHA-256 `475ec497cf58e6aa6bcc1ca2145289c6c140274a365c4840d1fce388fddc9835`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceObjectAddress.Variantaef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceObjectAddress.Variantaef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9","mathematical_subject":"Computation.DataStructures","original_sha256":"aef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ecosystem/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.License

/-! # Immutable source provenance -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceObjectAddress.Variantaef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9

namespace Mathematics.Ecosystem

/-- A content object is addressed by project, revision, path, and bytes. -/
structure SourceObjectAddress where
  project : ProjectId
  revisionId : StableId
  path : String
  contentDigest : Digest
  deriving DecidableEq, Repr

/-- One append-only historical relation between source revisions. -/
structure RevisionProvenance where
  revision : ProjectRevision
  parentRevisionIds : List StableId
  commitMetadataDigest : Digest
  historyReceiptDigest : Digest
  deriving DecidableEq, Repr

/-- A derivation edge never identifies its endpoints by itself. -/
structure ProvenanceEdge where
  source : SourceObjectAddress
  target : SourceObjectAddress
  relation : String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ecosystem
```
