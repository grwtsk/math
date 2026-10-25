import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Boundary

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive MemoryKind where
  | episode
  | gist
  | fact
  | entity
  | community
  | tool
  | workflowStep
  | sourceNode
  | witness
deriving DecidableEq, Repr

def MemoryKind.defaultSide : MemoryKind -> BoundarySide
  | .episode => .inner
  | .gist => .bridge
  | .fact => .bridge
  | .entity => .outer
  | .community => .outer
  | .tool => .outer
  | .workflowStep => .bridge
  | .sourceNode => .bridge
  | .witness => .bridge

structure MemoryVertex where
  id : Nat
  kind : MemoryKind
  side : BoundarySide
  text : String
  time? : Option String
  validAt? : Option String
  invalidAt? : Option String
  heat : Int
  weight : Nat
  residueClass : String
deriving DecidableEq, Repr

def MemoryVertex.usesDefaultBoundary (v : MemoryVertex) : Prop :=
  v.side = v.kind.defaultSide

theorem episode_defaults_inner :
    MemoryKind.episode.defaultSide = BoundarySide.inner := by
  rfl

theorem entity_defaults_outer :
    MemoryKind.entity.defaultSide = BoundarySide.outer := by
  rfl

theorem witness_defaults_bridge :
    MemoryKind.witness.defaultSide = BoundarySide.bridge := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore
