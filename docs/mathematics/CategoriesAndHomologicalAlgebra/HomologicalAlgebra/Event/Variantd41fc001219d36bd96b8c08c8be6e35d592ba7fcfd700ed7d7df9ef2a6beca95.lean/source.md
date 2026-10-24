# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Event.Variantd41fc001219d36bd96b8c08c8be6e35d592ba7fcfd700ed7d7df9ef2a6beca95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `625985c4844a18e3eb3ff41c3c520b2b5c8f954a` · SHA-256 `a53a206eb418daaa2b770a5d4a19e2ebd142184dcf10c7f497497dad59455432`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Event.Variantf37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Event.Variantf37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065","mathematical_subject":"Foundations.Unclassified","original_sha256":"f37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Homology/Event.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Cubical.All

/-! # Homological event envelopes -/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Event.Variantf37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065

namespace Mathematics.Homology

structure Event where
  id : StableId
  target : ElementRef
  revision : Nat
  payloadDigest : Digest
  deriving DecidableEq, Repr

structure TransportCertificate where
  event : Event
  sourceBoundaryDigest : Digest
  targetBoundaryDigest : Digest
  boundaryPreserved : sourceBoundaryDigest = targetBoundaryDigest

end Mathematics.Homology
```
