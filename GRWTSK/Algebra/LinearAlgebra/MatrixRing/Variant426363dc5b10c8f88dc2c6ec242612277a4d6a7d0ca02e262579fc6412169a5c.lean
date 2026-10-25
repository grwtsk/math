/- Matrix-provider binding (2026-10-25): the full retained basic matrix
implementation is selected, not a reduced carrier. Native qualification and
remaining packet-provider bindings are pending. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RingState.Variantb47be07ca78f4f07b03b4f9b7e8c37975ec853842a7d76a05f14a185f53392e1
import GRWTSK.Algebra.LinearAlgebra.Basic.Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2

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
