# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant68f4bbbd95f668fbea16abafd104f40a676d8239ae5dffb929b7e48cc32040d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2db95ec39ec10a30d64c4d88af34f781b7d69f00` · SHA-256 `49b251226a8681d0666e2d17d22f50baf4439c46b8044026d6d512d47575a878`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CompletionSemantics.Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CompletionSemantics.Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Completion/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Completion semantics

Feasibility means that a supplied full witness extends the partial state and
satisfies every constraint in the finite registry.  This interface does not
decide feasibility.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CompletionSemantics.Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6

namespace Mathematics.BinaryFrontier

structure CompletionSemantics
    (Partial Full Constraint : Type) where
  refines : Partial → Partial → Prop
  extendsFull : Partial → Full → Prop
  satisfies : Full → Constraint → Prop
  refines_refl : ∀ state, refines state state
  refines_trans :
    ∀ {left middle right},
      refines left middle →
      refines middle right →
      refines left right
  extendsFull_antitone :
    ∀ {parent child full},
      refines parent child →
      extendsFull child full →
      extendsFull parent full

def Feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (state : Partial) : Prop :=
  ∃ full,
    semantics.extendsFull state full ∧
      ∀ constraint ∈ constraints,
        semantics.satisfies full constraint

def Infeasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (state : Partial) : Prop :=
  ¬ Feasible semantics constraints state

theorem infeasible_iff_not_feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (state : Partial) :
    Infeasible semantics constraints state ↔
      ¬ Feasible semantics constraints state :=
  Iff.rfl

theorem feasible_of_constraint_subset
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {smaller larger : Finset Constraint}
    {state : Partial}
    (subset : smaller ⊆ larger)
    (largerFeasible : Feasible semantics larger state) :
    Feasible semantics smaller state := by
  obtain ⟨full, fullExtends, satisfies⟩ := largerFeasible
  exact ⟨full, fullExtends, fun constraint member =>
    satisfies constraint (subset member)⟩

theorem infeasibility_downward_closed
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {constraints : Finset Constraint}
    {parent child : Partial}
    (refinement : semantics.refines parent child)
    (parentInfeasible :
      Infeasible semantics constraints parent) :
    Infeasible semantics constraints child := by
  intro childFeasible
  obtain ⟨full, childExtends, satisfies⟩ := childFeasible
  apply parentInfeasible
  exact ⟨full,
    semantics.extendsFull_antitone refinement childExtends,
    satisfies⟩

end Mathematics.BinaryFrontier
```
