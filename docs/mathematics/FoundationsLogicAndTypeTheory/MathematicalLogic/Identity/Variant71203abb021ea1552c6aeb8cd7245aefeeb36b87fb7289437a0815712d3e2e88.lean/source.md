# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Identity.Variant71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `124e8d6e183b5478b4cc97e3b3367f9581996d78` · SHA-256 `71203abb021ea1552c6aeb8cd7245aefeeb36b87fb7289437a0815712d3e2e88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Kind

/-!
# Permanent and versioned obligation identity

Grouping coordinates never replace the permanent subject, its snapshot-bound
version, or its source reference.
-/

namespace Mathematics.Resolution

universe u

structure ObligationIdentity where
  permanentId : String
  versionDigest : String
  sourceReference : String
  sourceDigest : String
  deriving DecidableEq, Repr

structure IdentitySystem (Obligation : Type u) where
  identify : Obligation → ObligationIdentity
  injective : Function.Injective identify

theorem IdentitySystem.equal_of_identity_equal
    (system : IdentitySystem Obligation)
    {left right : Obligation}
    (equal : system.identify left = system.identify right) :
    left = right :=
  system.injective equal

end Mathematics.Resolution
```
