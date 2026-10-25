# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElimDead.Variant64943eb47d74270712f4bf65abb0a92360b16875cd35aa9c94b44e942155cff1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0226cbf98f006b92c938f14c6ed963e87c3bf0c8` · SHA-256 `c14c9a80a784a0a56c21898d88ecef58e3999d7d3bbc18a6f331af39404c8bc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UsedLocalDecls.Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UsedLocalDecls.Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/ElimDead.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.PassManager

/-!
This module implements a pass that does a syntactic use-def check for all let/fun/jp bindings and
removes them if they are unused. Note that in impure mode not all unused let bindings can be removed safely
so we opt for a safe subset.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UsedLocalDecls.Variantc5a22e15eab79ebd6ef1e8f302095c69aeaccb12275f7468b505b03cde97a582

namespace Lean.Compiler.LCNF

-- This is sometimes used non-linearly, so use a tree set instead of a hash set.
public abbrev UsedLocalDecls := FVarIdSet

/--
Collect set of (let) free variables in a LCNF value.
This code exploits the LCNF property that local declarations do not occur in types.
-/
def collectLocalDeclsArg (s : UsedLocalDecls) (arg : Arg pu) : UsedLocalDecls :=
  match arg with
  | .fvar fvarId => s.insert fvarId
  -- Locally declared variables do not occur in types.
  | .type _ _ | .erased => s

def collectLocalDeclsArgs (s : UsedLocalDecls) (args : Array (Arg pu)) : UsedLocalDecls :=
  args.foldl (init := s) collectLocalDeclsArg

def collectLocalDeclsLetValue (s : UsedLocalDecls) (e : LetValue pu) : UsedLocalDecls :=
  match e with
  | .erased  | .lit .. => s
  | .proj _ _ fvarId _ | .reset _ fvarId _ | .sproj _ _ fvarId _ | .uproj _ fvarId _
  | .oproj _ fvarId _ | .box _ fvarId _ | .unbox fvarId _ | .isShared fvarId _ => s.insert fvarId
  | .const _ _ args _ => collectLocalDeclsArgs s args
  | .fvar fvarId args | .reuse fvarId _ _ args _   => collectLocalDeclsArgs (s.insert fvarId) args
  | .fap _ args _ | .pap _ args _ | .ctor _ args _ => collectLocalDeclsArgs s args

abbrev M := StateRefT UsedLocalDecls CompilerM

abbrev collectArgM (arg : Arg pu) : M Unit :=
  modify (collectLocalDeclsArg · arg)

abbrev collectLetValueM (e : LetValue pu) : M Unit :=
  modify (collectLocalDeclsLetValue · e)

abbrev collectFVarM (fvarId : FVarId) : M Unit :=
  modify (·.insert fvarId)

def LetValue.safeToElim (val : LetValue pu) : Bool :=
  match pu with
  | .pure => true
  | .impure =>
    match val with
    | .ctor .. | .reset .. | .reuse .. | .oproj .. | .uproj .. | .sproj .. | .lit .. | .pap ..
    | .box .. | .unbox .. | .erased .. | .isShared .. => true
    -- 0-ary full applications are considered constants
    | .fap _ args => args.isEmpty
    | .fvar .. => false

mutual

partial def visitFunDecl (funDecl : FunDecl pu) : M (FunDecl pu) := do
  let value ← funDecl.value.elimDead
  funDecl.updateValue value

partial def Code.elimDead (code : Code pu) : M (Code pu) := do
  match code with
  | .let decl k =>
    let k ← k.elimDead
    if (← get).contains decl.fvarId || !decl.value.safeToElim then
      /- Remark: we don't need to collect `decl.type` because LCNF local declarations do not occur in types. -/
      collectLetValueM decl.value
      return code.updateCont! k
    else
      eraseLetDecl decl
      return k
  | .fun decl k _ | .jp decl k =>
    let k ← k.elimDead
    if (← get).contains decl.fvarId then
      let decl ← visitFunDecl decl
      return code.updateFun! decl k
    else
      eraseFunDecl decl
      return k
  | .cases c =>
    let alts ← c.alts.mapMonoM fun alt => return alt.updateCode (← alt.getCode.elimDead)
    collectFVarM c.discr
    return code.updateAlts! alts
  | .return fvarId => collectFVarM fvarId; return code
  | .jmp fvarId args => collectFVarM fvarId; args.forM collectArgM; return code
  | .unreach .. => return code
  | .oset fvarId _ y k _ =>
    let k ← k.elimDead
    if (← get).contains fvarId then
      collectArgM y
      return code.updateCont! k
    else
      return k
  | .uset fvarId _ y k _ | .sset fvarId _ _ y _ k _ =>
    let k ← k.elimDead
    if (← get).contains fvarId then
      collectFVarM y
      return code.updateCont! k
    else
      return k
  | .inc (fvarId := fvarId) (k := k) .. | .dec (fvarId := fvarId) (k := k) ..
  | .setTag (fvarId := fvarId) (k := k) .. | .del (fvarId := fvarId) (k := k) .. =>
    let k ← k.elimDead
    collectFVarM fvarId
    return code.updateCont! k

end

public def Decl.elimDeadVars (decl : Decl pu) : CompilerM (Decl pu) := do
  return { decl with value := (← decl.value.mapCodeM fun code => code.elimDead.run' {}) }

public def elimDeadVars (phase : Phase)  (occurrence : Nat) : Pass :=
  Pass.mkPerDeclaration `elimDeadVars phase Decl.elimDeadVars occurrence

builtin_initialize
  registerTraceClass `Compiler.elimDeadVars (inherited := true)

end Lean.Compiler.LCNF
```
