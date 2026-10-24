# Complete source: GRWTSK.Topology.GeneralTopology.Conflict.Variant59db4de98114f2a9c1d85652e9ae9e4969e208c1df3f083f5fc6f1388fb279bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a240589de6dc8a5401a502ffc5779b3510b89b1` · SHA-256 `400546b3595d07d779481b1294df52792b4ec7642c4b354999bc3bef082f75f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ConflictKind.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ConflictKind.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","mathematical_subject":"Topology.GeneralTopology","original_sha256":"99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Federation/Conflict.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.Alignment

/-! # Preserved cross-project conflicts -/


namespace GRWTSK.Topology.GeneralTopology.ConflictKind.Variant99749584eb236537bc48d6bb48128ce5a4f5e838f638d328c9f7b9af4e332d00

namespace Mathematics.Federation

inductive ConflictKind
  | statement
  | definition
  | notation
  | dependency
  | axiomClosure
  | toolchain
  | license
  deriving DecidableEq, Repr

/-- A conflict remains explicit until independently resolved. -/
structure ConflictRecord where
  conflictId : StableId
  left : GlobalDeclarationId
  right : GlobalDeclarationId
  kind : ConflictKind
  evidenceIds : List StableId
  resolution : Option StableId
  conflictDigest : Digest
  deriving DecidableEq, Repr

def ConflictRecord.IsOpen (conflict : ConflictRecord) : Prop :=
  conflict.resolution = none

end Mathematics.Federation
```
