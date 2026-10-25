# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NormalForm.Variantca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd7ce4f240896f04247ea459d8f8d9efa9224b83` · SHA-256 `ca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Canonical profile-relative codes

The wrapper records the raw code, its normalized form, and the profile proof.
-/

namespace Mathematics.StratifiedBoundary

structure CanonicalOrdinalTally
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic) where
  raw : OrdinalTally
  admitted : profile.admits raw
  normalized : OrdinalTally := profile.normalize raw
  normalized_exact : normalized = profile.normalize raw
  normalized_fixed :
    profile.normalize normalized = normalized

def CanonicalOrdinalTally.semanticValue
    {Semantic : Type u}
    {profile : OrdinalNotationProfile Semantic}
    (code : CanonicalOrdinalTally profile) : Semantic :=
  profile.denotes code.normalized

end Mathematics.StratifiedBoundary
```
