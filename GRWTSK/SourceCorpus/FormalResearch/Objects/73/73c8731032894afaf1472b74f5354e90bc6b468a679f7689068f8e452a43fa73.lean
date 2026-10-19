import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Symmetry.Canonical

/-!
# Completion-equivariance bridge

The bridge connects an independently defined group action to independently
defined completion semantics.  It changes neither core.
-/

namespace Mathematics.BinaryFrontier.Symmetry

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint uGroup

def transportFinset
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    (automorphism : GroupCarrier)
    (values : Finset Carrier) :
    Finset Carrier :=
  values.image
    (fun value => automorphism • value)

@[simp] theorem mem_transportFinset
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    {automorphism : GroupCarrier}
    {values : Finset Carrier}
    {candidate : Carrier} :
    candidate ∈
        transportFinset automorphism values ↔
      ∃ value ∈ values,
        automorphism • value = candidate := by
  simp [transportFinset]

@[simp] theorem transportFinset_one
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    (values : Finset Carrier) :
    transportFinset (1 : GroupCarrier) values =
      values := by
  ext candidate
  simp [transportFinset]

theorem transportFinset_mul
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    (left right : GroupCarrier)
    (values : Finset Carrier) :
    transportFinset (left * right) values =
      transportFinset left
        (transportFinset right values) := by
  ext candidate
  simp [transportFinset, mul_smul]

@[simp] theorem transportFinset_inverse_left
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    (automorphism : GroupCarrier)
    (values : Finset Carrier) :
    transportFinset automorphism⁻¹
        (transportFinset automorphism values) =
      values := by
  rw [← transportFinset_mul]
  simp

theorem transportFinset_subset
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    {automorphism : GroupCarrier}
    {small large : Finset Carrier}
    (subset : small ⊆ large) :
    transportFinset automorphism small ⊆
      transportFinset automorphism large := by
  intro candidate member
  rcases
      mem_transportFinset.mp member with
    ⟨value, valueMember, rfl⟩
  exact
    mem_transportFinset.mpr
      ⟨value, subset valueMember, rfl⟩

theorem transportFinset_nonempty
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    {automorphism : GroupCarrier}
    {values : Finset Carrier}
    (nonempty : values.Nonempty) :
    (transportFinset
      automorphism values).Nonempty := by
  rcases nonempty with
    ⟨value, valueMember⟩
  exact
    ⟨automorphism • value,
      mem_transportFinset.mpr
        ⟨value, valueMember, rfl⟩⟩

theorem transportFinset_erase
    {GroupCarrier : Type uGroup}
    {Carrier : Type uConstraint}
    [Group GroupCarrier]
    [MulAction GroupCarrier Carrier]
    [DecidableEq Carrier]
    (automorphism : GroupCarrier)
    (values : Finset Carrier)
    (removed : Carrier) :
    transportFinset automorphism
        (values.erase removed) =
      (transportFinset automorphism values).erase
        (automorphism • removed) := by
  ext candidate
  simp [transportFinset]

structure CompletionEquivariance
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics Partial Full Constraint)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint] where
  refinement_equivariant :
    ∀ automorphism parent child,
      semantics.refines parent child ↔
        semantics.refines
          (automorphism • parent)
          (automorphism • child)
  extension_equivariant :
    ∀ automorphism partial completion,
      semantics.extendsFull partial completion ↔
        semantics.extendsFull
          (automorphism • partial)
          (automorphism • completion)
  satisfaction_equivariant :
    ∀ automorphism completion constraint,
      semantics.satisfies completion constraint ↔
        semantics.satisfies
          (automorphism • completion)
          (automorphism • constraint)

theorem CompletionEquivariance.satisfiesAll_equivariant
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    (equivariance :
      CompletionEquivariance
        semantics GroupCarrier)
    (automorphism : GroupCarrier)
    (completion : Full)
    (constraints : Finset Constraint) :
    semantics.SatisfiesAll
        completion constraints ↔
      semantics.SatisfiesAll
        (automorphism • completion)
        (transportFinset
          automorphism constraints) := by
  constructor
  · intro satisfies
      transportedConstraint transportedMember
    rcases
        mem_transportFinset.mp
          transportedMember with
      ⟨constraint, constraintMember, rfl⟩
    exact
      (equivariance.satisfaction_equivariant
        automorphism completion constraint).mp
        (satisfies
          constraint constraintMember)
  · intro transportedSatisfies
      constraint constraintMember
    have transformed :=
      transportedSatisfies
        (automorphism • constraint)
        (mem_transportFinset.mpr
          ⟨constraint, constraintMember, rfl⟩)
    exact
      (equivariance.satisfaction_equivariant
        automorphism completion constraint).mpr
        transformed

theorem CompletionEquivariance.feasible_equivariant
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    (equivariance :
      CompletionEquivariance
        semantics GroupCarrier)
    (automorphism : GroupCarrier)
    (constraints : Finset Constraint)
    (partial : Partial) :
    semantics.Feasible constraints partial ↔
      semantics.Feasible
        (transportFinset
          automorphism constraints)
        (automorphism • partial) := by
  constructor
  · rintro
      ⟨completion, extends, satisfies⟩
    exact
      ⟨automorphism • completion,
        (equivariance.extension_equivariant
          automorphism partial completion).mp
          extends,
        (equivariance.satisfiesAll_equivariant
          automorphism completion constraints).mp
          satisfies⟩
  · rintro
      ⟨completion, extends, satisfies⟩
    refine
      ⟨automorphism⁻¹ • completion, ?_, ?_⟩
    · have inverseExtension :=
        (equivariance.extension_equivariant
          automorphism⁻¹
          (automorphism • partial)
          completion).mp extends
      simpa using inverseExtension
    · have inverseSatisfaction :=
        (equivariance.satisfiesAll_equivariant
          automorphism⁻¹ completion
          (transportFinset
            automorphism constraints)).mp
          satisfies
      simpa using inverseSatisfaction

theorem CompletionEquivariance.infeasible_equivariant
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Full]
    [MulAction GroupCarrier Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    (equivariance :
      CompletionEquivariance
        semantics GroupCarrier)
    (automorphism : GroupCarrier)
    (constraints : Finset Constraint)
    (partial : Partial) :
    semantics.Infeasible constraints partial ↔
      semantics.Infeasible
        (transportFinset
          automorphism constraints)
        (automorphism • partial) := by
  rw [semantics.infeasible_iff_not_feasible,
    semantics.infeasible_iff_not_feasible,
    equivariance.feasible_equivariant]

end Mathematics.BinaryFrontier.Symmetry
