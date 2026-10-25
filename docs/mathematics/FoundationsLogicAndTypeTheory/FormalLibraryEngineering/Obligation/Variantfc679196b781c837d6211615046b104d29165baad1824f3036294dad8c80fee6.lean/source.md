# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Obligation.Variantfc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f102041b92264f3190eff38aea96abafb12b2f8` · SHA-256 `fc679196b781c837d6211615046b104d29165baad1824f3036294dad8c80fee6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Identity

/-!
# Indexed resolution obligations

The proposition, source, authority class, exactness, and certificate kind are
version-bound coordinates of one permanently identified obligation.
-/

namespace Mathematics.Resolution

universe u

inductive ObligationAuthorityClass
  | leanTheorem
  | runtimeRefinement
  | transportNaturality
  | snapshotConsistency
  | codec
  | identityPreservation
  | resultConstruction
  deriving DecidableEq, Repr

inductive ExactnessClass
  | exact
  | certifiedApproximation
  deriving DecidableEq, Repr

structure IndexedObligation (Statement : Type u) where
  identity : ObligationIdentity
  statement : Statement
  propositionDigest : String
  dependencyDigest : String
  authorityClass : ObligationAuthorityClass
  exactness : ExactnessClass
  certificateKind : String
  deriving DecidableEq, Repr

end Mathematics.Resolution
```
