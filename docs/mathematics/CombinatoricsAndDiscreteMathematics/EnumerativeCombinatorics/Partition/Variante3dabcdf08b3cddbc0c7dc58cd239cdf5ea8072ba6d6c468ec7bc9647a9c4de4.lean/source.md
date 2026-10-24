# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Partition.Variante3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92297717a1f5f5d05feb7f3ebdcb3077380f8195` · SHA-256 `e3dabcdf08b3cddbc0c7dc58cd239cdf5ea8072ba6d6c468ec7bc9647a9c4de4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Refactor.Constraint

/-! # Deterministic constrained partitions -/

namespace MathDiscovery.Refactor

open MathDiscovery

structure LexicographicObjective where
  hardPolicyFailures : Nat
  atomCountPenalty : Nat
  largestAtom : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array MathDiscovery.Atom.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
```
