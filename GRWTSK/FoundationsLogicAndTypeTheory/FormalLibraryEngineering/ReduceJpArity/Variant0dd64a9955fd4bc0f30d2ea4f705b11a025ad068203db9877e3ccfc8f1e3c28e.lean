-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceM.Variant0d68e0205b5f6f89bfe6566c11d643d75a4f786c0883a47a03210189691c9c3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d68e0205b5f6f89bfe6566c11d643d75a4f786c0883a47a03210189691c9c3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ReduceM.Variant0d68e0205b5f6f89bfe6566c11d643d75a4f786c0883a47a03210189691c9c3d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0d68e0205b5f6f89bfe6566c11d643d75a4f786c0883a47a03210189691c9c3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/ReduceJpArity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.InferType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReduceM.Variant0d68e0205b5f6f89bfe6566c11d643d75a4f786c0883a47a03210189691c9c3d

public section

namespace Lean.Compiler.LCNF
/-!
Join point arity reduction.
-/
namespace ReduceJpArity

abbrev ReduceM := ReaderT (FVarIdMap (Array Bool)) CompilerM

partial def reduce (code : Code .pure) : ReduceM (Code .pure) := do
  match code with
  | .let decl k => return code.updateLet! decl (← reduce k)
  | .fun decl k =>
    let value ← reduce decl.value
    let decl ← decl.update' decl.type value
    return code.updateFun! decl (← reduce k)
  | .jp decl k =>
    let value ← reduce decl.value
    let mut used := value.collectUsed
    let mut mask := #[]
    let mut paramsNew := #[]
    for param in decl.params.reverse do
      if used.contains param.fvarId then
        used := collectUsedAtExpr used param.type
        mask := mask.push true
        paramsNew := paramsNew.push param
      else
        eraseParam param
        mask := mask.push false
    mask := mask.reverse
    paramsNew := paramsNew.reverse
    if paramsNew.size != decl.params.size then
      let type ← mkForallParams paramsNew (← value.inferType)
      let decl ← decl.update type paramsNew value
      let k ← withReader (·.insert decl.fvarId mask) (reduce k)
      return .jp decl k
    else
      let decl ← decl.update' decl.type value
      return code.updateFun! decl (← reduce k)
  | .cases c =>
    let alts ← c.alts.mapMonoM fun alt => return alt.updateCode (← reduce alt.getCode)
    return code.updateAlts! alts
  | .return .. | .unreach .. => return code
  | .jmp fvarId args =>
    if let some mask := (← read).get? fvarId then
      let mut argsNew := #[]
      for keep in mask, arg in args do
        if keep then
          argsNew := argsNew.push arg
      return .jmp fvarId argsNew
    else
      return code

end ReduceJpArity

open ReduceJpArity

/--
Try to reduce arity of join points
-/
def Decl.reduceJpArity (decl : Decl .pure) : CompilerM (Decl .pure) := do
  let value ← decl.value.mapCodeM reduce |>.run {}
  return { decl with value }

-- TODO: This can be made Purity generic
def reduceJpArity (phase := Phase.base) : Pass :=
  phase.withPurityCheck .pure fun h =>
    .mkPerDeclaration `reduceJpArity phase (h ▸ Decl.reduceJpArity)

builtin_initialize
  registerTraceClass `Compiler.reduceJpArity (inherited := true)

end Lean.Compiler.LCNF
