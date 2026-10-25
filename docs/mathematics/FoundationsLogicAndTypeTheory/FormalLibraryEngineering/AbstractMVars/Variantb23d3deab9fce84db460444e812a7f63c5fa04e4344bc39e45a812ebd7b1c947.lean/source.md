# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AbstractMVars.Variantb23d3deab9fce84db460444e812a7f63c5fa04e4344bc39e45a812ebd7b1c947

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d971b57f82287e11230c7e63fd790ceaf9ad8ab6` · SHA-256 `7c889219c9d0f9839e1ce53319a325e0d966efc914ae63f1ae2fe4859afbac4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/AbstractMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantd78b0f4058d23f6d8bb55fc738663b2b8c9852375d1709b2abe9bf1c5749b640

public section

namespace Lean.Meta
namespace AbstractMVars

structure State where
  ngen           : NameGenerator
  lctx           : LocalContext
  mctx           : MetavarContext
  nextParamIdx   : Nat := 0
  paramNames     : Array Name := #[]
  fvars          : Array Expr := #[]
  mvars          : Array Expr := #[]
  lmap           : Std.HashMap LMVarId Level := {}
  emap           : Std.HashMap MVarId Expr  := {}
  abstractLevels : Bool -- whether to abstract level mvars

abbrev M := StateM State

@[always_inline]
instance : MonadMCtx M where
  getMCtx := return (← get).mctx
  modifyMCtx f := modify fun s => { s with mctx := f s.mctx }

def mkFreshId : M Name := do
  let s ← get
  let fresh := s.ngen.curr
  modify fun s => { s with ngen := s.ngen.next }
  pure fresh

def mkFreshFVarId : M FVarId :=
  return { name := (← mkFreshId) }

private partial def abstractLevelMVars (u : Level) : M Level := do
  if !(← get).abstractLevels then
    return u
  if !u.hasMVar then
    return u
  else
    match u with
    | Level.zero        => return u
    | Level.param _     => return u
    | Level.succ v      => return u.updateSucc! (← abstractLevelMVars v)
    | Level.max v w     => return u.updateMax! (← abstractLevelMVars v) (← abstractLevelMVars w)
    | Level.imax v w    => return u.updateIMax! (← abstractLevelMVars v) (← abstractLevelMVars w)
    | Level.mvar mvarId =>
      let s ← get
      let depth := s.mctx.getLevelDepth mvarId;
      if depth != s.mctx.depth then
        return u -- metavariables from lower depths are treated as constants
      else
        match s.lmap[mvarId]? with
        | some u => pure u
        | none   =>
          let paramId := Name.mkNum `_abstMVar s.nextParamIdx
          let u := mkLevelParam paramId
          modify fun s => { s with nextParamIdx := s.nextParamIdx + 1, lmap := s.lmap.insert mvarId u, paramNames := s.paramNames.push paramId }
          return u

/--
Abstracts metavariables in `e`. Assumes `instantiateMVars` has been applied to `e`.
-/
partial def abstractExprMVars (e : Expr) : M Expr := do
  if !e.hasMVar then
    return e
  else
    match e with
    | e@(Expr.lit _)           => return e
    | e@(Expr.bvar _)          => return e
    | e@(Expr.fvar _)          => return e
    | e@(Expr.sort u)          => return e.updateSort! (← abstractLevelMVars u)
    | e@(Expr.const _ us)      => return e.updateConst! (← us.mapM abstractLevelMVars)
    | e@(Expr.proj _ _ s)      => return e.updateProj! (← abstractExprMVars s)
    | e@(Expr.app f a)         => return e.updateApp! (← abstractExprMVars f) (← abstractExprMVars a)
    | e@(Expr.mdata _ b)       => return e.updateMData! (← abstractExprMVars b)
    | e@(Expr.lam _ d b _)     => return e.updateLambdaE! (← abstractExprMVars d) (← abstractExprMVars b)
    | e@(Expr.forallE _ d b _) => return e.updateForallE! (← abstractExprMVars d) (← abstractExprMVars b)
    | e@(Expr.letE _ t v b _)  => return e.updateLetE! (← abstractExprMVars t) (← abstractExprMVars v) (← abstractExprMVars b)
    | e@(Expr.mvar mvarId)     =>
      let decl := (← getMCtx).getDecl mvarId
      if decl.depth != (← getMCtx).depth then
        return e
      else
        match (← get).emap[mvarId]? with
        | some e =>
          return e
        | none   =>
          let type   ← abstractExprMVars (← instantiateMVars decl.type)
          let fvarId ← mkFreshFVarId
          let fvar := mkFVar fvarId;
          let userName ← if decl.userName.isAnonymous then
            pure <| (`x).appendIndexAfter (← get).fvars.size
          else
            pure decl.userName
          modify fun s => {
            s with
            emap  := s.emap.insert mvarId fvar
            fvars := s.fvars.push fvar
            mvars := s.mvars.push e
            lctx  := s.lctx.mkLocalDecl fvarId userName type }
          return fvar

end AbstractMVars

/--
  Abstract (current depth) metavariables occurring in `e`.
  The result contains
  - An array of universe level parameters that replaced universe metavariables occurring in `e`.
  - The metavariables that have been abstracted.
  - And an expression of the form `fun (m_1 : A_1) ... (m_k : A_k) => e'`, where
    `k` equal to the number of (expr) metavariables abstracted, and `e'` is `e` after we
    replace the metavariables.

  Example: given `f.{?u} ?m1` where `?m1 : ?m2 Nat`, `?m2 : Type -> Type`. This function returns
  `{ levels := #[u], size := 2, expr := (fun (m2 : Type -> Type) (m1 : m2 Nat) => f.{u} m1) }`

  This API can be used to "transport" to a different metavariable context.
  Given a new metavariable context, we replace the `AbstractMVarsResult.levels` with
  new fresh universe metavariables, and instantiate the `(m_i : A_i)` in the lambda-expression
  with new fresh metavariables.

  If `levels := false`, then level metavariables are not abstracted.

  Application: we use this method to cache the results of type class resolution.

  Application: tactic `MVarId.abstractMVars`
  -/
def abstractMVars (e : Expr) (levels : Bool := true): MetaM AbstractMVarsResult := do
  let e ← instantiateMVars e
  let (e, s) := AbstractMVars.abstractExprMVars e |>.run
    { mctx := (← getMCtx), lctx := (← getLCtx), ngen := (← getNGen), abstractLevels := levels }
  setNGen s.ngen
  setMCtx s.mctx
  let e := s.lctx.mkLambda s.fvars e
  pure { paramNames := s.paramNames, mvars := s.mvars, expr := e }

def openAbstractMVarsResult (a : AbstractMVarsResult) : MetaM (Array Expr × Array BinderInfo × Expr) := do
  let us ← a.paramNames.mapM fun _ => mkFreshLevelMVar
  let e := a.expr.instantiateLevelParamsArray a.paramNames us
  lambdaMetaTelescope e (some a.numMVars)

end Lean.Meta
```
