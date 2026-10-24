# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variant9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7f9208cc4ba7e0327d21b7a9dc971e7921ef991` · SHA-256 `9bc40403e6d020139aad2e9635245531bf4fb20812796151add45e7469747dbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Refactor.Constraint

/-! # Deterministic constrained partitions -/

namespace Mathematics.Refactor

open Mathematics

structure LexicographicObjective where
  hardPolicyFailures : Nat
  elementCountPenalty : Nat
  largestElement : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array Mathematics.Element.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end Mathematics.Refactor
```
