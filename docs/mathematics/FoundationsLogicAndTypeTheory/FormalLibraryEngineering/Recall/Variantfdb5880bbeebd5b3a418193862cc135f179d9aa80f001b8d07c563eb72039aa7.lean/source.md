# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recall.Variantfdb5880bbeebd5b3a418193862cc135f179d9aa80f001b8d07c563eb72039aa7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d381f34d0d250e7a311cda16a3b0156229ffd8f1` · SHA-256 `3f0f1207fceb32751d9344cf174cbdb5ac1c7ce157a233b18905c5b257bfaa6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MutualDef.Variantdbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MutualDef.Variantdbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Recall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone, Kyle Miller
-/
import Lean.Elab.MutualDef
import Std.Tactic.OpenPrivate

/-!
# `recall` command
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MutualDef.Variantdbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67

namespace Mathlib.Tactic.Recall

/--
The `recall` command redeclares a previous definition for illustrative purposes.
This can be useful for files that give an expository account of some theory in Lean.

The syntax of the command mirrors `def`, so all the usual bells and whistles work.
```
recall List.cons_append (a : α) (as bs : List α) : (a :: as) ++ bs = a :: (as ++ bs) := rfl
```
Also, one can leave out the body.
```
recall Nat.add_comm (n m : Nat) : n + m = m + n
```

The command verifies that the new definition type-checks and that the type and value
provided are definitionally equal to the original declaration. However, this does not
capture some details (like binders), so the following works without error.
```
recall Nat.add_comm {n m : Nat} : n + m = m + n
```
-/
syntax (name := recall) "recall " ident ppIndent(optDeclSig) (declVal)? : command

open Lean Meta Elab Command Term
open private elabHeaders from Lean.Elab.MutualDef

elab_rules : command
  | `(recall $id $sig:optDeclSig $[$val?]?) => withoutModifyingEnv do
    let declName := id.getId
    let some info := (← getEnv).find? declName
      | throwError "unknown constant '{declName}'"
    let declConst : Expr := mkConst declName <| info.levelParams.map Level.param
    discard <| liftTermElabM <| addTermInfo id declConst
    let newId := mkIdentFrom id (← mkAuxName declName 1)
    if let some val := val? then
      let some infoVal := info.value?
        | throwErrorAt val "constant '{declName}' has no defined value"
      elabCommand <| ← `(noncomputable def $newId $sig:optDeclSig $val)
      let some newInfo := (← getEnv).find? newId.getId | return -- def already threw
      liftTermElabM do
        let mvs ← newInfo.levelParams.mapM fun _ => mkFreshLevelMVar
        let newType := newInfo.type.instantiateLevelParams newInfo.levelParams mvs
        unless (← isDefEq info.type newType) do
          throwTypeMismatchError none info.type newInfo.type declConst
        let newVal := newInfo.value?.get!.instantiateLevelParams newInfo.levelParams mvs
        unless (← isDefEq infoVal newVal) do
          let err :=
            m!"value mismatch{indentExpr declConst}\nhas value{indentExpr newVal}\n" ++
            m!"but is expected to have value{indentExpr infoVal}"
          throwErrorAt val err
    else
      let (binders, type?) := expandOptDeclSig sig
      let views := #[{
        declId := newId, binders, type?, value := .missing,
        ref := ← getRef, kind := default, modifiers := {}
      : DefView}]
      liftTermElabM do
        let elabView := (← elabHeaders views)[0]!
        unless (← isDefEq info.type elabView.type) do
          throwTypeMismatchError none info.type elabView.type declConst
````
