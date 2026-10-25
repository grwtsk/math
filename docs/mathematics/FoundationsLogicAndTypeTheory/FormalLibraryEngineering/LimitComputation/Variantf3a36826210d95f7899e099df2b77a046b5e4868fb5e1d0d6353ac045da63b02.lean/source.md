# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitComputation.Variantf3a36826210d95f7899e099df2b77a046b5e4868fb5e1d0d6353ac045da63b02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7044ff76cec4d8a66a9dc80902301b5bb181d35` · SHA-256 `e68ef7127c9af5ab5b3d97a64334c8e9d9fb1ede24ee60224a7ee4ee0036394e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfiniteTimeLimitCertificate.Variant6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InfiniteTimeLimitCertificate.Variant6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e","mathematical_subject":"Foundations.Unclassified","original_sha256":"6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/InfiniteTime/LimitComputation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.InfiniteTime.Stability

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfiniteTimeLimitCertificate.Variant6a346cc3a2d197ce3ea1a1877cea5fd25bf5bdcd43ebb1e4553b7452217c351e

namespace Surface
namespace Legacy

structure InfiniteTimeLimitCertificate
    (M : InfiniteTimeComputationModel) where
  trajectory : Nat -> M.State
  limitExists : Prop

theorem infiniteTime_limit_requires_certificate
    {M : InfiniteTimeComputationModel}
    (cert : InfiniteTimeLimitCertificate M) :
    cert.limitExists -> cert.limitExists := by
  intro h
  exact h

end Legacy
end Surface
```
