# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Renaming.Variant09b0283dd50f4040717c2ef4217f257db41896037b9daf4da2c297614dd1e3f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e80c5c0fa4f17d8844ada18fa58d4a6e926c3aa` · SHA-256 `f29607db29bf6ff0bb5711ee4e94dc38f1bd493c61934abf5dcfe0703c3b4660`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Renaming.Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Renaming.Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Renaming.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Renaming.Variant5881b702fd37769328873ccee9f8c97808c54edfc8bdf3b713f1e601e2352ef4

public section

namespace Lean.Compiler.LCNF
/--
A mapping from free variable id to binder name.
-/
abbrev Renaming := FVarIdMap Name

def Param.applyRenaming (param : Param pu) (r : Renaming) : CompilerM (Param pu) := do
  if let some binderName := r.get? param.fvarId then
    let param := { param with binderName }
    modifyLCtx fun lctx => lctx.addParam param
    return param
  else
    return param

def LetDecl.applyRenaming (decl : LetDecl pu) (r : Renaming) : CompilerM (LetDecl pu) := do
  if let some binderName := r.get? decl.fvarId then
    let decl := { decl with binderName }
    modifyLCtx fun lctx => lctx.addLetDecl decl
    return decl
  else
    return decl

mutual
partial def FunDecl.applyRenaming (decl : (FunDecl pu)) (r : Renaming) : CompilerM (FunDecl pu) := do
  if let some binderName := r.get? decl.fvarId then
    let decl := decl.updateBinderName binderName
    modifyLCtx fun lctx => lctx.addFunDecl decl
    decl.updateValue (← decl.value.applyRenaming r)
  else
    decl.updateValue (← decl.value.applyRenaming r)

partial def Code.applyRenaming (code : Code pu) (r : Renaming) : CompilerM (Code pu) := do
  match code with
  | .let decl k => return code.updateLet! (← decl.applyRenaming r) (← k.applyRenaming r)
  | .fun decl k _ | .jp decl k => return code.updateFun! (← decl.applyRenaming r) (← k.applyRenaming r)
  | .cases c =>
    let alts ← c.alts.mapMonoM fun alt =>
      match alt with
      | .default k => return alt.updateCode (← k.applyRenaming r)
      | .alt _ ps k _ => return alt.updateAlt! (← ps.mapMonoM (·.applyRenaming r)) (← k.applyRenaming r)
      | .ctorAlt _ k _ => return alt.updateCode (← k.applyRenaming r)
    return code.updateAlts! alts
  | .jmp .. | .unreach .. | .return .. => return code
  | .oset (k := k) .. | .sset (k := k) .. | .uset (k := k) .. | .inc (k := k) .. | .dec (k := k) ..
  | .del (k := k) .. | .setTag (k := k) .. =>
    return code.updateCont! (← k.applyRenaming r)
end

def Decl.applyRenaming (decl : Decl pu) (r : Renaming) : CompilerM (Decl pu) := do
  if r.isEmpty then
    return decl
  else
    let params ← decl.params.mapMonoM (·.applyRenaming r)
    let value ← decl.value.mapCodeM (·.applyRenaming r)
    return { decl with params, value }

end Lean.Compiler.LCNF
```
