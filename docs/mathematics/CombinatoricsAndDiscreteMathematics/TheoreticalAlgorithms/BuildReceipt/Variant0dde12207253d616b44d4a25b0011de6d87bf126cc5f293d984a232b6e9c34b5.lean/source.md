# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BuildReceipt.Variant0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c446348a93ef78254b0290c73b08c71830f4b3b4` · SHA-256 `0dde12207253d616b44d4a25b0011de6d87bf126cc5f293d984a232b6e9c34b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
