# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Receipt.Variantc7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78da2e26e9c7ab1e11f04a8fc2a760b10058557d` · SHA-256 `c7435e134600b2056846ccf870f5af6fcbe4917cc446302423e5a6ea31201e31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Refactor.Plan

/-! # Transaction and acceptance receipts -/

namespace Mathematics.Refactor

open Mathematics

inductive TransactionStatus
  | planned
  | staged
  | applied
  | rolledBack
  | accepted
  | rejected
  deriving DecidableEq, Repr, Inhabited

structure Receipt where
  transactionId : RefactorTransactionId
  status : TransactionStatus
  baselineDigest : Digest
  sourceAnalysisDigest : Digest
  millingProfileDigest : Digest
  partitionProfileDigest : Digest
  planDigest : Digest
  stagedEnvironmentDigest : Digest
  appliedEnvironmentDigest : Digest
  milledUnitCount : Nat
  movedUnitCount : Nat
  unchangedUnitCount : Nat
  blockedUnitCount : Nat
  publicStatementChanges : Nat
  trustClosureChanges : Nat
  cleanBuild : Bool
  freshKernelCheck : Bool
  fullAssurance : Bool
  idempotent : Bool
  rollbackReceipt : String
  deriving DecidableEq, Repr

end Mathematics.Refactor
```
