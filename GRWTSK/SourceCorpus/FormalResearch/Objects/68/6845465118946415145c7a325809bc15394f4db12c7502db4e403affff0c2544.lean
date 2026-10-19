import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Memory

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

structure BoundaryHeatWeights where
  episode : Nat
  fact : Nat
  semantic : Nat
  community : Nat
  procedural : Nat
  query : Nat
  tree : Nat
  boundary : Nat
  rado : Nat
deriving DecidableEq, Repr

def defaultBoundaryHeatWeights : BoundaryHeatWeights :=
  { episode := 1
    fact := 1
    semantic := 1
    community := 1
    procedural := 1
    query := 1
    tree := 1
    boundary := 1
    rado := 1 }

structure BoundaryHeatState where
  weights : BoundaryHeatWeights
  heat : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex -> Int
  projectedHeat : Nat -> Int
  coreTreeNode : Nat
  boundaryPressure : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex -> Int

def highBoundaryHeat (h : BoundaryHeatState) (v : Think.RadoProjectedModularHeatflow.MemoryCore.MemoryVertex) : Prop :=
  h.boundaryPressure v > 0

theorem default_boundary_weight_positive :
    0 < defaultBoundaryHeatWeights.boundary := by
  decide

end Think.RadoProjectedModularHeatflow.BoundaryMemory
