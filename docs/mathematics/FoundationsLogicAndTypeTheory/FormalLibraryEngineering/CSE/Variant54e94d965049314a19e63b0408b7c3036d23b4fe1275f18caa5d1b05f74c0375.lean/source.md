# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CSE.Variant54e94d965049314a19e63b0408b7c3036d23b4fe1275f18caa5d1b05f74c0375

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `754c651d960f95830aa574f33f3c0b581015c8aa` · SHA-256 `c62332470f57e3c28cd0f0b5fbefb2e563c41405dae01024f4a4e4d774b4bb4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/CSE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.ToExpr
public import Lean.Compiler.LCNF.PassManager
public import Lean.Compiler.NeverExtractAttr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba

public section

namespace Lean.Compiler.LCNF

/-! Common Sub-expression Elimination -/

namespace CSE

structure State where
  map   : PHashMap Expr FVarId := {}
  subst : FVarSubst .pure := {}

abbrev M := StateRefT State CompilerM

instance : MonadFVarSubst M .pure false where
  getSubst := return (← get).subst

instance : MonadFVarSubstState M .pure where
  modifySubst f := modify fun s => { s with subst := f s.subst }

@[inline] def getSubst : M (FVarSubst .pure) :=
  return (← get).subst

@[inline] def addEntry (value : Expr) (fvarId : FVarId) : M Unit :=
  modify fun s => { s with map := s.map.insert value fvarId }

@[inline] def withNewScope (x : M α) : M α := do
  let map := (← get).map
  try x finally modify fun s => { s with map }

def replaceLet (decl : LetDecl .pure) (fvarId : FVarId) : M Unit := do
  eraseLetDecl decl
  addFVarSubst decl.fvarId fvarId

def replaceFun (decl : FunDecl .pure) (fvarId : FVarId) : M Unit := do
  eraseFunDecl decl
  addFVarSubst decl.fvarId fvarId

def hasNeverExtract (v : LetValue .pure) : CompilerM Bool :=
  match v with
  | .const declName .. =>
    return hasNeverExtractAttribute (← getEnv) declName
  | .lit _ | .erased | .proj .. | .fvar .. =>
    return false

partial def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant1efda608d02c1e4cc2157ec83fe2d6f101da7a0b076e217d2cf843f5216f3cba.Lean.Compiler.LCNF.Code.cse (shouldElimFunDecls : Bool) (code : Code .pure) :
    CompilerM (Code .pure) :=
  go code |>.run' {}
where
  goFunDecl (decl : FunDecl .pure) : M (FunDecl .pure) := do
    let type ← normExpr decl.type
    let params ← normParams decl.params
    let value ← withNewScope do go decl.value
    decl.update type params value

  go (code : Code .pure) : M (Code .pure) := do
    match code with
    | .let decl k =>
      let decl ← normLetDecl decl
      if (← hasNeverExtract decl.value) then
        return code.updateLet! decl (← go k)
      else
        -- We only apply CSE to pure code
        let key := decl.value.toExpr
        match (← get).map.find? key with
        | some fvarId =>
          replaceLet decl fvarId
          go k
        | none =>
          addEntry key decl.fvarId
          return code.updateLet! decl (← go k)
    | .fun decl k =>
      let decl ← goFunDecl decl
      if shouldElimFunDecls then
        let value := decl.toExpr
        match (← get).map.find? value with
        | some fvarId' =>
          replaceFun decl fvarId'
          go k
        | none =>
          addEntry value decl.fvarId
          return code.updateFun! decl (← go k)
      else
        return code.updateFun! decl (← go k)
    | .jp decl k =>
      let decl ← goFunDecl decl
      /-
       We currently don't eliminate common join points because we want to prevent
       jumps to out-of-scope join points.
      -/
      return code.updateFun! decl (← go k)
    | .cases c =>
      withNormFVarResult (← normFVar c.discr) fun discr => do
        let resultType ← normExpr c.resultType
        let alts ← c.alts.mapMonoM fun alt => do
          match alt with
          | .alt _ ps k => withNewScope do
            return alt.updateAlt! (← normParams ps) (← go k)
          | .default k => withNewScope do return alt.updateCode (← go k)
        return code.updateCases! resultType discr alts
    | .return fvarId => withNormFVarResult (← normFVar fvarId) fun fvarId => return code.updateReturn! fvarId
    | .jmp fvarId args => withNormFVarResult (← normFVar fvarId) fun fvarId => return code.updateJmp! fvarId (← normArgs args)
    | .unreach .. => return code

end CSE

/--
Common sub-expression elimination
-/
def Decl.cse (shouldElimFunDecls : Bool) (decl : Decl .pure) : CompilerM (Decl .pure) := do
  let value ← decl.value.mapCodeM (·.cse shouldElimFunDecls)
  return { decl with value }

def cse (phase : Phase := .base) (shouldElimFunDecls := false) (occurrence := 0) : Pass :=
  phase.withPurityCheck .pure fun h =>
    .mkPerDeclaration `cse phase (h ▸ Decl.cse shouldElimFunDecls) occurrence

builtin_initialize
  registerTraceClass `Compiler.cse (inherited := true)

end Lean.Compiler.LCNF
```
