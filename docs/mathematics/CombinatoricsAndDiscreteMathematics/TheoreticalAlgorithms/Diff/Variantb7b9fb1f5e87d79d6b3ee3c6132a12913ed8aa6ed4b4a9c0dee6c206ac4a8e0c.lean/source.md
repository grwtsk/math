# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Diff.Variantb7b9fb1f5e87d79d6b3ee3c6132a12913ed8aa6ed4b4a9c0dee6c206ac4a8e0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6e05c343dc87e2ea64b59ce67b5952af178281f` · SHA-256 `f9d05d0276c8a473c646533f37fe74ca42ce125533fedd9228866e1aa86e992a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationChange.Variant278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DeclarationChange.Variant278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","mathematical_subject":"Computation.DataStructures","original_sha256":"278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Diff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Extractor.Core

/-!
# Environment-diff classifications
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeclarationChange.Variant278f39fb6caa2f35859919b55ecdf93789f885b423bec2d1d4320a91a6414a6a

namespace Mathematics.Extractor

inductive DeclarationChange
  | added
  | removed
  | renamed
  | movedModule
  | typeChanged
  | valueChanged
  | proofChanged
  | dependencyChanged
  | trustClosureChanged
  | visibilityChanged
  | attributeChanged
  | documentationChanged
  | sourceOnlyChanged
  | unchanged
  deriving DecidableEq, Repr, Inhabited

structure DeclarationDiff where
  before : Option DeclarationId
  after : Option DeclarationId
  beforeName : Option Lean.Name
  afterName : Option Lean.Name
  changes : Array DeclarationChange
  statementIdentityStable : Bool
  implementationIdentityStable : Bool
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Extractor
```
