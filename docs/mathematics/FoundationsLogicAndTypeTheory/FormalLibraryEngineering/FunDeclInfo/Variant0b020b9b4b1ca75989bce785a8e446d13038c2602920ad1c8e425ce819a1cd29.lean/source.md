# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunDeclInfo.Variant0b020b9b4b1ca75989bce785a8e446d13038c2602920ad1c8e425ce819a1cd29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5d01e126905498351aded903c8fcc55fc405d5f` · SHA-256 `375266c4be9466b1e5b1e7ec590ec8591972b96499c6da76923f97aa339a6412`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunDeclInfo.Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FunDeclInfo.Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/FunDeclInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Simp.Basic
import Init.Data.Format.Macro


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunDeclInfo.Variantec24eb074cc0ee27d8e9f694f7c43426693518db4a22e4a247fd23ec6f6298fc

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Local function usage information used to decide whether it should be inlined or not.
The information is an approximation, but it is on the "safe" side. That is, if we tagged
a function with `.once`, then it is applied only once. A local function may be marked as
`.many`, but after simplifications the number of applications may reduce to 1. This is not
a big problem in practice because we run the simplifier multiple times, and this information
is recomputed from scratch at the beginning of each simplification step.
-/
inductive FunDeclInfo where
  /--
  Local function is applied once, and must be inlined.
  -/
  | once
  /--
  Local function is applied many times or occur as an argument of another function,
  and will only be inlined if it is small.
  -/
  | many
  /--
  Function must be inlined.
  -/
  | mustInline
  deriving Repr, Inhabited

/--
Local function declaration statistics.
-/
structure FunDeclInfoMap where
  /--
  Mapping from local function name to inlining information.
  -/
  map : Std.HashMap FVarId FunDeclInfo := {}
  deriving Inhabited

def FunDeclInfoMap.format (s : FunDeclInfoMap) : CompilerM Format := do
  let mut result := Format.nil
  for (fvarId, info) in s.map.toList do
    let binderName ← getBinderName fvarId
    result := result ++ "\n" ++ f!"{binderName} ↦ {repr info}"
  return result

/--
Add new occurrence for the local function with binder name `key`.
-/
def FunDeclInfoMap.add (s : FunDeclInfoMap) (fvarId : FVarId) : FunDeclInfoMap :=
  match s with
  | { map } =>
    match map[fvarId]? with
    | some .once => { map := map.insert fvarId .many }
    | none       => { map := map.insert fvarId .once }
    | _          => { map }

/--
Add new occurrence for the local function occurring as an argument for another function.
-/
def FunDeclInfoMap.addHo (s : FunDeclInfoMap) (fvarId : FVarId) : FunDeclInfoMap :=
  match s with
  | { map } =>
    match map[fvarId]? with
    | some .once | none => { map := map.insert fvarId .many }
    | _ => { map }

/--
Add new occurrence for the local function with binder name `key`.
-/
def FunDeclInfoMap.addMustInline (s : FunDeclInfoMap) (fvarId : FVarId) : FunDeclInfoMap :=
  match s with
  | { map } => { map := map.insert fvarId .mustInline }

def FunDeclInfoMap.restore (s : FunDeclInfoMap) (fvarId : FVarId) (saved? : Option FunDeclInfo) : FunDeclInfoMap :=
  match s, saved? with
  | { map }, none => { map := map.erase fvarId }
  | { map }, some saved => { map := map.insert fvarId saved }

/--
Traverse `code` and update function occurrence map.
This map is used to decide whether we inline local functions or not.
If `mustInline := true`, then all local function declarations occurring in
`code` are tagged as `.mustInline`.
Recall that we use `.mustInline` for local function declarations occurring in type class instances.
-/
partial def FunDeclInfoMap.update (s : FunDeclInfoMap) (code : Code .pure) (mustInline := false) : CompilerM FunDeclInfoMap := do
  let (_, s) ← go code |>.run s
  return s
where
  addArgOcc (arg : Arg .pure) : StateRefT FunDeclInfoMap CompilerM Unit := do
    match arg with
    | .fvar fvarId =>
      let some funDecl ← findFunDecl'? (pu := .pure) fvarId | return ()
      modify fun s => s.addHo funDecl.fvarId
    | .erased .. | .type .. => return ()

  addLetValueOccs (e : LetValue .pure) : StateRefT FunDeclInfoMap CompilerM Unit := do
    match e with
    | .erased | .lit .. | .proj .. => return ()
    | .const _ _ args => args.forM addArgOcc
    | .fvar fvarId args =>
      let some funDecl ← findFunDecl'? (pu := .pure) fvarId | return ()
      modify fun s => s.add funDecl.fvarId
      args.forM addArgOcc

  go (code : Code .pure) : StateRefT FunDeclInfoMap CompilerM Unit := do
    match code with
    | .let decl k =>
      addLetValueOccs decl.value
      go k
    | .fun decl k =>
      if mustInline then
        modify fun s => s.addMustInline decl.fvarId
      go decl.value; go k
    | .jp decl k => go decl.value; go k
    | .cases c => c.alts.forM fun alt => go alt.getCode
    | .jmp fvarId args =>
      let funDecl ← getFunDecl (pu := .pure) fvarId
      modify fun s => s.add funDecl.fvarId
      args.forM addArgOcc
    | .return .. | .unreach .. => return ()

end Simp
end Lean.Compiler.LCNF
```
