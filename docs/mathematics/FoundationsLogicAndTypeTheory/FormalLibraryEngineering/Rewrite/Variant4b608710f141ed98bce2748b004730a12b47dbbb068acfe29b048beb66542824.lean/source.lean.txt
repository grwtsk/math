-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkValue.Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkValue.Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Rewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Simproc
public import Lean.Meta.Sym.Simp.Theorems
public import Lean.Meta.Sym.Simp.App
public import Lean.Meta.Sym.Simp.Discharger
import Lean.Meta.ACLt
import Lean.Meta.Sym.InstantiateS
import Lean.Meta.Sym.InstantiateMVarsS
import Init.Data.Range.Polymorphic.Iterators

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkValue.Variantab6ae2fdcc63c5d5d2ce7f8e6725490ab31549bfb6fd91a7985dc8de6d0894cf

namespace Lean.Meta.Sym.Simp
open Lean.Meta.Grind

/--
Creates proof term for a rewriting step.
Handles both constant expressions (common case, avoids `instantiateLevelParams`)
and general expressions.
-/
def mkValue (expr : Expr) (pattern : Pattern) (us : List Level) (args : Array Expr) : Expr :=
  if let .const declName [] := expr then
    mkAppN (mkConst declName us) args
  else
    mkAppN (expr.instantiateLevelParams pattern.levelParams us) args

/--
Tries to rewrite `e` using the given theorem.
-/
public def Theorem.rewrite (thm : Theorem) (e : Expr) (d : Discharger := dischargeNone) : SimpM Result :=
  /-
  **Note**: We use `withNewMCtxDepth` to ensure auxiliary metavariables used during the `match?`
  do not pollute the metavariable context.
  Thus, we must ensure that all assigned variables have be instantiate.
  -/
  withNewMCtxDepth do
  if let some result ← thm.pattern.match? e then
    -- **Note**: Potential optimization: check whether pattern covers all variables.
    let mut args := result.args.toVector
    let us ← result.us.mapM instantiateLevelMVars
    -- Track whether any discharger used context-dependent information.
    -- If so, the result is context-dependent: in another context, the discharger
    -- might succeed/fail differently, changing whether the rewrite applies.
    let mut isCD := false
    for h : i in *...args.size do
      let arg := args[i]
      if let .mvar mvarId := arg then
        if (← mvarId.isAssigned) then
          let arg ← instantiateMVarsS arg
          args := args.set i arg
        else
          let decl ← mvarId.getDecl
          match (← d decl.type) with
          | .failed cd =>
            isCD := isCD || cd
            -- Failed to discharge hypothesis.
            return mkRflResultCD isCD
          | .solved val cd =>
            isCD := isCD || cd
            let val ← instantiateMVarsS val
            mvarId.assign val
            args := args.set i val
      else if arg.hasMVar then
        let arg ← instantiateMVarsS arg
        args := args.set i arg
    let proof := mkValue thm.expr thm.pattern us args.toArray
    let rhs   := thm.rhs.instantiateLevelParams thm.pattern.levelParams us
    let rhs   ← share rhs
    let expr  ← instantiateRevBetaS rhs args.toArray
    if isSameExpr e expr then
      return mkRflResultCD isCD
    else if !(← checkPerm thm.perm e expr) then
      return mkRflResultCD isCD
    else
      return .step expr proof (contextDependent := isCD)
  else
    return .rfl
where
  checkPerm (perm : Bool) (e result : Expr) : MetaM Bool := do
    if !perm then return true
    acLt result e

public def Theorems.rewrite (thms : Theorems) (d : Discharger := dischargeNone) : Simproc := fun e => do
  -- Track `cd` across all attempted theorems. If theorem A fails with cd=true
  -- and theorem B succeeds with cd=false, the result is still cd=true: in another
  -- context A might succeed (with higher priority) and produce a different result.
  let mut anyCD := false
  for (thm, numExtra) in thms.getMatchWithExtra e do
    let result ← if numExtra == 0 then
      thm.rewrite e d
    else
      simpOverApplied e numExtra (thm.rewrite · d)
    anyCD := anyCD || result.isContextDependent
    if !result.isRfl then
      return if anyCD && !result.isContextDependent then result.withContextDependent else result
  return mkRflResultCD anyCD

end Lean.Meta.Sym.Simp
