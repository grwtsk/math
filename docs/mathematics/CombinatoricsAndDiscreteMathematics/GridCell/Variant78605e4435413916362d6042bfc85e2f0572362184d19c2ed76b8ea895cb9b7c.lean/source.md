# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GridCell.Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6819c7419d2263bf5c434536f61ba23c45c56da8` · SHA-256 `78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Core.Basic

/-!
# Provider-neutral typed grid cells

This small geometric address type is kept below the runtime layer so exact
grid geometry does not depend on runtime integration.  Its established public
namespace is retained because JavaScript/Rust correspondence modules already
refer to `BitMatrix.Runtime.Semantics.GridCell`; the file-level ownership and
imports, rather than the namespace spelling, enforce the dependency direction.
-/

namespace BitMatrix.Runtime.Semantics

/-- A typed row-major cell address. -/
structure GridCell (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  deriving DecidableEq

/-- Grid cells are the finite product of their typed row and column
coordinates. -/
def gridCellEquiv (rows columns : Nat) :
    Fin rows × Fin columns ≃ GridCell rows columns where
  toFun coordinates := ⟨coordinates.1, coordinates.2⟩
  invFun cell := (cell.row, cell.column)
  left_inv coordinates := by cases coordinates; rfl
  right_inv cell := by cases cell; rfl

instance gridCellFintype (rows columns : Nat) :
    Fintype (GridCell rows columns) :=
  Fintype.ofEquiv (Fin rows × Fin columns) (gridCellEquiv rows columns)

/-- Row-major index with an intrinsic range proof. -/
def GridCell.rowMajorIndex
    {rows columns : Nat}
    (cell : GridCell rows columns) : Fin (rows * columns) :=
  BitMatrix.ArrayBacked.flatIdx cell.row cell.column

end BitMatrix.Runtime.Semantics
```
