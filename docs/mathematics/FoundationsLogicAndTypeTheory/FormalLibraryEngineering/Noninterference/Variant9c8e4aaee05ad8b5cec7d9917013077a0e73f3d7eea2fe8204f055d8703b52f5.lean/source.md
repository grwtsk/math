# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a9bc4c8e69ad01a148f5325c150471ff7b77225` · SHA-256 `6156447939dd7d347f4ccb823a218e31eb748e2026ad865778de8b9be1d354df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubjectPresentationState.Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SubjectPresentationState.Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4","mathematical_subject":"Foundations.Unclassified","original_sha256":"e4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Presentation/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Presentation.CompletionAdapter

/-!
# Presentation noninterference

Certified presentation changes preserve both mathematical subject identity and
the theorem-authority reference.  A presentation proposal has no authority to
alter either field.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubjectPresentationState.Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4

namespace Mathematics.BinaryFrontier

structure SubjectPresentationState where
  subjectId : String
  theoremAuthorityRef : String
  presentationRef : String

structure CertifiedPresentationChange
    (before after : SubjectPresentationState) where
  subjectIdentity :
    after.subjectId = before.subjectId
  theoremAuthorityUnchanged :
    after.theoremAuthorityRef =
      before.theoremAuthorityRef
  proposalOnly : Bool := true
  proposalOnly_exact : proposalOnly = true

theorem presentation_change_cannot_alter_theorem_authority
    {before after : SubjectPresentationState}
    (change : CertifiedPresentationChange before after) :
    after.theoremAuthorityRef =
      before.theoremAuthorityRef :=
  change.theoremAuthorityUnchanged

theorem presentation_completion_preserves_subject_identity
    {before after : SubjectPresentationState}
    (change : CertifiedPresentationChange before after) :
    after.subjectId = before.subjectId :=
  change.subjectIdentity

end Mathematics.BinaryFrontier
```
