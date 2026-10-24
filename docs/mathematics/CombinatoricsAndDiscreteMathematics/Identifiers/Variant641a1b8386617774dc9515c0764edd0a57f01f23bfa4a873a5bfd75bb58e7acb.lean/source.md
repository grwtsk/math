# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Identifiers.Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b95123efbebf148ceb564555171dfecb8ded0084` · SHA-256 `641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# WP0 finite-horizon identities

Stable custody identities for the finite-horizon Sonin core.  No mathematical
property is attached to these identifiers.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PersistentCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PacketId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure TestRegistryId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CoefficientRingId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure MatrixId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure BasisRevision where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ProofId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CheckerId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure Digest where
  words : Array UInt64
deriving DecidableEq, Repr

end Mathematics.SemiLocalDefect.SoninCore
```
