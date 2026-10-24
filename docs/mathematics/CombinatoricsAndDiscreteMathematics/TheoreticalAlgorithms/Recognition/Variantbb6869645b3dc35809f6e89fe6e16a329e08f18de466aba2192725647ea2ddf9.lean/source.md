# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Recognition.Variantbb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `288dc471090a308935ce5125329869d4f1b0769c` · SHA-256 `bb6869645b3dc35809f6e89fe6e16a329e08f18de466aba2192725647ea2ddf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
