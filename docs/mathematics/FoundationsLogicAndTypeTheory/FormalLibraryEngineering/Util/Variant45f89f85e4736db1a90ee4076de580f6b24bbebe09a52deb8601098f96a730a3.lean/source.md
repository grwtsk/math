# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant45f89f85e4736db1a90ee4076de580f6b24bbebe09a52deb8601098f96a730a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2973d3bf97d14b703de52ae2175e9a1a07bcf3d` · SHA-256 `a4ff1de8d4ee9267ccd9fba83dc34eea963b65cd3f95185e5a321af541fa9017`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Simp.Simproc
import Init.Simproc
import Lean.Meta.Tactic.Clear
import Lean.Meta.Sym.Util
public import Init.Grind.Config
import Init.Grind.Util
import Lean.Structure

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a

public section
namespace Lean.Meta.Grind
/--
Throws an exception if target of the given goal contains metavariables.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.ensureNoMVar (mvarId : MVarId) : MetaM Unit := do
  let type ← instantiateMVars (← mvarId.getType)
  if type.hasExprMVar then
    throwTacticEx `grind mvarId "goal contains metavariables"

/--
Instantiates metavariables occurring in the target and hypotheses.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.instantiateGoalMVars (mvarId : MVarId) : MetaM MVarId := do
  mvarId.checkNotAssigned `grind
  let mvarDecl ← mvarId.getDecl
  let lctx ← instantiateLCtxMVars mvarDecl.lctx
  let type ← Lean.instantiateMVars mvarDecl.type
  let mvarNew ← mkFreshExprMVarAt lctx mvarDecl.localInstances type .syntheticOpaque mvarDecl.userName
  mvarId.assign mvarNew
  return mvarNew.mvarId!

/-- Abstracts metavariables occurring in the target. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.abstractMVars (mvarId : MVarId) : MetaM MVarId := do
  mvarId.checkNotAssigned `grind
  let type ← instantiateMVars (← mvarId.getType)
  unless type.hasExprMVar do return mvarId
  mvarId.withContext do
  let r ← Meta.abstractMVars type (levels := false)
  let typeNew ← lambdaTelescope r.expr fun xs body => mkForallFVars xs body
  let tag ← mvarId.getTag
  let mvarNew ← mkFreshExprSyntheticOpaqueMVar typeNew tag
  mvarId.assign (mkAppN mvarNew r.mvars)
  return mvarNew.mvarId!

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.transformTarget (mvarId : MVarId) (f : Expr → MetaM Expr) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `grind
  let tag ← mvarId.getTag
  let type ← mvarId.getType
  let typeNew ← f type
  let mvarNew ← mkFreshExprSyntheticOpaqueMVar typeNew tag
  mvarId.assign mvarNew
  return mvarNew.mvarId!

/--
Unfolds all `reducible` declarations occurring in the goal's target.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.unfoldReducible (mvarId : MVarId) : MetaM MVarId :=
  mvarId.transformTarget Sym.unfoldReducible

/--
Beta-reduces the goal's target.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.betaReduce (mvarId : MVarId) : MetaM MVarId :=
  mvarId.transformTarget (Core.betaReduce ·)

