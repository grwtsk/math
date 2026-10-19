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
