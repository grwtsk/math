# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyAt.Variantd5b5369a6c9b9c59ceeef6372b8eeb94dd829030868b3ddd6215df7874ece56c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52273debcf22e483879265a25acf6132cd9f6f3f` · SHA-256 `94a05cf6198ce9f7aad846b322f633ecc60926896fcab90fecc5d7e7e2710f5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyAtLemma.Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyAtLemma.Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ClickSuggestions/ApplyAt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

public import Mathlib.Tactic.ClickSuggestions.SectionState
public import Mathlib.Tactic.ApplyAt
public meta import Mathlib.Tactic.ClickSuggestions.Util

/-!
# Support for `apply at` suggestions in `#click_suggestions`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyAtLemma.Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c

public meta section

namespace Mathlib.Tactic.ClickSuggestions

open Lean Meta ProofWidgets Jsx

/-- The structure for `apply at` lemmas stored in the `RefinedDiscrTree`. -/
structure ApplyAtLemma where
  /-- The lemma -/
  name : Premise

/-- The key that is used for sorting and deduplicating `apply at` lemmas. -/
structure ApplyAtKey where
  /-- How many new goals are generated. -/
  numGoals : Nat
  /-- The name length of the used lemma. -/
  nameLength : Nat
  /-- The total length of the new goals when printed. -/
  replacementSize : Nat
  /-- The name of the used lemma. -/
  name : String
  /-- The new goals. -/
  newGoals : Array AbstractMVarsResult
deriving Inhabited

instance : Ord ApplyAtKey where
  compare a b :=
    (compare a.1 b.1).then <|
    (compare a.2 b.2).then <|
    (compare a.3 b.3).then <|
    (compare a.4 b.4)

/-- Whether the two suggestions are duplicates of each other. -/
def ApplyAtKey.isDuplicate (a b : ApplyAtKey) : MetaM Bool :=
  pure (a.newGoals.size == b.newGoals.size) <&&>
  a.newGoals.size.allM fun i _ =>
    pure (a.newGoals[i]!.mvars.size == b.newGoals[i]!.mvars.size)
      <&&> isExplicitEq a.newGoals[i]!.expr b.newGoals[i]!.expr

/-- Return the `apply` tactic that performs the application. -/
private def tacticSyntax (lem : ApplyAtLemma) : ClickSuggestionsM (TSyntax `tactic) := do
  -- let proof ← withOptions (pp.mvars.set · false) (PrettyPrinter.delab app.proof)
  `(tactic| apply $(mkIdent (← lem.name.unresolveName)) at $(← getHypIdent!))

/-- Generate the suggestion for applying `lem`. -/
def ApplyAtLemma.try (lem : ApplyAtLemma) (assignableMVars : Array Expr) :
    ClickSuggestionsM (Result ApplyAtKey) := do
  let (_proof, mvars, binderInfos, replacement) ← lem.name.forallMetaTelescopeReducing
  let mvar := mvars.back!
  let mvars := mvars.pop
  let fvarId := (← read).hyp?.get!
  unless ← isDefEq mvar (.fvar fvarId) do
    throwError "{← inferType mvar} does not unify with {← fvarId.getType}"
  synthAppInstances `click_suggestions default mvars binderInfos false false
  let mvars ← mvars.map Expr.mvarId! |>.filterM (not <$> ·.isAssigned)
  let newGoals ← mvars.mapM (do instantiateMVars <| ← ·.getType)

  let replacement ← instantiateMVars replacement
  let unhelpfulMVars ← hasUnhelpfulMVars mvars assignableMVars (newGoals.push replacement)
  let key := {
    numGoals := newGoals.size
    nameLength := lem.name.length
    replacementSize := ← newGoals.foldlM (init := 0) fun s g =>
      return (← ppExpr g).pretty.length + s
    name := lem.name.toString
    newGoals := (← newGoals.mapM (abstractMVars ·)).push (← abstractMVars replacement)
  }
  let tactic ← tacticSyntax lem
  let mut htmls := #[← exprToHtml replacement]
  for goal in newGoals do
    htmls := htmls.push <div> <strong className="goal-vdash">⊢ </strong> {← exprToHtml goal} </div>
  let filtered ←
    if unhelpfulMVars then
      pure none
    else
      some <$> mkSuggestion tactic (.element "div" #[] htmls)
  htmls := htmls.push <div> {← lem.name.toHtml} </div>
  let unfiltered ← mkSuggestion tactic (.element "div" #[] htmls)
  let pattern ← do
    let (xs, _, _) ← forallMetaTelescopeReducing (← lem.name.getType)
    exprToHtml (← inferType xs.back!)
  return { filtered, unfiltered, key, pattern }

end Mathlib.Tactic.ClickSuggestions
```
