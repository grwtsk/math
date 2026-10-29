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
