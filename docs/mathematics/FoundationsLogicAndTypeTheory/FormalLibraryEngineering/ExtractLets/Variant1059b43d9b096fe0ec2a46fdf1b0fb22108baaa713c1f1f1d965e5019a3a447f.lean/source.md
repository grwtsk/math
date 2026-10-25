# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLets.Variant1059b43d9b096fe0ec2a46fdf1b0fb22108baaa713c1f1f1d965e5019a3a447f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf13d3c72d376d3e9da2f76307a5a9098b06dc63` · SHA-256 `47a12f95edca332187b691589924d1ba2c6541e36341b3cbb56ee0dae11f1fe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdExtractLetsAt.Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LeanMVarIdExtractLetsAt.Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/ExtractLets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Tactic.Basic

/-!
# The `extract_lets at` tactic

This module defines a tactic `extract_lets ... at h` that can be used to (in essence) do `cases`
on a `let` expression.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanMVarIdExtractLetsAt.Varianta5423380e05f4ba296ac4b6c07559620f502a5dd4a03b9eedbff0ba8d860240a

open Lean Elab Parser Meta Tactic

/-- Given a local hypothesis whose type is a `let` expression, then lift the `let` bindings to be
a new local definition. -/
def Lean.MVarId.extractLetsAt (mvarId : MVarId) (fvarId : FVarId) (names : Array Name) :
    MetaM (Array FVarId × MVarId) := do
  mvarId.checkNotAssigned `extractLetAt
  mvarId.withReverted #[fvarId] fun mvarId fvarIds => mvarId.withContext do
    let mut mvarId := mvarId
    let mut fvarIds' := #[]
    for name in names do
      let ty ← Lean.instantiateMVars (← mvarId.getType)
      mvarId ← match ty with
        | .letE n t v b ndep => process mvarId t (.letE n · v b ndep)
        | .forallE n t v b   => process mvarId t (.forallE n · v b)
        | _ => throwTacticEx `extractLetAt mvarId "unexpected auxiliary target"
      let (fvarId', mvarId') ← mvarId.intro name
      fvarIds' := fvarIds'.push fvarId'
      mvarId := mvarId'
    return (fvarIds', fvarIds.map .some, mvarId)
where
  /-- Check that `t` is a `let` and then do what's necessary to lift it over the binding
  described by `mk`. -/
  process (mvarId : MVarId) (t : Expr) (mk : Expr → Expr) : MetaM MVarId := do
    let .letE n' t' v' b' _ := t.cleanupAnnotations
      | throwTacticEx `extractLetAt mvarId "insufficient number of `let` expressions"
    -- Lift the let
    withLetDecl n' t' v' fun fvar => do
      let b' := b'.instantiate1 fvar
      let ty' ← mkLetFVars #[fvar] <| mk b'
      mvarId.change ty'

/-- Counts the immediate depth of a nested `let` expression. -/
def Lean.Expr.letDepth : Expr → Nat
  | .letE _ _ _ b _ => b.letDepth + 1
  | _ => 0

/-- A more limited version of `Lean.MVarId.introN` that ensures the goal is a
nested `let` expression. -/
def Lean.MVarId.extractLets (mvarId : MVarId) (names : Array Name) :
    MetaM (Array FVarId × MVarId) :=
  mvarId.withContext do
    let ty := (← Lean.instantiateMVars (← mvarId.getType)).cleanupAnnotations
    if ty.letDepth < names.size then
      throwTacticEx `extractLet mvarId "insufficient number of `let` expressions"
    mvarId.introN names.size names.toList

namespace Mathlib

/-- The `extract_lets at h` tactic takes a local hypothesis of the form `h : let x := v; b`
and introduces a new local definition `x := v` while changing `h` to be `h : b`.  It can be thought
of as being a `cases` tactic for `let` expressions. It can also be thought of as being like
`intros at h` for `let` expressions.

For example, if `h : let x := 1; x = x`, then `extract_lets x at h` introduces `x : Nat := 1` and
changes `h` to `h : x = x`.

Just like `intros`, the `extract_lets` tactic either takes a list of names, in which case
that specifies the number of `let` bindings that must be extracted, or it takes no names, in which
case all the `let` bindings are extracted.

The tactic `extract_let at ⊢` is a weaker form of `intros` that only introduces obvious `let`s. -/
syntax (name := extractLets) "extract_lets " (colGt (ident <|> hole))* (ppSpace location) : tactic

@[tactic Mathlib.extractLets] def evalExtractLet : Tactic := fun stx => do
  match stx with
  | `(tactic| extract_lets $loc:location)         => doExtract none loc
  | `(tactic| extract_lets $hs* $loc:location)    => doExtract hs loc
  | _ => throwUnsupportedSyntax
where
  setupNames (ids? : Option (TSyntaxArray [`ident, `Lean.Parser.Term.hole])) (ty : Expr) :
      MetaM (Array Name) := do
    if let some ids := ids? then
      return ids.map getNameOfIdent'
    else
      return Array.mkArray (← instantiateMVars ty).cleanupAnnotations.letDepth `_
  doExtract (ids? : Option (TSyntaxArray [`ident, `Lean.Parser.Term.hole]))
      (loc : TSyntax `Lean.Parser.Tactic.location) :
      TacticM Unit := do
    let process (f : MVarId → Array Name → MetaM (Array FVarId × MVarId))
        (ty : MVarId → MetaM Expr) : TacticM Unit := do
      let fvarIds ← liftMetaTacticAux fun mvarId => do
        let ids ← setupNames ids? (← ty mvarId)
        let (fvarIds, mvarId) ← f mvarId ids
        return (fvarIds, [mvarId])
      if let some ids := ids? then
        withMainContext do
          for stx in ids, fvarId in fvarIds do
            Term.addLocalVarInfo stx (.fvar fvarId)
    withLocation (expandOptLocation (mkOptionalNode loc))
      (atLocal := fun h ↦ do
        process (fun mvarId ids => mvarId.extractLetsAt h ids) (fun _ => h.getType))
      (atTarget := do
        process (fun mvarId ids => mvarId.extractLets ids) (fun mvarId => mvarId.getType))
      (failed := fun _ ↦ throwError "extract_let tactic failed")

end Mathlib
```
