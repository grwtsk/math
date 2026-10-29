-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabMGoal.Variant5548df934f74cf43a730c09b6238e57fa7f5f4ed0d99bd2cefd2af431b736f2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5548df934f74cf43a730c09b6238e57fa7f5f4ed0d99bd2cefd2af431b736f2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DelabMGoal.Variant5548df934f74cf43a730c09b6238e57fa7f5f4ed0d99bd2cefd2af431b736f2d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5548df934f74cf43a730c09b6238e57fa7f5f4ed0d99bd2cefd2af431b736f2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/Delab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.MGoal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DelabMGoal.Variant5548df934f74cf43a730c09b6238e57fa7f5f4ed0d99bd2cefd2af431b736f2d

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do
open Std.Tactic.Do
open Lean Expr Meta PrettyPrinter Delaborator SubExpr

@[builtin_delab app.Std.Tactic.Do.MGoalEntails]
private partial def delabMGoal : Delab := do
  -- Std.Tactic.Do.MGoalEntails.{u} : ∀ {σs : List (Type u)}, SPred σs → SPred σs → Prop
  -- only accept when there are at least 3 arguments.
  let e ← getExpr
  guard <| e.getAppNumArgs >= 3
  let (_, _, hyps) ← withAppFn <| withAppArg <| delabHypotheses ({}, {}, #[])
  let target ← SPred.Notation.unpack (← withAppArg <| delab)

  -- build syntax
  return ⟨← `(Std.Tactic.Do.mgoalStx| $hyps.reverse* ⊢ₛ $target:term)⟩
where
  delabHypotheses
      (acc : NameMap Nat × NameMap Nat × Array (TSyntax ``mgoalHyp)) :
      DelabM (NameMap Nat × NameMap Nat × Array (TSyntax ``mgoalHyp)) := do
    let hyps ← getExpr
    if let some _ := parseEmptyHyp? hyps then
      return acc
    if let some hyp := parseHyp? hyps then
      let mut (accessibles, inaccessibles, lines) := acc
      let name := hyp.name.eraseMacroScopes
      -- `mintro _ _` will give fresh inaccessible names `h✝` and `h✝₁` to the hypotheses.
      -- Note that we want to mirror `intro _ _` where it's actually displayed as `h✝₁` and `h✝`.
      -- Since neither name equates to the other, we erase the macro scopes here and look up `h` in
      -- a separate map, adding back the default `✝` suffix by unconditionally starting from idx 0.
      let mIdx :=
        if hyp.name.hasMacroScopes then
          -- NB: inaccessibles always start with 0 for the initial ✝
          .some (inaccessibles.getD name 0)
        else
          accessibles.find? name
      let (idx, name') :=
        if let some idx := mIdx then
          (idx + 1, name.appendAfter <| if idx == 0 then "✝" else "✝" ++ idx.toSuperscriptString)
        else
          (0, name)
      let name' := mkIdent name'
      let stx ← `(Std.Tactic.Do.mgoalHyp| $name' : $(← SPred.Notation.unpack (← withMDataExpr <| delab)))
      if hyp.name.hasMacroScopes then
        inaccessibles := inaccessibles.insert name idx
      else
        accessibles := accessibles.insert name idx
      return (accessibles, inaccessibles, lines.push stx)
    if (parseAnd? hyps).isSome then
      -- SPred.and : ∀ {σs : List Type}, SPred σs → SPred σs → SPred σs
      -- first delab `rhs` in `SPred.and σs lhs rhs`, then `lhs`.
      let acc_rhs ← withAppArg <| delabHypotheses acc
      let acc_lhs ← withAppFn <| withAppArg <| delabHypotheses acc_rhs
      return acc_lhs
    else
      failure

@[builtin_delab app.Std.Tactic.Do.MGoalHypMarker]
private def delabHypMarker : Delab := do SPred.Notation.unpack (← withAppArg delab)
