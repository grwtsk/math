# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowUnused.Variantb56fdf81e04b987b2d3140187e70f60da2b4a97b0a4f3472c2f1ec19515a0b0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2adaae665f722724c4f30b3aa91e0a49542d223` · SHA-256 `3ea114f9c4d68006dc43591afd295e9ad763d60eb67341ea90c37f759966adde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visit.Variantc7d2e58d886e9448a9ec91edf3b69b472caa492a88d2d27a66cd71908988e117","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7d2e58d886e9448a9ec91edf3b69b472caa492a88d2d27a66cd71908988e117","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Visit.Variantc7d2e58d886e9448a9ec91edf3b69b472caa492a88d2d27a66cd71908988e117","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c7d2e58d886e9448a9ec91edf3b69b472caa492a88d2d27a66cd71908988e117","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/ShowUnused.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Util.FoldConsts
public meta import Lean.Linter.UnusedVariables


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Visit.Variantc7d2e58d886e9448a9ec91edf3b69b472caa492a88d2d27a66cd71908988e117

public meta section

/-!
# The `#show_unused` command

`#show_unused decl1 decl2 ..` will highlight every theorem or definition in the current file
not involved in the definition of declarations `decl1`, `decl2`, etc. The result is shown
both in the message on `#show_unused`, as well as on the declarations themselves.
-/

namespace Batteries.Tactic.ShowUnused
open Lean Elab Command

variable (env : Environment) in
private partial def visit (n : Name) : StateM NameSet Unit := do
  if (← get).contains n then
    modify (·.erase n)
    let rec visitExpr (e : Expr) : StateM NameSet Unit := e.getUsedConstants.forM visit
    match env.find? n with
    | some (ConstantInfo.axiomInfo v)  => visitExpr v.type
    | some (ConstantInfo.defnInfo v)   => visitExpr v.type *> visitExpr v.value
    | some (ConstantInfo.thmInfo v)    => visitExpr v.type *> visitExpr v.value
    | some (ConstantInfo.opaqueInfo v) => visitExpr v.type *> visitExpr v.value
    | some (ConstantInfo.quotInfo _)   => pure ()
    | some (ConstantInfo.ctorInfo v)   => visitExpr v.type
    | some (ConstantInfo.recInfo v)    => visitExpr v.type
    | some (ConstantInfo.inductInfo v) => visitExpr v.type *> v.ctors.forM visit
    | none                             => pure ()

/--
`#show_unused decl1 decl2 ..` will highlight every theorem or definition in the current file
not involved in the definition of declarations `decl1`, `decl2`, etc. The result is shown
both in the message on `#show_unused`, as well as on the declarations themselves.
```
def foo := 1
def baz := 2
def bar := foo
#show_unused bar -- highlights `baz`
```
-/
elab tk:"#show_unused" ids:(ppSpace colGt ident)* : command => do
  let ns ← ids.mapM fun s => liftCoreM <| realizeGlobalConstNoOverloadWithInfo s
  let env ← getEnv
  let decls := env.constants.map₂.foldl (fun m n _ => m.insert n) {}
  let mut unused := #[]
  let fileMap ← getFileMap
  for c in ((ns.forM (visit env)).run decls).2 do
    if let some { selectionRange := range, .. } := declRangeExt.find? env c then
      unused := unused.push (c, {
        start := fileMap.ofPosition range.pos
        stop := fileMap.ofPosition range.endPos
      })
  unused := unused.qsort (·.2.start < ·.2.start)
  let pos := fileMap.toPosition <| (tk.getPos? <|> (← getRef).getPos?).getD 0
  let pfx := m!"#show_unused (line {pos.line}) says:\n"
  let post := m!" is not used transitively by \
    {← ns.mapM (MessageData.ofConst <$> mkConstWithLevelParams ·)}"
  for (c, range) in unused do
    logWarningAt (Syntax.ofRange range) <|
      .tagged Linter.linter.unusedVariables.name <|
        m!"{pfx}{MessageData.ofConst (← mkConstWithLevelParams c)}{post}"
  if unused.isEmpty then
    logInfoAt tk "No unused definitions"
  else
    logWarningAt tk <| m!"unused definitions in this file:\n" ++
      m!"\n".joinSep (← unused.toList.mapM (toMessageData <$> mkConstWithLevelParams ·.1))
````
