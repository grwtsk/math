# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceEval.Variant3fa565612481d0e6a54306e7ebba59b6c63a662168a84f81b328900839dc0f55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `841d119cf19eb2f5c07f0066d91ed81096bafa0a` · SHA-256 `59f49436671e9d76261c6cd1d41b5967b1f2e1e36e43393d76658d24a300e259`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceEval.Varianta33e618d34aa28eced94bf4b24c29dfd3f0ba0e1fa8c56bc8344b17362d9b95b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a33e618d34aa28eced94bf4b24c29dfd3f0ba0e1fa8c56bc8344b17362d9b95b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReduceEval.Varianta33e618d34aa28eced94bf4b24c29dfd3f0ba0e1fa8c56bc8344b17362d9b95b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a33e618d34aa28eced94bf4b24c29dfd3f0ba0e1fa8c56bc8344b17362d9b95b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/ReduceEval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Offset


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceEval.Varianta33e618d34aa28eced94bf4b24c29dfd3f0ba0e1fa8c56bc8344b17362d9b95b

public section

/-! Evaluation by reduction -/

namespace Lean.Meta

class ReduceEval (α : Type) where
  reduceEval : Expr → MetaM α

def reduceEval [ReduceEval α] (e : Expr) : MetaM α :=
  withAtLeastTransparency TransparencyMode.default $
  ReduceEval.reduceEval e

private def throwFailedToEval (e : Expr) : MetaM α :=
  throwError "reduceEval: failed to evaluate argument{indentExpr e}"

instance : ReduceEval Nat where
  reduceEval e := private do
    let e ← whnf e
    let some n ← evalNat e | throwFailedToEval e
    pure n

instance [ReduceEval α] : ReduceEval (Option α) where
  reduceEval e := private do
    let e ← whnf e
    let Expr.const c .. ← pure e.getAppFn | throwFailedToEval e
    let nargs := e.getAppNumArgs
    if      c == ``Option.none && nargs == 0 then pure none
    else if c == ``Option.some && nargs == 1 then some <$> reduceEval e.appArg!
    else throwFailedToEval e

instance : ReduceEval String where
  reduceEval e := private do
    let Expr.lit (Literal.strVal s) ← whnf e | throwFailedToEval e
    pure s

private partial def evalName (e : Expr) : MetaM Name := do
  let e ← whnf e
  let Expr.const c _ ← pure e.getAppFn | throwFailedToEval e
  let nargs := e.getAppNumArgs
  if      c == ``Lean.Name.anonymous && nargs == 0 then pure Name.anonymous
  else if c == ``Lean.Name.str && nargs == 2 then do
    let n ← evalName $ e.getArg! 0
    let s ← reduceEval $ e.getArg! 1
    pure $ Name.mkStr n s
  else if c == ``Lean.Name.num && nargs == 2 then do
    let n ← evalName $ e.getArg! 0
    let u ← reduceEval $ e.getArg! 1
    pure $ Name.mkNum n u
  else
    throwFailedToEval e

instance : ReduceEval Name where
  reduceEval := private evalName

private partial def evalList [ReduceEval α] (e : Expr) : MetaM (List α) := do
  let e ← whnf e
  let .const c _ := e.getAppFn | throwFailedToEval e
  let nargs := e.getAppNumArgs
  match c, nargs with
    | ``List.nil, 1 => pure []
    | ``List.cons, 3 => return (← reduceEval (e.getArg! 1)) :: (← evalList (e.getArg! 2))
    | _, _ => throwFailedToEval e

instance [ReduceEval α] : ReduceEval (List α) where
  reduceEval := private evalList

instance [NeZero n] : ReduceEval (Fin n) where
  reduceEval := private fun e => do
    let e ← whnf e
    if e.isAppOfArity ``Fin.mk 3 then
      return Fin.ofNat _ (← reduceEval (e.getArg! 1))
    else
      throwFailedToEval e

instance {n : Nat} : ReduceEval (BitVec n) where
  reduceEval := private fun e => do
    let e ← whnf e
    if e.isAppOfArity ``BitVec.ofFin 2 then
      have : 2^n - 1 + 1 = 2^n := Nat.sub_one_add_one_eq_of_pos (Nat.two_pow_pos n)
      let _ : ReduceEval (Fin (2^n)) := this ▸ (inferInstanceAs <| ReduceEval (Fin (2^n - 1 + 1)))
      pure ⟨(← reduceEval (e.getArg! 1))⟩
    else
      throwFailedToEval e

instance : ReduceEval Bool where
  reduceEval := private fun e => do
    let e ← whnf e
    if e.isAppOf ``true then
      pure true
    else if e.isAppOf ``false then
      pure false
    else
      throwFailedToEval e

instance : ReduceEval BinderInfo where
  reduceEval := private fun e => do
    match (← whnf e).constName? with
    | some ``BinderInfo.default => pure .default
    | some ``BinderInfo.implicit => pure .implicit
    | some ``BinderInfo.strictImplicit => pure .strictImplicit
    | some ``BinderInfo.instImplicit => pure .instImplicit
    | _ => throwFailedToEval e

instance : ReduceEval Literal where
  reduceEval := private fun e => do
    let e ← whnf e
    if e.isAppOfArity ``Literal.natVal 1 then
      return .natVal (← reduceEval (e.getArg! 0))
    else if e.isAppOfArity ``Literal.strVal 1 then
      return .strVal (← reduceEval (e.getArg! 0))
    else
      throwFailedToEval e

instance : ReduceEval MVarId where
  reduceEval e := private do
    let e ← whnf e
    if e.isAppOfArity ``MVarId.mk 1 then
      return ⟨← reduceEval (e.getArg! 0)⟩
    else
      throwFailedToEval e

instance : ReduceEval LevelMVarId where
  reduceEval e := private do
    let e ← whnf e
    if e.isAppOfArity ``LevelMVarId.mk 1 then
      return ⟨← reduceEval (e.getArg! 0)⟩
    else
      throwFailedToEval e

instance : ReduceEval FVarId where
  reduceEval e := private do
    let e ← whnf e
    if e.isAppOfArity ``FVarId.mk 1 then
      return ⟨← reduceEval (e.getArg! 0)⟩
    else
      throwFailedToEval e


end Lean.Meta
```
