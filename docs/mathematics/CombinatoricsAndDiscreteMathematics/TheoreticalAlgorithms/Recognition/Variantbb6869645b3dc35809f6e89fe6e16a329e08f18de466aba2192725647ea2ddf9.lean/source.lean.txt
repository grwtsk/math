import Mathematics.Authority.Evidence
import Mathematics.Capability.Principal

/-!
# Human recognition

Recognition is an optional human-issued display receipt.  It is neither an
emotion estimator nor an input to permission, trust, theorem authority, or
ranking.
-/

namespace Mathematics.Juris

open Mathematics.Capability

structure HumanRecognitionReceipt where
  issuer : Principal
  issuer_is_human :
    issuer.kind = .human
  scope : StableId
  recognizedConduct : List StableId
  evidenceDigest : Digest
  revocableDisplayPolicy : StableId

def HumanRecognitionReceipt.impliesTrust
    (_ : HumanRecognitionReceipt) : Bool :=
  false

def HumanRecognitionReceipt.evidenceKind
    (_ : HumanRecognitionReceipt) :
    Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem trust_not_implied_by_recognition
    (recognition : HumanRecognitionReceipt) :
    recognition.impliesTrust = false :=
  rfl

@[simp] theorem recognition_has_no_theorem_authority
    (recognition : HumanRecognitionReceipt) :
    Authority.contributesTheoremAuthority recognition.evidenceKind = false :=
  rfl

end Mathematics.Juris
