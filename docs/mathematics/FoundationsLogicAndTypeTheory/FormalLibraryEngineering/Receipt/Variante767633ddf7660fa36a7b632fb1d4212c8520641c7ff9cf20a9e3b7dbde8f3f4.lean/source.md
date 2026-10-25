# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Receipt.Variante767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66f828c4050091cda3c920fbcbc846c28640a7cb` · SHA-256 `e767633ddf7660fa36a7b632fb1d4212c8520641c7ff9cf20a9e3b7dbde8f3f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Refactor.Plan

/-! # Transaction and acceptance receipts -/

namespace MathDiscovery.Refactor

open MathDiscovery

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

end MathDiscovery.Refactor
```
