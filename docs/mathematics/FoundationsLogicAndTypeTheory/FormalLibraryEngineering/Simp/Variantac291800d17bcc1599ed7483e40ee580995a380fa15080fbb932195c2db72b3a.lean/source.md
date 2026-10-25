# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variantac291800d17bcc1599ed7483e40ee580995a380fa15080fbb932195c2db72b3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0aac9693f9cdf191e45729a9607a42dfc86a9946` · SHA-256 `fcc6860223f8440375973d49e926447a46b79a4f7e0b0556db4721557c3c7ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpResult.Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpResult.Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/Expansion/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Tactic.Simp.SimpAll


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpResult.Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85

public section

open Lean Lean.Meta
open Simp (UsedSimps)

namespace Aesop

inductive SimpResult
  | solved (usedTheorems : Simp.UsedSimps)
  | unchanged
  | simplified (newGoal : MVarId) (usedTheorems : UsedSimps)

namespace SimpResult

def newGoal? : SimpResult → Option MVarId
  | solved .. => none
  | unchanged => none
  | simplified g .. => some g

end SimpResult

/--
Add all `let` hypotheses in the local context as `simp` theorems.

Background: by default, in the goal `x : _ := v ⊢ P[x]`, `simp` does not
substitute `x` by `v` in the target. The `simp` option `zetaDelta` can be used
to make `simp` perform this substitution, but we don't want to set it because
then Aesop `simp` would diverge from default `simp`, so we would have to adjust
the `aesop?` output as well. Instead, we add `let` hypotheses explicitly. This
way, `simp?` picks them up as well.

See lean4#3520.
-/
def addLetDeclsToSimpTheorems (ctx : Simp.Context) : MetaM Simp.Context := do
  let mut simpTheoremsArray := ctx.simpTheorems
  if simpTheoremsArray.isEmpty then
    simpTheoremsArray := #[{}]
  for ldecl in ← getLCtx do
    if ldecl.hasValue && ! ldecl.isImplementationDetail then
      simpTheoremsArray := simpTheoremsArray.modify 0 λ simpTheorems =>
        simpTheorems.addLetDeclToUnfold ldecl.fvarId
  return ctx.setSimpTheorems simpTheoremsArray

def addLetDeclsToSimpTheoremsUnlessZetaDelta (ctx : Simp.Context) :
    MetaM Simp.Context := do
  if ctx.config.zetaDelta then
    return ctx
  else
    addLetDeclsToSimpTheorems ctx

def simpGoal (mvarId : MVarId) (ctx : Simp.Context)
    (simprocs : Simp.SimprocsArray) (discharge? : Option Simp.Discharge := none)
    (simplifyTarget : Bool := true) (fvarIdsToSimp : Array FVarId := #[])
    (stats : Simp.Stats := {}) : MetaM SimpResult := do
  let mvarIdOld := mvarId
  let ctx := ctx.setFailIfUnchanged false
  let (result, { usedTheorems := usedSimps, .. }) ←
    Meta.simpGoal mvarId ctx simprocs discharge? simplifyTarget fvarIdsToSimp
      stats
  if let some (_, mvarId) := result then
    if mvarId == mvarIdOld then
      return .unchanged
    else
      return .simplified mvarId usedSimps
  else
    return .solved usedSimps

def simpGoalWithAllHypotheses (mvarId : MVarId) (ctx : Simp.Context)
    (simprocs : Simp.SimprocsArray) (discharge? : Option Simp.Discharge := none)
    (simplifyTarget : Bool := true) (stats : Simp.Stats := {}) :
    MetaM SimpResult :=
  mvarId.withContext do
    let lctx ← getLCtx
    let mut fvarIdsToSimp := Array.mkEmpty lctx.decls.size
    for ldecl in lctx do
      if ldecl.isImplementationDetail then
        continue
      fvarIdsToSimp := fvarIdsToSimp.push ldecl.fvarId
    let ctx ← addLetDeclsToSimpTheoremsUnlessZetaDelta ctx
    Aesop.simpGoal mvarId ctx simprocs discharge? simplifyTarget fvarIdsToSimp
      stats

def simpAll (mvarId : MVarId) (ctx : Simp.Context)
    (simprocs : Simp.SimprocsArray) (stats : Simp.Stats := {}) :
    MetaM SimpResult :=
  mvarId.withContext do
    let ctx := ctx.setFailIfUnchanged false
    let ctx ← addLetDeclsToSimpTheoremsUnlessZetaDelta ctx
    match ← Lean.Meta.simpAll mvarId ctx simprocs stats with
    | (none, stats) => return .solved stats.usedTheorems
    | (some mvarIdNew, stats) =>
      if mvarIdNew == mvarId then
        return .unchanged
      else
        return .simplified mvarIdNew stats.usedTheorems

end Aesop
```
