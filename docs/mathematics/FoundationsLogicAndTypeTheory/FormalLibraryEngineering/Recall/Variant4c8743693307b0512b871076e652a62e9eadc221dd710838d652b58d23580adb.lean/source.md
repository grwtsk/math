# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recall.Variant4c8743693307b0512b871076e652a62e9eadc221dd710838d652b58d23580adb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71cd4e8644f933e3285ff39f784e2581a5f7f96b` · SHA-256 `cd5e8968b3b740a1d7b6716099073ea3037aba80ecb6e785a83be75206c94f44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianteeb27e937ca476d9551c7838a0156afb20c6b6ca2b8998a26ea2b1f2ed7589aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eeb27e937ca476d9551c7838a0156afb20c6b6ca2b8998a26ea2b1f2ed7589aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Varianteeb27e937ca476d9551c7838a0156afb20c6b6ca2b8998a26ea2b1f2ed7589aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eeb27e937ca476d9551c7838a0156afb20c6b6ca2b8998a26ea2b1f2ed7589aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Recall.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone, Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.Command
import Lean.Elab.DeclUtil

/-!
# `recall` command
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianteeb27e937ca476d9551c7838a0156afb20c6b6ca2b8998a26ea2b1f2ed7589aa

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
          let err := m!"\
            value mismatch{indentExpr declConst}\nhas value{indentExpr newVal}\n\
            but is expected to have value{indentExpr infoVal}"
          throwErrorAt val err
    else
      let (binders, type?) := expandOptDeclSig sig
      if let some type := type? then
        runTermElabM fun vars => do
          withAutoBoundImplicit do
            elabBinders binders.getArgs fun xs => do
              let xs ← addAutoBoundImplicits xs none
              let type ← elabType type
              Term.synthesizeSyntheticMVarsNoPostponing
              let type ← mkForallFVars xs type
              let type ← mkForallFVars vars type (usedOnly := true)
              unless (← isDefEq info.type type) do
                throwTypeMismatchError none info.type type declConst
      else
        unless binders.getNumArgs == 0 do
          throwError "expected type after ':'"

end Mathlib.Tactic.Recall
````
