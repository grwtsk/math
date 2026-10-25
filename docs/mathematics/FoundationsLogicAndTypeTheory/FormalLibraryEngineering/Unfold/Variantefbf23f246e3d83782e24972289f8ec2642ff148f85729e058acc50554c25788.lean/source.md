# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76fa6127a2c544568a4bafeae5f10385ed8dc55f` · SHA-256 `f0a20f2a2d55147cb4df21883f0621c372d7bc3f50014a2b4aff2d2190f5639f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkUnfoldSimpContext.Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkUnfoldSimpContext.Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Util/Unfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022--2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Tactic.Simp.Main
import Lean.Meta.Tactic.Delta
import Lean.Meta.WHNF


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkUnfoldSimpContext.Variant38fa112bb2fe7ade0feed23a4f5375cdfb4273eb7d8f0290c298c14b4f77c78a

public section

open Lean Lean.Meta Lean.Elab.Tactic

namespace Aesop

-- Inspired by Lean.Meta.unfold, Lean.Meta.unfoldTarget,
-- Lean.Meta.unfoldLocalDecl.

def mkUnfoldSimpContext : MetaM Simp.Context := do
  Simp.mkContext Simp.neutralConfig (simpTheorems := #[]) (congrTheorems := ← getSimpCongrTheorems)

@[inline]
def unfoldManyCore (ctx : Simp.Context) (unfold? : Name → Option (Option Name))
    (e : Expr) : StateRefT (Array Name) MetaM Simp.Result :=
  λ usedDeclsRef =>
    (·.fst) <$> Simp.main e ctx (methods := { pre := (pre · usedDeclsRef) })
where
  -- NOTE: once we succeed in unfolding something, we return `done`. This
  -- means that `simp` won't recurse into the unfolded expression, missing
  -- potential further opportunities for unfolding.
  --
  -- I've tried returning
  -- `visit` instead, in which case we get recursive unfolding as desired, but
  -- we also get different results than when we call the `unfold` tactic
  -- multiple times.
  --
  -- Aesop calls `unfold` multiple times anyway, so the current implementation
  -- is slow but correct.
  pre (e : Expr) : StateRefT (Array Name) SimpM Simp.Step := do
    let some decl := e.getAppFn'.constName?
      | return .continue
    match unfold? decl with
    | none =>
      return .continue
    | some none =>
      if let some e' ← delta? e (λ n => n == decl) then
        modify (·.push decl)
        return .done { expr := e' }
      else
        return .continue
    | some (some unfoldThm) =>
      let result? ← withReducible <|
        Simp.tryTheorem? e
          { origin := .decl unfoldThm
            proof := mkConst unfoldThm
            rfl := ← isRflTheorem unfoldThm }
      match result? with
      | none   => return .continue
      | some r =>
        modify (·.push decl)
        match (← reduceMatcher? r.expr) with
        | .reduced e' => return .done { r with expr := e' }
        | _ => return .done r

def unfoldMany (unfold? : Name → Option (Option Name)) (e : Expr) :
    MetaM (Option (Expr × Array Name)) := do
  let e ← instantiateMVars e
  let (r, usedDecls) ← unfoldManyCore (← mkUnfoldSimpContext) unfold? e |>.run {}
  if (← instantiateMVars r.expr) == e then
    return none
  else
    return some (r.expr, usedDecls)

def unfoldManyTarget (unfold? : Name → Option (Option Name)) (goal : MVarId) :
    MetaM (Option (MVarId × Array Name)) := do
  let tgt ← instantiateMVars $ ← goal.getType
  let (result, usedDecls) ←
    unfoldManyCore (← mkUnfoldSimpContext) unfold? tgt |>.run #[]
  if result.expr == tgt then
    return none
  let goal ← applySimpResultToTarget goal tgt result
  return some (goal, usedDecls)

def unfoldManyAt (unfold? : Name → Option (Option Name)) (goal : MVarId)
    (fvarId : FVarId) : MetaM (Option (MVarId × Array Name)) :=
  goal.withContext do
    let type ← instantiateMVars $ ← fvarId.getType
    let (result, usedDecls) ←
      unfoldManyCore (← mkUnfoldSimpContext) unfold? type |>.run #[]
    if result.expr == type then
      return none
    let some (_, goal) ←
        applySimpResultToLocalDecl goal fvarId result (mayCloseGoal := false)
      | throwTacticEx `aesop_unfold goal "internal error: unexpected result of applySimpResultToLocalDecl"
    return some (goal, usedDecls)

def unfoldManyStar (unfold? : Name → Option (Option Name)) (goal : MVarId) :
    MetaM (Option MVarId) :=
  goal.withContext do
    let initialGoal := goal
    let mut goal := goal
    if let some (goal', _) ← unfoldManyTarget unfold? goal then
      goal := goal'
    for ldecl in (← goal.getDecl).lctx do
      if ldecl.isImplementationDetail then
        continue
      if let some (goal', _) ← unfoldManyAt unfold? goal ldecl.fvarId then
        goal := goal'
    if goal == initialGoal then
      return none
    else
      return some goal

end Aesop
```
