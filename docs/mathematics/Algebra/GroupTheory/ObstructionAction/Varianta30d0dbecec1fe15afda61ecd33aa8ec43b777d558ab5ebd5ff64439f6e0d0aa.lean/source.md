# Complete source: GRWTSK.Algebra.GroupTheory.ObstructionAction.Varianta30d0dbecec1fe15afda61ecd33aa8ec43b777d558ab5ebd5ff64439f6e0d0aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e52223e5fe82118327cbbbade31eeba3362546ac` · SHA-256 `6401527701916271e4447e475f1062da3c95bf523dbf1e251d8865278fadfdda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.RawObstruction.Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.RawObstruction.Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2","mathematical_subject":"Algebra.Groups","original_sha256":"449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Symmetry/ObstructionAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance

/-!
# Transport of primitive obstruction data

Completion equivariance preserves unsatisfiability and deletion minimality.
Only raw state/core data are acted on; proof terms are reconstructed from the
equivariance theorem.
-/


namespace GRWTSK.Algebra.GroupTheory.RawObstruction.Variant449edc1f2f4b65ed7596686dd3b6ff214b4956a932868861f5b9ca87908fcbf2

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
