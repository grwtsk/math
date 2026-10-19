import Think.Pipeline.PhaseOrder

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected

abbrev MemoryId := Nat
abbrev RepoPtr := String
abbrev ConversationPtr := String
abbrev ToolPtr := String
abbrev WorkflowPtr := String

inductive TimeScope where
  | unavailable
  | instant (time : Nat)
  | interval (startTime endTime : Nat)
deriving DecidableEq, Repr

inductive SourcePointer where
  | repo (ptr : RepoPtr)
  | conversation (ptr : ConversationPtr)
  | tool (ptr : ToolPtr)
  | workflow (ptr : WorkflowPtr)
deriving DecidableEq, Repr

def SourcePointer.label : SourcePointer -> String
  | .repo ptr => ptr
  | .conversation ptr => ptr
  | .tool ptr => ptr
  | .workflow ptr => ptr

structure FiniteRunBounds where
  vertexBound : Nat
  edgeBound : Nat
  witnessBound : Nat
  timeBound : Nat
deriving DecidableEq, Repr

def defaultFiniteRunBounds : FiniteRunBounds :=
  { vertexBound := 512
    edgeBound := 2048
    witnessBound := 64
    timeBound := 4096 }

def preservedCenterIndex : Nat :=
  30

def preservedPhaseCount : Nat :=
  61

theorem preservedPhaseCount_matches_spine :
    Think.allPhaseIds.length = preservedPhaseCount := by
  rfl

theorem preservedCenterIndex_is_30 :
    preservedCenterIndex = 30 := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected
