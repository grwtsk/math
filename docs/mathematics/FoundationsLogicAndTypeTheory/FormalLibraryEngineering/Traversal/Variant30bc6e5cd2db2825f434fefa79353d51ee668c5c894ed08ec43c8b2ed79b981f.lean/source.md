# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Traversal.Variant30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daa0b125f6676d3f3df3d0f868e1dfb3f4cff03e` · SHA-256 `30bc6e5cd2db2825f434fefa79353d51ee668c5c894ed08ec43c8b2ed79b981f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.KarnaughMap

namespace Boolean.Cube

/-!
# Karnaugh-map traversals

Adjacency and table-size optimality facts for the Gray-ordered row and column
axes used by Karnaugh maps.
-/

@[simp] theorem KarnaughMap.rowAxis_length (rowBits : Nat) :
    (KarnaughMap.rowAxis rowBits).length = 2 ^ rowBits := by
  simp [KarnaughMap.rowAxis]

@[simp] theorem KarnaughMap.colAxis_length (colBits : Nat) :
    (KarnaughMap.colAxis colBits).length = 2 ^ colBits := by
  simp [KarnaughMap.colAxis]

/-- Consecutive row-axis vertices are adjacent cube vertices. -/
theorem KarnaughMap.rowAxis_adjacentPath (rowBits : Nat) :
    Hypercube.AdjacentPath (KarnaughMap.rowAxis rowBits) := by
  simp [KarnaughMap.rowAxis, Hypercube.grayTraversal_adjacentPath]

/-- Consecutive column-axis vertices are adjacent cube vertices. -/
theorem KarnaughMap.colAxis_adjacentPath (colBits : Nat) :
    Hypercube.AdjacentPath (KarnaughMap.colAxis colBits) := by
  simp [KarnaughMap.colAxis, Hypercube.grayTraversal_adjacentPath]

/--
The row traversal has exactly one entry for each row-axis cube vertex.
-/
theorem KarnaughMap.rowAxis_optimalLength (rowBits : Nat) :
    (KarnaughMap.rowAxis rowBits).length =
      (Hypercube.vertices rowBits).length := by
  simp [KarnaughMap.rowAxis]

/--
The column traversal has exactly one entry for each column-axis cube vertex.
-/
theorem KarnaughMap.colAxis_optimalLength (colBits : Nat) :
    (KarnaughMap.colAxis colBits).length =
      (Hypercube.vertices colBits).length := by
  simp [KarnaughMap.colAxis]

/-- The row traversal uses one transition for each noninitial row cell. -/
theorem KarnaughMap.rowAxis_transitionCount (rowBits : Nat) :
    (KarnaughMap.rowAxis rowBits).length - 1 = 2 ^ rowBits - 1 := by
  simp [KarnaughMap.rowAxis]

/-- The column traversal uses one transition for each noninitial column cell. -/
theorem KarnaughMap.colAxis_transitionCount (colBits : Nat) :
    (KarnaughMap.colAxis colBits).length - 1 = 2 ^ colBits - 1 := by
  simp [KarnaughMap.colAxis]

end Boolean.Cube
```
