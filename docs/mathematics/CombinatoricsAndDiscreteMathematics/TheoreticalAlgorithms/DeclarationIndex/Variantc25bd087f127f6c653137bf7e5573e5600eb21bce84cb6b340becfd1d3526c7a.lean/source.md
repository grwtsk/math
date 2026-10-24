# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationIndex.Variantc25bd087f127f6c653137bf7e5573e5600eb21bce84cb6b340becfd1d3526c7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb0cdf9c5e0d5fca9b20dce9d79dd03b49ee6be0` · SHA-256 `edf4563935ddb532f508018a412ae9ae41ba27cd00526e188c9079cd89215607`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationIndexEntry.Variant6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationIndexEntry.Variant6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1","mathematical_subject":"Computation.DataStructures","original_sha256":"6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Mathlib/DeclarationIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.GlobalId
import Mathematics.Projects.Mathlib.Profile

/-! # Mathlib declaration index -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationIndexEntry.Variant6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1

namespace Mathematics.Projects.Mathlib

structure DeclarationIndexEntry where
  declaration : Federation.GlobalDeclarationId
  sourceModule : String
  conceptIds : List ConceptId
  dependencyIds : List Federation.GlobalDeclarationId
  reverseDependencyIds : List Federation.GlobalDeclarationId
  instanceUseIds : List StableId
  simpUseIds : List StableId
  documentationArtifactIds : List StableId
  downstreamProjectIds : List ProjectId
  candidateRelationIds : List StableId
  lineageIds : List StableId
  reflectionEligible : Bool
  entryDigest : Digest
  deriving DecidableEq, Repr

structure DeclarationIndex where
  targetRevisionId : StableId
  entries : List DeclarationIndexEntry
  declarationIdsUnique :
    (entries.map DeclarationIndexEntry.declaration).Nodup
  indexDigest : Digest

end Mathematics.Projects.Mathlib
```
