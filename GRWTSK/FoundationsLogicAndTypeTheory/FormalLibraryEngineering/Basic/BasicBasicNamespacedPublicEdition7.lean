-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindFunDeclPrime.Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FindFunDeclPrime.Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindFunDeclPrime.Variant5f10c709b6b01f0067a485b6b511e7aad3da82c00c51f791f02a6635e8572530

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Similar to `findFunDecl?`, but follows aliases (i.e., `let _x.i := _x.j`).
Consider the following example
```
fun _f.1 ... := ...
let _x.2 := _f.1
```
`findFunDecl? _x.2` returns `none`, but `findFunDecl'? _x.2` returns the declaration for `_f.1`.
-/
partial def findFunDecl'? (fvarId : FVarId) : CompilerM (Option (FunDecl pu)) := do
  if let some decl ← findFunDecl? (pu := pu) fvarId then
    return decl
  else if let some (.fvar fvarId' #[]) ← findLetValue? (pu := pu) fvarId then
    findFunDecl'? fvarId'
  else
    return none

/-
-- TODO: cleanup
partial def findExpr (e : LetValue) : CompilerM LetValue := do
  match e with
  | .fvar fvarId args =>
    if args.isEmpty then
      let some decl ← findLetDecl? fvarId | return e
      findExpr decl.value
    else
      return e
  | _ => return e
-/
end Simp
end Lean.Compiler.LCNF
