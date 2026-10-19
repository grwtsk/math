import Mathematics.System.Project
import Mathlib.Data.Set.Lattice

/-! # Upgrade classes and the least affected closure -/

namespace Mathematics.System

inductive UpgradeClass
  | refinementPreserving
  | equivalent
  | factor
  deriving DecidableEq, Repr

structure WorkspaceUpgrade where
  id : StableId
  workspaceId : WorkspaceId
  fromRevision : Nat
  toRevision : Nat
  kind : UpgradeClass
  changedProjects : Set ProjectId

namespace IncrementalBuild

variable {Project : Type*}

def DependencyClosed
    (dependsOn : Project → Project → Prop) (projects : Set Project) : Prop :=
  ∀ project dependency,
    dependsOn project dependency → projects dependency → projects project

/--
The affected set is characterized as the intersection of every
dependency-closed set containing the changed projects.
-/
def Affected
    (dependsOn : Project → Project → Prop)
    (changed : Set Project) : Set Project :=
  fun project ↦
    ∀ candidate : Set Project,
      changed ⊆ candidate →
      DependencyClosed dependsOn candidate →
      candidate project

theorem changed_subset_affected
    (dependsOn : Project → Project → Prop)
    (changed : Set Project) :
    changed ⊆ Affected dependsOn changed := by
  intro project hchanged candidate hcontains _
  exact hcontains hchanged

/-- `Affected` is contained in every closed superset of the change set. -/
theorem affected_least
    (dependsOn : Project → Project → Prop)
    (changed candidate : Set Project)
    (hcontains : changed ⊆ candidate)
    (hclosed : DependencyClosed dependsOn candidate) :
    Affected dependsOn changed ⊆ candidate := by
  intro project haffected
  exact haffected candidate hcontains hclosed

end IncrementalBuild

namespace WorkspaceUpgrade

/-- A tenant is unaffected exactly when its enabled project set is disjoint
from the affected closure. -/
def TenantUnaffected
    (enabled affected : Set ProjectId) : Prop :=
  Disjoint enabled affected

theorem tenant_unaffected_iff_disjoint
    (enabled affected : Set ProjectId) :
    TenantUnaffected enabled affected ↔ Disjoint enabled affected :=
  Iff.rfl

end WorkspaceUpgrade

end Mathematics.System
