# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Region.Variant0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9701fdc2ef9ce09d08723a54581133114e238d0d` · SHA-256 `0e34feb0aa0eeea0897e7815c37fffa191a38b5505e9a7d00aac23d7486dd928`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Taxonomy.All

/-! # Polyhierarchical mathematical terrain -/

namespace Mathematics.Terrain

structure ConceptRegion where
  id : RegionId
  members : Finset ConceptId
  boundaryRelations : Finset RelationId
  profileDigest : Digest
  deriving DecidableEq

end Mathematics.Terrain
```
