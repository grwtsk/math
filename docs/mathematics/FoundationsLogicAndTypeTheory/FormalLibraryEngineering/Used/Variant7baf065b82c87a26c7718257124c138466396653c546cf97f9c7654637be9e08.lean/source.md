# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Used.Variant7baf065b82c87a26c7718257124c138466396653c546cf97f9c7654637be9e08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `314871f161e5f1358095b913e87e2169dee064a1` · SHA-256 `59fa1ab2caee84b09b46c8d24aa9b152bf8a1811b73229dea5eb31721f737f56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkUsedFVar.Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MarkUsedFVar.Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/Used.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Simp.SimpM
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkUsedFVar.Variantc7cba530ad6d409347f44a76676b5cb771d67b4e6eb308742218bb336d8454d7

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Mark `fvarId` as an used free variable.
This is information is used to eliminate dead local declarations.
-/
def markUsedFVar (fvarId : FVarId) : SimpM Unit :=
  modify fun s => { s with used := s.used.insert fvarId }

/--
Mark all free variables occurring in `arg` as used.
-/
def markUsedArg (arg : Arg .pure) : SimpM Unit :=
  match arg with
  | .fvar fvarId => markUsedFVar fvarId
  -- Locally declared variables do not occur in types.
  | .type _ | .erased => return ()

/--
Mark all free variables occurring in `e` as used.
-/
def markUsedLetValue (e : LetValue .pure) : SimpM Unit := do
  match e with
  | .lit .. | .erased => return ()
  | .proj _ _ fvarId => markUsedFVar fvarId
  | .const _ _ args => args.forM markUsedArg
  | .fvar fvarId args => markUsedFVar fvarId; args.forM markUsedArg

/--
Mark all free variables occurring on the right-hand side of the given let declaration as used.
This is information is used to eliminate dead local declarations.
-/
def markUsedLetDecl (letDecl : LetDecl .pure) : SimpM Unit :=
  markUsedLetValue letDecl.value

mutual
/--
Mark all free variables occurring in `code` as used.
-/
partial def markUsedCode (code : Code .pure) : SimpM Unit := do
  match code with
  | .let decl k => markUsedLetDecl decl; markUsedCode k
  | .jp decl k | .fun decl k => markUsedFunDecl decl; markUsedCode k
  | .return fvarId => markUsedFVar fvarId
  | .unreach .. => return ()
  | .jmp fvarId args => markUsedFVar fvarId; args.forM markUsedArg
  | .cases c => markUsedFVar c.discr; c.alts.forM fun alt => markUsedCode alt.getCode

/--
Mark all free variables occurring in `funDecl` as used.
-/
partial def markUsedFunDecl (funDecl : FunDecl .pure) : SimpM Unit :=
  markUsedCode funDecl.value
end

/--
Return `true` if `fvarId` is in the `used` set.
-/
def isUsed (fvarId : FVarId) : SimpM Bool :=
  return (← get).used.contains fvarId

/--
Attach the given `decls` to `code`. For example, assume `decls` is `#[.let _x.1 := 10, .let _x.2 := true]`,
then the result is
```
let _x.1 := 10
let _x.2 := true
<code>
```
-/
def attachCodeDecls (decls : Array (CodeDecl .pure)) (code : Code .pure) : SimpM (Code .pure) := do
  go decls.size code
where
  go (i : Nat) (code : Code .pure) : SimpM (Code .pure) := do
    if i > 0 then
      let decl := decls[i-1]!
      if (← isUsed decl.fvarId) then
        match decl with
        | .let decl => markUsedLetDecl decl; go (i-1) (.let decl code)
        | .fun decl => markUsedFunDecl decl; go (i-1) (.fun decl code)
        | .jp decl => markUsedFunDecl decl; go (i-1) (.jp decl code)
      else
        eraseCodeDecl decl
        go (i-1) code
    else
      return code
````
