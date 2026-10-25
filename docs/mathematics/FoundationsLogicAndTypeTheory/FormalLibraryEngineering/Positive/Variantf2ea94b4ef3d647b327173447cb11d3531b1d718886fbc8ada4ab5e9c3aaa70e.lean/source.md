# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Positive.Variantf2ea94b4ef3d647b327173447cb11d3531b1d718886fbc8ada4ab5e9c3aaa70e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa8d9c696d13946ccdfeeee92fdd65d7be06e0fa` · SHA-256 `bc3916373918c19e9f694474aa298191282af11c5fe0b524e0855f7609f8d00c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveCertificate.Variant7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PositiveCertificate.Variant7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2","mathematical_subject":"Foundations.Unclassified","original_sha256":"7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/Positive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Reflection.LicenseCheck
import Mathematics.Reflection.TheoremPreservation

/-! # Positive reflection certificates -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveCertificate.Variant7af1d5157c9b4f8ecb5829fda054519d6b707c687ed82090dd735b3532605ae2

namespace Mathematics.Reflection

/--
Positive reflection is admitted only after build, test, style, theorem, axiom,
and license checks.  Model or energy output cannot construct this record
without those witnesses.
-/
structure PositiveCertificate (patch : Patch) where
  build : BuildCheck patch
  theoremPreservation : TheoremPreservationCheck patch
  license : LicenseCheck patch
  tests_passed : build.allRequiredTestsPassed = true
  conventions_passed : build.targetConventionsPassed = true
  target_revision_checked : build.targetRevisionChecked = true
  license_passed : license.Passes
  certificateDigest : Digest

namespace PositiveCertificate

theorem build_succeeded
    {patch : Patch}
    (certificate : PositiveCertificate patch) :
    certificate.build.receipt.status = .succeeded :=
  certificate.build.status_succeeded

/-- The build receipt is bound to the candidate's exact target capsule. -/
theorem target_capsule_exact
    {patch : Patch}
    (certificate : PositiveCertificate patch) :
    certificate.build.receipt.capsuleKey =
      patch.candidate.targetCapsule :=
  certificate.build.target_capsule_exact

end PositiveCertificate

end Mathematics.Reflection
```
