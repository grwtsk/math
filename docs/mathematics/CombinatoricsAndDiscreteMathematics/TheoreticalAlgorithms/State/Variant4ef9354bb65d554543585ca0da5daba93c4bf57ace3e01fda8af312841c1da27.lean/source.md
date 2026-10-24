# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.State.Variant4ef9354bb65d554543585ca0da5daba93c4bf57ace3e01fda8af312841c1da27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74d167cd929ded3bb72507d834a5332b7ef98072` · SHA-256 `44efb90f759d6dfc34629611dad55a57f1585f0134f588dc8700c01c32618722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OverlayElement.Variant6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.OverlayElement.Variant6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df","mathematical_subject":"Computation.DataStructures","original_sha256":"6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/State.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Registry
import Mathematics.Relaxation.Level

/-! # Immutable-source, mutable-overlay relaxation state -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OverlayElement.Variant6b8b31b8644d022e9e5baef800953a0e4c224783dee5e64bef236a4f1eb8d4df

namespace Mathematics.Relaxation

/-- One proposal-only overlay object; source bytes remain untouched. -/
structure OverlayElement where
  elementId : StableId
  sourceObjectIds : List StableId
  payloadDigest : Digest
  authority : String
  deriving DecidableEq, Repr

/-- Finite work-package identity and exact source boundary. -/
structure WorkPackage where
  packageId : StableId
  sourceSnapshots : List Ecosystem.ProjectSnapshot
  sourceSnapshotKeysUnique :
    (sourceSnapshots.map Ecosystem.ProjectSnapshot.key).Nodup
  projectSnapshots : List Ecosystem.ProjectSnapshotKey
  projectSnapshots_exact :
    projectSnapshots =
      sourceSnapshots.map Ecosystem.ProjectSnapshot.key
  sourceObjectIds : List StableId
  scopeDigest : Digest

/-- Relaxation state separates immutable ecosystem input from its overlay. -/
structure State where
  ecosystemDigest : Digest
  workPackage : WorkPackage
  level : Level
  overlay : List OverlayElement
  openResidueIds : List StableId
  openObligationIds : List StableId
  overlayDigest : Digest

end Mathematics.Relaxation
```
