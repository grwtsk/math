# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimp.Variant0b0bee72f83241f2e59ec24c321a38ceaf3e1dee00c8781d15c5c37a419691ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `652f040e0391a0454a3fd05c570efa0d4ad2f990` · SHA-256 `7f368cc38d2dfc2a9434bacc1ba2ae15dc78cbd697a7732d7819972839781cea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabDSimpArgs.Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabDSimpArgs.Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/DSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.Basic
import Lean.Elab.Tactic.Grind.DSimprocDSL
import Lean.Meta.Sym.DSimp.Variant
import Lean.Meta.Sym.DSimp.Reduce
import Lean.Meta.Sym.DSimp.DSimproc

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabDSimpArgs.Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d

namespace Lean.Elab.Tactic.Grind
open Meta
open Sym.DSimp

def elabDSimpArgs (args? : Option (Array (TSyntax [`token.«*», `ident]))) : GrindTacticM DSimpArgs := do
  let some args := args? | return {}
  let mut fvarIds := #[]
  let mut zetaDeltaAll := false
  let lctx ← getLCtx
  for arg in args do
    if arg.raw.getKind == `ident then
      if let some decl := lctx.findFromUserName? arg.raw.getId then
        fvarIds := fvarIds.push decl.fvarId
      else
        -- TODO: add support for rfl-theorems and unfolding definitions
        throwError "unknown identifier `{arg.raw.getId}`"
    else
      zetaDeltaAll := true
  if !fvarIds.isEmpty && zetaDeltaAll then
    throwError "invalid `dsimp` arguments, local declarations and `*` have been provided"
  return { fvarIds, zetaDeltaAll }

def addDSimpArgs (pre : DSimproc) (args : DSimpArgs) : DSimproc := Id.run do
  let mut pre := pre
  if args.zetaDeltaAll then
    pre := pre >> zetaDeltaAll
  unless args.fvarIds.isEmpty do
    pre := pre >> zetaDelta (FVarIdSet.ofArray args.fvarIds)
  return pre

def mkDSimpDefaultMethods (args : DSimpArgs) : GrindTacticM Sym.DSimp.Methods := do
  let pre  := beta >> dsimpProj >> dsimpMatch
  let pre  := addDSimpArgs pre args
  let post := evalGround
  return { pre, post }

def trivialDSimproc : DSimproc := fun _ =>
  return .rfl

def elabOptDSimproc (stx? : Option Syntax) : GrindTacticM DSimproc := do
  let some stx := stx? | return trivialDSimproc
  elabSymDSimproc stx

def elabDSimpVariant (variantName : Name) (args : DSimpArgs) : GrindTacticM (Sym.DSimp.Methods × Sym.DSimp.Config) := do
  if variantName.isAnonymous then
    return (← mkDSimpDefaultMethods args, {})
  let some v := Sym.DSimp.getSymDSimpVariant? (← getEnv) variantName
    | throwError "unknown Sym.dsimp variant `{variantName}`"
  let pre := addDSimpArgs (← elabOptDSimproc v.pre?) args
  let post ← elabOptDSimproc v.post?
  return ({ pre, post}, v.config)

@[builtin_grind_tactic Parser.Tactic.Grind.symDSimp] def evalSymDSimp : GrindTactic := fun stx => withMainContext do
  ensureSym
  let `(grind| dsimp $[$variantId?]? $[[ $[$args],* ]]?) := stx | throwUnsupportedSyntax
  let variantName := variantId?.map (·.getId) |>.getD .anonymous
  let args ← elabDSimpArgs args
  let cacheKey : DSimpCacheKey := { variant := variantName, args }
  let dsimpState := (← get).cache.dsimpState[cacheKey]?.getD {}
  let (methods, config) ← elabDSimpVariant variantName args
  let goal ← getMainGoal
  let (result, dsimpState) ← liftGrindM <| goal.withContext do
    Sym.DSimp.DSimpM.run (Sym.DSimp.dsimp (← goal.mvarId.getType)) methods config dsimpState
  modify fun s => { s with cache.dsimpState := s.cache.dsimpState.insert cacheKey dsimpState }
  match result with
  | .rfl _  => throwError "`Sym.dsimp` made no progress"
  | .step target' _ =>
    if target'.isTrue then
      goal.mvarId.assign (mkConst ``True.intro)
      replaceMainGoal []
    else
      let decl ← goal.mvarId.getDecl
      let mvarNew ← mkFreshExprSyntheticOpaqueMVar target' decl.userName
      goal.mvarId.assign mvarNew
      replaceMainGoal [{ goal with mvarId := mvarNew.mvarId! }]

end Lean.Elab.Tactic.Grind
```
