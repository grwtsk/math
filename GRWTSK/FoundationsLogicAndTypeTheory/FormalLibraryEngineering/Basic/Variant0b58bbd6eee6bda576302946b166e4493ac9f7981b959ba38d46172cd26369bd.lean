-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexingMode.Variant56ca5de2dd76dd716fbc18558dbc3e93502df64e8c22aacbd830cd1a23e20662","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56ca5de2dd76dd716fbc18558dbc3e93502df64e8c22aacbd830cd1a23e20662","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IndexingMode.Variant56ca5de2dd76dd716fbc18558dbc3e93502df64e8c22aacbd830cd1a23e20662","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"56ca5de2dd76dd716fbc18558dbc3e93502df64e8c22aacbd830cd1a23e20662","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Index/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.Substitution


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexingMode.Variant56ca5de2dd76dd716fbc18558dbc3e93502df64e8c22aacbd830cd1a23e20662

public section

open Lean Lean.Meta

namespace Aesop

inductive IndexingMode : Type
  | unindexed
  | target (keys : Array DiscrTree.Key)
  | hyps (keys : Array DiscrTree.Key)
  | or (imodes : Array IndexingMode)
  deriving Inhabited

namespace IndexingMode

protected partial def format : IndexingMode → Format
  | unindexed => "unindexed"
  | target keys => f!"target {keys}"
  | hyps keys => f!"hyps {keys}"
  | or imodes => f!"or {imodes.map IndexingMode.format}"

instance : ToFormat IndexingMode :=
  ⟨IndexingMode.format⟩

def targetMatchingConclusion (type : Expr) : MetaM IndexingMode := do
  let path ← getConclusionDiscrTreeKeys type
  return target path

def hypsMatchingConst (decl : Name) : MetaM IndexingMode :=
  withoutModifyingState do
  withReducible do
    let c ← mkConstWithFreshMVarLevels decl
    let (args, _) ← forallMetaTelescope (← inferType c)
    let app := mkAppN c args
    hyps <$> DiscrTree.mkPath app

end IndexingMode


/-- The source of a rule match reported by the index. We assume that
only IndexMatchLocations belonging to the same goal are equated or compared. -/
inductive IndexMatchLocation
  | none
  | target
  | hyp (ldecl : LocalDecl)
  deriving Inhabited

namespace IndexMatchLocation

instance : ToMessageData IndexMatchLocation where
  toMessageData
    | none => "none"
    | target => "target"
    | hyp ldecl => m!"hyp {ldecl.userName}"

instance : BEq IndexMatchLocation where
  beq
    | none, none => true
    | target, target => true
    | hyp ldecl₁, hyp ldecl₂ => ldecl₁.index == ldecl₂.index
    | _, _ => false

instance : Ord IndexMatchLocation where
  compare
    | target, target => .eq
    | target, none => .lt
    | target, hyp .. => .lt
    | none, target => .gt
    | none, none => .eq
    | none, hyp .. => .lt
    | hyp .., target => .gt
    | hyp .., none => .gt
    | hyp ldecl₁, hyp ldecl₂ => compare ldecl₁.index ldecl₂.index

instance : Hashable IndexMatchLocation where
  hash
    | none => 7
    | target => 13
    | hyp ldecl => mixHash 17 <| hash ldecl.index

end IndexMatchLocation


/-- A rule that, according to the index, should be applied to the current goal.
In addition to the rule, this data structure contains information about how the
rule should be applied. For example, if the rule has rule patterns, we report
the substitutions obtained by matching the rule patterns against the current
goal. -/
structure IndexMatchResult (α : Type) where
  /-- The rule that should be applied. -/
  rule : α
  /-- Goal locations where the rule matched. The rule's `indexingMode`
  determines which locations can be contained in this set. The array contains
  no duplicates. -/
  locations : Array IndexMatchLocation
  /-- Pattern substitutions for this rule that were found in the goal. `none`
  iff the rule doesn't have a pattern. The array contains no duplicates. -/
  patternSubsts? : Option (Array Substitution)
  deriving Inhabited

namespace IndexMatchResult

instance [Ord α] : Ord (IndexMatchResult α) where
  compare r s := compare r.rule s.rule

instance [Ord α] : LT (IndexMatchResult α) :=
  ltOfOrd

instance [ToMessageData α] : ToMessageData (IndexMatchResult α) where
  toMessageData r := toMessageData r.rule

end Aesop.IndexMatchResult