/--
If the target is not `False`, applies `byContradiction`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.byContra? (mvarId : MVarId) : MetaM (Option MVarId) := mvarId.withContext do
  mvarId.checkNotAssigned `grind.by_contra
  let target ← mvarId.getType
  if target.isFalse then return none
  let targetNew ← mkArrow (mkNot target) (mkConst ``False)
  let tag ← mvarId.getTag
  let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
  mvarId.assign <| mkApp2 (mkConst ``Classical.byContradiction) target mvarNew
  return mvarNew.mvarId!

/--
Clears auxiliary **and** implementation detail decls used to encode recursive declarations and
implementation details.
- `grind` eliminates auxiliary declarations to ensure they are not accidentally used by its proof automation.
- `grind` eliminates implementation detail declarations because they have a support role.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdEnsureNoMVar.Variantb076734cec787ad6463e2458cb0bac388cc74ebcf9fde1e964b830f4586eea6a.Lean.MVarId.clearImplDetails (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `grind.clear_aux_decls
  let mut toClear := []
  for localDecl in (← getLCtx) do
    if localDecl.isImplementationDetail then
      toClear := localDecl.fvarId :: toClear
  if toClear.isEmpty then
    return mvarId
  let mut mvarId := mvarId
  for fvarId in toClear do
    try
      mvarId ← mvarId.clear fvarId
    catch _ =>
      let decl ← fvarId.getDecl
      if decl.isAuxDecl then
        let userName := decl.userName
        throwTacticEx `grind mvarId m!"the goal mentions the declaration `{userName}`, which is being defined. To avoid circular reasoning, try rewriting the goal to eliminate `{userName}` before using `grind`."
  return mvarId

/--
In the `grind` tactic, during `Expr` internalization, we don't expect to find `Expr.mdata`.
This function ensures `Expr.mdata` is not found during internalization.
Recall that we do not internalize `Expr.lam` children.
Recall that we still have to process `Expr.forallE` because of `ForallProp.lean`.
Moreover, we may not want to reduce `p → q` to `¬p ∨ q` when `(p q : Prop)`.
-/
def eraseIrrelevantMData (e : Expr) : CoreM Expr := do
  if Option.isNone <| e.find? fun e => e.isMData then return e
  let pre (e : Expr) := do
    match e with
    | .letE .. | .lam .. => return .done e
    | .mdata _ e => return .visit e
    | _ => return .continue e
  Core.transform e (pre := pre)

/--
Converts nested `Expr.proj`s into projection applications if possible.
-/
def foldProjs (e : Expr) : MetaM Expr :=
  Sym.foldProjs e

set_option compiler.ignoreBorrowAnnotation true in
/--
Normalizes the given expression using the `grind` simplification theorems and simprocs.
This function is used for normalizing E-matching patterns. Note that it does not return a proof.
-/
@[extern "lean_grind_normalize"] -- forward definition
opaque normalize (e : Expr) (config : Grind.Config) : MetaM Expr

/--
Returns `Grind.MatchCond e`.
We have special support for propagating is truth value.
See comment at `MatchCond.lean`.
-/
def markAsMatchCond (e : Expr) : Expr :=
  mkApp (mkConst ``Grind.MatchCond) e

def isMatchCond (e : Expr) : Bool :=
  e.isAppOfArity ``Grind.MatchCond 1

/--
Returns `Grind.PreMatchCond e`.
Recall that `Grind.PreMatchCond` is an identity function,
but the simproc `reducePreMatchCond` is used to prevent the term `e` from being simplified.
`Grind.PreMatchCond` is later converted into `Grind.MatchCond`.
See comment at `MatchCond.lean`.
-/
def markAsPreMatchCond(e : Expr) : Expr :=
  mkApp (mkConst ``Grind.PreMatchCond) e

def isPreMatchCond (e : Expr) : Bool :=
  e.isAppOfArity ``Grind.PreMatchCond 1

builtin_dsimproc_decl reducePreMatchCond (Grind.PreMatchCond _) := fun e => do
  let_expr Grind.PreMatchCond _ ← e | return .continue
  return .done e

/-- Adds `reducePreMatchCond` to `s` -/
def addPreMatchCondSimproc (s : Simprocs) : CoreM Simprocs := do
  s.add ``reducePreMatchCond (post := false)

/--
Converts `Grind.PreMatchCond` into `Grind.MatchCond`.
Recall that `Grind.PreMatchCond` uses default reducibility setting, but
`Grind.MatchCond` does not.
-/
def replacePreMatchCond (e : Expr) : MetaM Simp.Result := do
  if e.find? isPreMatchCond |>.isNone then
    return { expr := e }
  else
    let pre (e : Expr) := do
      let_expr Grind.PreMatchCond p := e | return .continue e
      return .continue (markAsMatchCond p)
    let e' ← Core.transform e (pre := pre)
    return { expr := e', proof? := mkExpectedPropHint (← mkEqRefl e') (← mkEq e e') }

def isIte (e : Expr) :=
  e.isAppOf ``ite && e.getAppNumArgs >= 5

def isDIte (e : Expr) :=
  e.isAppOf ``dite && e.getAppNumArgs >= 5

def getBinOp (e : Expr) : Option Expr :=
  if !e.isApp then none else
  let f := e.appFn!
  if !f.isApp then none else
  some f.appFn!

end Lean.Meta.Grind
```
