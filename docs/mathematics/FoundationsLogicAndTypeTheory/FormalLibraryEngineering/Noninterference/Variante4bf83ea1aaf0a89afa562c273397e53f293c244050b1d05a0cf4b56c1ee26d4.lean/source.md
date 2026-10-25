# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `756c34f6c443ccaa2e0285518a16f9f9483a809a` · SHA-256 `e4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Presentation.CompletionAdapter

/-!
# Presentation noninterference

Certified presentation changes preserve both mathematical subject identity and
the theorem-authority reference.  A presentation proposal has no authority to
alter either field.
-/

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
