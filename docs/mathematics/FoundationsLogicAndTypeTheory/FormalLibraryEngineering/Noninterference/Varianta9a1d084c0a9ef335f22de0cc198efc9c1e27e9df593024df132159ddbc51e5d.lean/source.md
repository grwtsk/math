# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Varianta9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8354fed289b2719d5ec27f5724e49c1c27baa67d` · SHA-256 `a9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
