import Mathematics.Toolchain.Sandbox

/-! # Exact build receipts -/

namespace Mathematics.Toolchain

inductive BuildStatus
  | succeeded
  | failed
  | unavailable
  deriving DecidableEq, Repr

/-- Failure logs are retained with the same status as successful output. -/
structure BuildReceipt where
  capsuleKey : CapsuleKey
  status : BuildStatus
  commandDigest : Digest
  stdoutArtifactId : StableId
  stderrArtifactId : StableId
  producedArtifactIds : List StableId
  exitCode : Option Int
  receiptDigest : Digest
  deriving DecidableEq, Repr

/-- A failed reconstruction is evidence, not absence. -/
def BuildReceipt.IsRetainedFailure (receipt : BuildReceipt) : Prop :=
  receipt.status = .failed ∧ receipt.stderrArtifactId.Valid

end Mathematics.Toolchain
