/-!
# Authority noninterference

Finite proofs, numerical evidence, and presentation records are all
nonauthoritative artifacts.  Only an external owner admission can change
capacity or theorem authority.
-/

namespace Mathematics.SemiLocalDefect

inductive AuthorityEffect
  | none
  | proposal
  | commit
deriving DecidableEq, Repr

inductive SemiLocalArtifactKind
  | finiteExactProof
  | numericalPsdEvidence
  | presentation
deriving DecidableEq, Repr

def SemiLocalArtifactKind.authorityEffect
    (_ : SemiLocalArtifactKind) : AuthorityEffect :=
  .none

structure CapacityPresentation where
  capacityRef : String
  authorityRef : String
  presentationRef : String

def CapacityPresentation.withPresentation
    (record : CapacityPresentation)
    (presentationRef : String) :
    CapacityPresentation where
  capacityRef := record.capacityRef
  authorityRef := record.authorityRef
  presentationRef := presentationRef

theorem presentation_cannot_change_capacity_authority
    (record : CapacityPresentation)
    (presentationRef : String) :
    (record.withPresentation presentationRef).authorityRef =
      record.authorityRef :=
  rfl

theorem presentation_cannot_change_capacity_identity
    (record : CapacityPresentation)
    (presentationRef : String) :
    (record.withPresentation presentationRef).capacityRef =
      record.capacityRef :=
  rfl

theorem numerical_psd_evidence_does_not_create_theorem :
    SemiLocalArtifactKind.numericalPsdEvidence.authorityEffect =
      .none :=
  rfl

theorem finite_proof_does_not_commit_runtime_state :
    SemiLocalArtifactKind.finiteExactProof.authorityEffect =
      .none :=
  rfl

end Mathematics.SemiLocalDefect
