# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da508963d9347321f3b8d36967da96c90c6ba5f2` · SHA-256 `d493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Universe.Manifest

/-!
# Identity-bound fold data
-/

namespace DAF.Fold

/-- A fold is bound to immutable source and target cells and digests.  The
`reversible` flag is metadata only; inverse evidence is carried separately by
operator-level structures. -/
structure FoldDatum where
  id : Universe.FoldId
  sourceCell : Universe.TerrainCellId
  targetCell : Universe.TerrainCellId
  sourceDigest : Universe.Digest
  targetDigest : Universe.Digest
  reversible : Bool
  deriving DecidableEq, Repr

end DAF.Fold
```
