# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT04AffinoidJacobson.Variantbeeceb960aaf8b171257fc25225b88ce50656e8ca71fa7c26dfba7a58ff6d89d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e8407a1afdc4153ffd8f7c257e0eb88b13582e2` · SHA-256 `beeceb960aaf8b171257fc25225b88ce50656e8ca71fa7c26dfba7a58ff6d89d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-04: affinoid Jacobson and finite residue fields.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct04_affinoidJacobson
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT04Claim S :=
  registry.ct04

end FCRS.Theorems
```
