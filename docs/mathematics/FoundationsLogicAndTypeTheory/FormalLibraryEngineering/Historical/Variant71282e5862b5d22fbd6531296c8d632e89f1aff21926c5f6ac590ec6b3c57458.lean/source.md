# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Historical.Variant71282e5862b5d22fbd6531296c8d632e89f1aff21926c5f6ac590ec6b3c57458

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c09c53262cd3dda50121b8b7edd14ba181e9d350` · SHA-256 `8848f6df739b2882debe0abc6ed4eae029bb4d7d92b0a803d0b8b7d3291eb61f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HistoricalReconstruction.Variantc47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HistoricalReconstruction.Variantc47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57","mathematical_subject":"Foundations.Unclassified","original_sha256":"c47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Toolchain/Historical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Toolchain.BuildReceipt

/-! # Historical toolchain reconstruction -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HistoricalReconstruction.Variantc47fe9188afdc3ef486b55e4da1c1702b3bd0214d50f5ae2c67374a230f83b57

namespace Mathematics.Toolchain

/-- Reconstruction binds an immutable capsule, sandbox, and complete receipt. -/
structure HistoricalReconstruction where
  sandboxed : SandboxedCapsule
  receipt : BuildReceipt
  capsule_matches :
    receipt.capsuleKey = sandboxed.capsule.key
  sourceSnapshotDigest : Digest
  reconstructionDigest : Digest

theorem HistoricalReconstruction.failure_is_observable
    (reconstruction : HistoricalReconstruction)
    (failed : reconstruction.receipt.status = .failed) :
    reconstruction.receipt.status ≠ .succeeded := by
  simp [failed]

end Mathematics.Toolchain
```
