# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixRing.Variant426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ecaf3671a3d66db5b51c1ea944728f596ba750e` · SHA-256 `426363dc5b10c8f88dc2c6ec242612277a4d6a7d0ca02e262579fc6412169a5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.RingState
import BitMatrix.Core.Basic

/-!
# Binary-matrix ring adapter

This module specializes the framework-owned generic ring state to fixed-size
Boolean matrices.  It owns only matrix-specific projections.
-/

namespace BitMatrix.Runtime

/-- Fixed-size Boolean-matrix entries in a generic ring. -/
abbrev FixedMatrixRingState
    (capacity rows cols : Nat) :=
  DAF.Runtime.RingState capacity (BitMatrix rows cols)

/-- Observe selected rows in every matrix-valued slot. -/
def selectedRowsObservation
    (select : Fin outRows → Fin rows)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix outRows cols :=
  fun slot i j => state.slots slot (select i) j

/-- Observe selected columns in every matrix-valued slot. -/
def selectedColumnsObservation
    (select : Fin outCols → Fin cols)
    (state : FixedMatrixRingState capacity rows cols) :
    Fin capacity → BitMatrix rows outCols :=
  fun slot i j => state.slots slot i (select j)

end BitMatrix.Runtime
```
