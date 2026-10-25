# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recovery.Variantf1e09320bcda8c2c4db67d726819a963dcf669df837daab5ec9be9fc9b0754c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18a837f6a08a910b031563b05547838398222472` · SHA-256 `f1e09320bcda8c2c4db67d726819a963dcf669df837daab5ec9be9fc9b0754c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Gauge
import Mathematics.TensorNetwork.Rebirth

/-!
# Certified semantic continuity

Semantic recovery is a proof-bearing transition over the exact semantic
sidecar.  Gauge normalization is representation-only; unitary recovery and
anchor rebirth are explicit state transitions.  Every branch preserves the
immutable domain-receipt reference.
-/

namespace Mathematics.TensorNetwork

universe u

inductive SemanticRecoveryMode
  | stable
  | gaugeNormalized
  | unitaryRecovered
  | anchorReborn
  deriving DecidableEq, Repr

structure SemanticRecoveryCandidate
    (Context : Type u) (N D : Nat) where
  mode : SemanticRecoveryMode
  sourceState : TensorState N D
  resultState : TensorState N D
  exactSkeletonDigest : String
  chainizationDigest : String
  semanticProfileDigest : String
  representationDigest : String
  sourceReceiptDigest : String
  resultReceiptDigest : String
  rollbackDigest : String
  exactSkeletonCertified : exactSkeletonDigest ≠ ""
  chainizationCertified : chainizationDigest ≠ ""
  semanticProfileCertified : semanticProfileDigest ≠ ""
  representationCertified : representationDigest ≠ ""
  receiptPreserved : resultReceiptDigest = sourceReceiptDigest
  continuityClaim : Prop
  continuityCertified : continuityClaim
  authorityBound : Prop
  authorityBoundCertified : authorityBound
  modeLaw :
    match mode with
    | .stable => resultState = sourceState
    | .gaugeNormalized => resultState = sourceState
    | .unitaryRecovered => True
    | .anchorReborn => True

def CertifiedSemanticTensorContinuity
    (candidate : SemanticRecoveryCandidate Context N D) : Prop :=
  candidate.exactSkeletonDigest ≠ "" ∧
  candidate.chainizationDigest ≠ "" ∧
  candidate.semanticProfileDigest ≠ "" ∧
  candidate.representationDigest ≠ "" ∧
  candidate.resultReceiptDigest = candidate.sourceReceiptDigest ∧
  candidate.continuityClaim ∧
  candidate.authorityBound ∧
  match candidate.mode with
  | .stable => candidate.resultState = candidate.sourceState
  | .gaugeNormalized => candidate.resultState = candidate.sourceState
  | .unitaryRecovered => True
  | .anchorReborn => True

theorem SemanticRecoveryCandidate.certified
    (candidate : SemanticRecoveryCandidate Context N D) :
    CertifiedSemanticTensorContinuity candidate :=
  ⟨candidate.exactSkeletonCertified,
    candidate.chainizationCertified,
    candidate.semanticProfileCertified,
    candidate.representationCertified,
    candidate.receiptPreserved,
    candidate.continuityCertified,
    candidate.authorityBoundCertified,
    candidate.modeLaw⟩

theorem semantic_recovery_preserves_receipt
    (candidate : SemanticRecoveryCandidate Context N D) :
    candidate.resultReceiptDigest = candidate.sourceReceiptDigest :=
  candidate.receiptPreserved

theorem gauge_normalization_preserves_state
    (candidate : SemanticRecoveryCandidate Context N D)
    (mode : candidate.mode = .gaugeNormalized) :
    candidate.resultState = candidate.sourceState := by
  simpa [mode] using candidate.modeLaw

end Mathematics.TensorNetwork
```
