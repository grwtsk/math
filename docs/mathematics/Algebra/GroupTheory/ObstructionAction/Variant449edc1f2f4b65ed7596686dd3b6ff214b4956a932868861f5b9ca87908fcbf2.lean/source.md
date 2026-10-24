# Complete source: GRWTSK.Algebra.GroupTheory.ObstructionAction.Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5ef71292abadfb6a59034952fa85abfc9be3691` · SHA-256 `449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance

/-!
# Transport of primitive obstruction data

Completion equivariance preserves unsatisfiability and deletion minimality.
Only raw state/core data are acted on; proof terms are reconstructed from the
equivariance theorem.
-/

namespace Mathematics.BinaryFrontier

open Completion

universe uPartial uConstraint uGroup

structure RawObstruction
    (Partial : Type uPartial)
    (Constraint : Type uConstraint) where
  state : Partial
  core : Finset Constraint
  deriving DecidableEq, Repr

namespace Symmetry

universe uFull

def smulRawObstruction
    {Partial : Type uPartial}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Constraint]
    (automorphism : GroupCarrier)
    (obstruction :
      RawObstruction Partial Constraint) :
    RawObstruction Partial Constraint where
  state := automorphism • obstruction.state
  core :=
    transportFinset
      automorphism obstruction.core

instance rawObstructionSMul
    {Partial : Type uPartial}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Constraint] :
    SMul GroupCarrier
      (RawObstruction Partial Constraint) where
  smul := smulRawObstruction

instance rawObstructionMulAction
    {Partial : Type uPartial}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Partial]
    [MulAction GroupCarrier Constraint] :
    MulAction GroupCarrier
      (RawObstruction Partial Constraint) where
  one_smul := by
    intro obstruction
    cases obstruction
    simp [rawObstructionSMul,
      smulRawObstruction]
  mul_smul := by
    intro left right obstruction
    cases obstruction
    simp [rawObstructionSMul,
      smulRawObstruction,
      mul_smul, transportFinset_mul]

def transportPrimitiveCore
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
    {registry : Finset Constraint}
    {partial : Partial}
    (automorphism : GroupCarrier)
    (core :
      Obstruction.PrimitiveCore
        semantics registry partial) :
    Obstruction.PrimitiveCore
      semantics
      (transportFinset automorphism registry)
      (automorphism • partial) where
  constraints :=
    transportFinset
      automorphism core.constraints
  subset_registry :=
    transportFinset_subset
      core.subset_registry
  nonempty :=
    transportFinset_nonempty core.nonempty
  infeasible :=
    (equivariance.infeasible_equivariant
      automorphism core.constraints partial).mp
      core.infeasible
  deletion_minimal := by
    intro transformedConstraint
      transformedMember
    rcases
        mem_transportFinset.mp
          transformedMember with
      ⟨constraint, constraintMember,
        transformed⟩
    subst transformedConstraint
    have transportedFeasible :=
      (equivariance.feasible_equivariant
        automorphism
        (core.constraints.erase constraint)
        partial).mp
        (core.deletion_minimal
          constraint constraintMember)
    simpa [transportFinset_erase] using
      transportedFeasible

theorem primitive_core_transports_under_automorphism
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
    {registry : Finset Constraint}
    {partial : Partial}
    (automorphism : GroupCarrier)
    (core :
      Obstruction.PrimitiveCore
        semantics registry partial) :
    ∃ transported :
        Obstruction.PrimitiveCore
          semantics
          (transportFinset
            automorphism registry)
          (automorphism • partial),
      transported.constraints =
        transportFinset
          automorphism core.constraints :=
  ⟨transportPrimitiveCore
      equivariance automorphism core,
    rfl⟩

end Symmetry

end Mathematics.BinaryFrontier
```
