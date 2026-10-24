# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Step.Variant1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8aac7454c7ee5c1618f758c4a0d7348e37ba6b91` · SHA-256 `1e803f563b0b7720dfcf7e4ce74f90f6f6b634d5c94cdaaf7f374d94b22efa19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.Energy

/-! # Deterministic relaxation steps -/

namespace Mathematics.Relaxation

/-- One observed step with exact before/after digests. -/
structure StepReceipt where
  operatorId : StableId
  beforeDigest : Digest
  afterDigest : Digest
  changedElementIds : List StableId
  preservedConstraintIds : List StableId
  receiptDigest : Digest
  deriving DecidableEq, Repr

/-- Proposal output remains separate from the accepted overlay state. -/
structure StepProposal where
  before : State
  proposedAfter : State
  evidenceIds : List StableId
  authority : String

end Mathematics.Relaxation
```
