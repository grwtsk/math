# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalStratum.Variant42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b964905e1dc82aa7580267b57e00a5eeb614208` · SHA-256 `42ef50825aababd4b0b120870d6ab294d92c9d30fb6be5493c93dcec698436f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Ordinal-stratum access references
-/

namespace Mathematics.GraphAccess

structure OrdinalStratumAccessRef where
  cutRef : String
  stratumRef : String
  localRankRef : Option String
  persistentIdentityRef : String
deriving DecidableEq, Repr

end Mathematics.GraphAccess
```
