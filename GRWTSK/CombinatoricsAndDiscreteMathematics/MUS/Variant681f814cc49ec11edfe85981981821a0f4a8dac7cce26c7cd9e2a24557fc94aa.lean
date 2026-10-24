import Mathematics.BinaryFrontier.Completion.Core

/-!
# Minimal unsatisfiable completion cores

Minimality is relative to one completion semantics, registry, and partial
state.  Trees, addresses, automorphisms, provenance, and extraction runtime
are deliberately absent.
-/

namespace Mathematics.BinaryFrontier.Obstruction

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint

structure UnsatCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint)
    (partial : Partial) where
  constraints : Finset Constraint
  subset_registry :
    constraints ⊆ registry
  nonempty :
    constraints.Nonempty
  infeasible :
    semantics.Infeasible
      constraints partial

structure PrimitiveCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint)
    (partial : Partial)
    extends
      UnsatCore semantics registry partial where
  deletion_minimal :
    ∀ constraint ∈ constraints,
      semantics.Feasible
        (constraints.erase constraint)
        partial

theorem PrimitiveCore.primitive_core_unsatisfiable
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (core :
      PrimitiveCore
        semantics registry partial) :
    semantics.Infeasible
      core.constraints partial :=
  core.infeasible

theorem PrimitiveCore.every_proper_subset_feasible
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (core :
      PrimitiveCore
        semantics registry partial)
    {subset : Finset Constraint}
    (proper :
      subset ⊂ core.constraints) :
    semantics.Feasible subset partial := by
  rcases
      Finset.ssubset_iff_exists_subset_erase.mp
        proper with
    ⟨constraint, constraintMember,
      subsetErase⟩
  exact
    semantics.feasible_anti_constraints
      subsetErase
      (core.deletion_minimal
        constraint constraintMember)

def primitive_of_all_proper_subsets
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (core :
      UnsatCore semantics registry partial)
    (minimal :
      ∀ subset,
        subset ⊂ core.constraints →
        semantics.Feasible subset partial) :
    PrimitiveCore
      semantics registry partial where
  toUnsatCore := core
  deletion_minimal := by
    intro constraint member
    exact
      minimal
        (core.constraints.erase constraint)
        (Finset.erase_ssubset member)

def PrimitiveCore.extendRegistry
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry largerRegistry :
      Finset Constraint}
    {partial : Partial}
    (core :
      PrimitiveCore
        semantics registry partial)
    (registrySubset :
      registry ⊆ largerRegistry) :
    PrimitiveCore
      semantics largerRegistry partial where
  constraints := core.constraints
  subset_registry :=
    fun _ member =>
      registrySubset
        (core.subset_registry member)
  nonempty := core.nonempty
  infeasible := core.infeasible
  deletion_minimal :=
    core.deletion_minimal

abbrev PrimitiveCoreAt
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint)
    (partial : Partial) :=
  PrimitiveCore semantics registry partial

abbrev ExtractedPrimitiveCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint) :=
  Sigma
    (fun partial =>
      PrimitiveCoreAt
        semantics registry partial)

structure MUSExtractor
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint) where
  extract :
    (partial : Partial) →
      Option
        (PrimitiveCore
          semantics registry partial)
  sound :
    ∀ partial core,
      extract partial = some core →
      semantics.Infeasible
        core.constraints partial

end Mathematics.BinaryFrontier.Obstruction
