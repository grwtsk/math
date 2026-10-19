import Mathematics.Fabric.Simplicial

/-! # Composable reactions and strict local-patch boundaries -/

namespace Mathematics.Fabric

universe u v

structure Reaction (State : Type u) where
  apply : State → State

namespace Reaction

def identity : Reaction State := ⟨id⟩

def comp (after before : Reaction State) : Reaction State :=
  ⟨after.apply ∘ before.apply⟩

@[simp] theorem id_comp (reaction : Reaction State) :
    comp identity reaction = reaction := by
  cases reaction
  rfl

@[simp] theorem comp_id (reaction : Reaction State) :
    comp reaction identity = reaction := by
  cases reaction
  rfl

theorem comp_assoc (first second third : Reaction State) :
    comp (comp third second) first = comp third (comp second first) := by
  cases first
  cases second
  cases third
  rfl

end Reaction

/-- Local mutation is executable only with an exact boundary witness. -/
structure LocalPatch (State : Type u) (Boundary : Type v) where
  before : State
  after : State
  expectedBoundary : Boundary
  observedBoundary : Boundary
  boundaryValidated : observedBoundary = expectedBoundary
  globalExtensionCapability : Bool

end Mathematics.Fabric
