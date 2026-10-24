# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianta1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c07af0e5f49399d170ba56464bc8133b30e57a12` · SHA-256 `a1886f2d0ceed9fceff265f3189f258ac6902fc4487e2f2772a80a5979b50e6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Completion.Bitfield

/-!
# Finite one-coordinate refinement trees

Every certified edge carries a `OneCoordinateResolution`.  A complete Boolean
split resolves the same unresolved coordinate to zero and one in its two
children.
-/

namespace Mathematics.BinaryFrontier

structure RefinementEdge
    {n : Nat}
    (parent child : PartialBitfield n) where
  resolution :
    OneCoordinateResolution parent child
  presentationDeltaRef : String
  verificationRef : String
  rollbackRef : String

structure CompleteBooleanSplit
    {n : Nat}
    (parent : PartialBitfield n) where
  coordinate : Fin n
  parentUnresolved :
    parent coordinate = .unresolved
  zeroChild : PartialBitfield n :=
    resolveAt parent coordinate false
  oneChild : PartialBitfield n :=
    resolveAt parent coordinate true
  zeroChild_exact :
    zeroChild = resolveAt parent coordinate false
  oneChild_exact :
    oneChild = resolveAt parent coordinate true

def CompleteBooleanSplit.zeroResolution
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    OneCoordinateResolution parent split.zeroChild := by
  rw [split.zeroChild_exact]
  exact resolveAt_is_oneCoordinateResolution
    parent split.coordinate false split.parentUnresolved

def CompleteBooleanSplit.oneResolution
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    OneCoordinateResolution parent split.oneChild := by
  rw [split.oneChild_exact]
  exact resolveAt_is_oneCoordinateResolution
    parent split.coordinate true split.parentUnresolved

theorem completeBooleanSplit_children_extend
    {n : Nat}
    {parent : PartialBitfield n}
    (split : CompleteBooleanSplit parent) :
    parent ≤ split.zeroChild ∧
      parent ≤ split.oneChild :=
  ⟨oneCoordinateResolution_extends split.zeroResolution,
    oneCoordinateResolution_extends split.oneResolution⟩

end Mathematics.BinaryFrontier
```
