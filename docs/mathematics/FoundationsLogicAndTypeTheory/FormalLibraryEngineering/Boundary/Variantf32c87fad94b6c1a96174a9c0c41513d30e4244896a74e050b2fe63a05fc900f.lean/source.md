# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6ce36c52af415bb84609e1a967fe5906a495886` · SHA-256 `f32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Basic

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive BoundarySide where
  | inner
  | bridge
  | outer
deriving DecidableEq, Repr

def BoundarySide.polarity : BoundarySide -> Int
  | .inner => -1
  | .bridge => 0
  | .outer => 1

def BoundarySide.isStable : BoundarySide -> Bool
  | .outer => true
  | _ => false

theorem inner_polarity :
    BoundarySide.inner.polarity = -1 := by
  rfl

theorem bridge_polarity :
    BoundarySide.bridge.polarity = 0 := by
  rfl

theorem outer_polarity :
    BoundarySide.outer.polarity = 1 := by
  rfl

inductive BoundaryFlow where
  | consolidation
  | recall
  | abstraction
  | projection
deriving DecidableEq, Repr

structure BoundaryFlowReport where
  targetMemory : Int
  consolidated : Int
  recalled : Int
deriving DecidableEq, Repr

def BoundaryFlowReport.residue (r : BoundaryFlowReport) : Int :=
  r.targetMemory - r.consolidated - r.recalled

def BoundaryFlowReport.closed (r : BoundaryFlowReport) : Prop :=
  r.residue = 0

def BoundaryFlowReport.acceptable (r : BoundaryFlowReport)
    (ledgered : Prop) : Prop :=
  r.closed ∨ ledgered

theorem boundaryFlowReport_zero_closed
    (target consolidated recalled : Int)
    (h : target = consolidated + recalled) :
    ({ targetMemory := target
       consolidated := consolidated
       recalled := recalled } : BoundaryFlowReport).closed := by
  simp [BoundaryFlowReport.closed, BoundaryFlowReport.residue, h]
  omega

end Think.RadoProjectedModularHeatflow.MemoryCore
```
