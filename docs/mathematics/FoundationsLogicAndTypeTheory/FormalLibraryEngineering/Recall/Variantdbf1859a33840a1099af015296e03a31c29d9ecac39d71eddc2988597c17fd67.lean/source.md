# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Recall.Variantdbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c79752242fc873a324b59855ae9efda4278b44ec` · SHA-256 `dbf1859a33840a1099af015296e03a31c29d9ecac39d71eddc2988597c17fd67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
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
