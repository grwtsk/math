import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Symmetry.Canonical

/-!
# Completion equivariance

The bridge explicitly certifies transport of refinement, full extension,
satisfaction, finite constraint registries, feasibility, and infeasibility.
Canonicalization may depend on this bridge; it cannot replace it.
-/

namespace Mathematics.BinaryFrontier

structure CompletionEquivariance
    (G Partial Full Constraint : Type)
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint) where
  actPartial : G → Partial → Partial
  actFull : G → Full → Full
  actConstraint : G → Constraint → Constraint
  actRegistry : G → Finset Constraint → Finset Constraint
  partial_identity :
    ∀ state, actPartial 1 state = state
  partial_compose :
    ∀ left right state,
      actPartial (left * right) state =
        actPartial left (actPartial right state)
  full_identity :
    ∀ full, actFull 1 full = full
  full_compose :
    ∀ left right full,
      actFull (left * right) full =
        actFull left (actFull right full)
  constraint_identity :
    ∀ constraint, actConstraint 1 constraint = constraint
  constraint_compose :
    ∀ left right constraint,
      actConstraint (left * right) constraint =
        actConstraint left (actConstraint right constraint)
  registry_is_image :
    ∀ groupElement registry,
      actRegistry groupElement registry =
        registry.image (actConstraint groupElement)
  refinement_iff :
    ∀ groupElement left right,
      semantics.refines
          (actPartial groupElement left)
          (actPartial groupElement right) ↔
        semantics.refines left right
  extension_iff :
    ∀ groupElement state full,
      semantics.extendsFull
          (actPartial groupElement state)
          (actFull groupElement full) ↔
        semantics.extendsFull state full
  satisfaction_iff :
    ∀ groupElement full constraint,
      semantics.satisfies
          (actFull groupElement full)
          (actConstraint groupElement constraint) ↔
        semantics.satisfies full constraint
  feasibility_iff :
    ∀ groupElement registry state,
      Feasible semantics
          (actRegistry groupElement registry)
          (actPartial groupElement state) ↔
        Feasible semantics registry state

theorem completion_equivariance_preserves_feasibility
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (groupElement : G)
    (registry : Finset Constraint)
    (state : Partial) :
    Feasible semantics
        (equivariance.actRegistry groupElement registry)
        (equivariance.actPartial groupElement state) ↔
      Feasible semantics registry state :=
  equivariance.feasibility_iff groupElement registry state

theorem completion_equivariance_preserves_infeasibility
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (groupElement : G)
    (registry : Finset Constraint)
    (state : Partial) :
    Infeasible semantics
        (equivariance.actRegistry groupElement registry)
        (equivariance.actPartial groupElement state) ↔
      Infeasible semantics registry state := by
  unfold Infeasible
  rw [equivariance.feasibility_iff]

end Mathematics.BinaryFrontier
