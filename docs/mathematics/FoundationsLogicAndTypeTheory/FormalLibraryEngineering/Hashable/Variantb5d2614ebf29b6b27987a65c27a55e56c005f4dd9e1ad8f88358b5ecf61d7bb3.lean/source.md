# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hashable.Variantb5d2614ebf29b6b27987a65c27a55e56c005f4dd9e1ad8f88358b5ecf61d7bb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67feeac992d48d8e583b154bc6c87b0fbc01f1ea` · SHA-256 `e876b3cfc4b1ee97c395dabfa315ce7c286846d5241f3dcbd2e3816709d67536`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkHashableHeader.Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkHashableHeader.Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Deriving/Hashable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dany Fabian
-/
module

prelude
public import Lean.Meta.Inductive
public import Lean.Elab.Deriving.Basic
public import Lean.Elab.Deriving.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkHashableHeader.Variantf24a7c0be61ac775240f9fab7f7fa87eedee61999b1fb10781532144436e50fa

public section

namespace Lean.Elab.Deriving.Hashable
open Command
open Lean.Parser.Term
open Meta

def mkHashableHeader (indVal : InductiveVal) : TermElabM Header := do
  mkHeader `Hashable 1 indVal

def mkMatch (ctx : Context) (header : Header) (indVal : InductiveVal) : TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where

  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let mut alts := #[]
    let mut ctorIdx := 0
    let allIndVals := indVal.all.toArray
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let alt ← forallTelescopeReducing ctorInfo.type fun xs _ => do
        let mut patterns := #[]
        -- add `_` pattern for indices
        for _ in *...indVal.numIndices do
          patterns := patterns.push (← `(_))
        let mut ctorArgs := #[]
        let mut rhs ← `($(quote ctorIdx))
        -- add `_` for inductive parameters, they are inaccessible
        for _ in *...indVal.numParams do
          ctorArgs := ctorArgs.push (← `(_))
        for i in *...ctorInfo.numFields do
          let x := xs[indVal.numParams + i]!
          let a := mkIdent (← mkFreshUserName `a)
          ctorArgs := ctorArgs.push a
          let xTy ← whnf (← inferType x)
          match xTy.getAppFn with
          | .const declName .. =>
            match allIndVals.findIdx? (· == declName) with
            | some x => rhs ← `(mixHash $rhs ($(mkIdent ctx.auxFunNames[x]!) $a:ident))
            | none => rhs ← `(mixHash $rhs (hash $a:ident))
          | _ => rhs ← `(mixHash $rhs (hash $a:ident))
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs:term*))
        `(matchAltExpr| | $[$patterns:term],* => $rhs:term)
      alts := alts.push alt
      ctorIdx := ctorIdx + 1
    return alts

def mkAuxFunction (ctx : Context) (i : Nat) : TermElabM Command := do
  let auxFunName := ctx.auxFunNames[i]!
  let indVal     := ctx.typeInfos[i]!
  let header     ← mkHashableHeader indVal
  let mut body   ← mkMatch ctx header indVal
  if ctx.usePartial then
    let letDecls ← mkLocalInstanceLetDecls ctx `Hashable header.argNames
    body ← mkLet letDecls body
  let binders    := header.binders
  if ctx.usePartial then
    -- TODO(Dany): Get rid of this code branch altogether once we have well-founded recursion
    `(partial def $(mkIdent auxFunName):ident $binders:bracketedBinder* : UInt64 := $body:term)
  else
    `(@[no_expose] def $(mkIdent auxFunName):ident $binders:bracketedBinder* : UInt64 := $body:term)

def mkHashFuncs (ctx : Context) : TermElabM Syntax := do
  let mut auxDefs := #[]
  for i in *...ctx.typeInfos.size do
    auxDefs := auxDefs.push (← mkAuxFunction ctx i)
  `(mutual $auxDefs:command* end)

private def mkHashableInstanceCmds (declName : Name) : TermElabM (Array Syntax) := do
  let ctx ← mkContext ``Hashable "hash" declName
  let cmds := #[← mkHashFuncs ctx] ++ (← mkInstanceCmds ctx `Hashable #[declName])
  trace[Elab.Deriving.hashable] "\n{cmds}"
  return cmds

def mkHashableHandler (declNames : Array Name) : CommandElabM Bool := do
  withoutExporting do  -- This deriving handler handles visibility of generated decls syntactically
  if (← declNames.allM isInductive)  then
    for declName in declNames do
      withoutExposeFromCtors declName do
        let cmds ← liftTermElabM <| mkHashableInstanceCmds declName
        cmds.forM elabCommand
    return true
  else
    return false

builtin_initialize
  registerDerivingHandler ``Hashable mkHashableHandler
  registerTraceClass `Elab.Deriving.hashable
```
