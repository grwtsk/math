-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RwLemma.Variant0075a3767fb10a3215e9dc99032c636e8fa2d829bba5462ccd72885faa3c25d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0075a3767fb10a3215e9dc99032c636e8fa2d829bba5462ccd72885faa3c25d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RwLemma.Variant0075a3767fb10a3215e9dc99032c636e8fa2d829bba5462ccd72885faa3c25d9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0075a3767fb10a3215e9dc99032c636e8fa2d829bba5462ccd72885faa3c25d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/ClickSuggestions/Rewrite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

public import Mathlib.Tactic.ClickSuggestions.SectionState
public meta import Mathlib.Control.Basic
public meta import Mathlib.Tactic.ClickSuggestions.Util

/-!
# Support for `rw` suggestions in `#click_suggestions`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RwLemma.Variant0075a3767fb10a3215e9dc99032c636e8fa2d829bba5462ccd72885faa3c25d9

public meta section

namespace Mathlib.Tactic.ClickSuggestions

open Lean Meta ProofWidgets Jsx

/-- The structure for rewrite lemmas stored in the `RefinedDiscrTree`. -/
structure RwLemma where
  /-- The lemma -/
  name : Premise
  /-- `symm` is `true` when rewriting from right to left -/
  symm : Bool

/-- The information needed for doing a rewrite. -/
structure RwInfo where
  /-- The outer expression in which the rewrite takes place. -/
  rootExpr : Expr
  /-- The expression that is being rewritten. -/
  subExpr : Expr
  /-- If we rewrite into this expression, then the goal will be solved. -/
  rflTarget? : Option Expr
  /-- The expression that is being rewritten. This may not be the same as the selected expression,
  because we also suggest rewriting partial applications. -/
  pos : SubExpr.Pos
  /-- Some information about the rewrite position. -/
  rwKind : RwKind

/-- The key that is used for sorting and deduplicating `rw` lemmas. -/
structure RwKey where
  /-- The number of side goals created. -/
  numGoals : Nat
  /-- If `symm := true`, then the rewrite is right-to-left. -/
  symm : Bool
  /-- The name length of the used lemma. -/
  nameLength : Nat
  /-- The length of the new subexpression. -/
  replacementSize : Nat
  /-- The nae of the used lemma. -/
  name : String
  -- TODO: in this implementation, we conclude that two rewrites are the same if they
  -- rewrite into the same expression. But there can be two rewrites that have
  -- different side conditions!
  /-- The new subexpression. -/
  replacement : AbstractMVarsResult
deriving Inhabited

instance : Ord RwKey where
  compare a b :=
    (compare a.1 b.1).then <|
    (compare a.2 b.2).then <|
    (compare a.3 b.3).then <|
    (compare a.4 b.4).then <|
    (compare a.5 b.5)

/-- Whether the two suggestions are duplicates of each other. -/
def RwKey.isDuplicate (a b : RwKey) : MetaM Bool :=
  pure (a.replacement.mvars.size == b.replacement.mvars.size)
    <&&> isExplicitEq a.replacement.expr b.replacement.expr

/-- Return the rewrite tactic that performs the rewrite. -/
private def tacticSyntax (lem : RwLemma) (rwKind : RwKind) (hyp? : Option Ident) (proof : Expr)
    (justLemmaName : Bool) : MetaM (TSyntax `tactic) := do
  let proof ← if justLemmaName then
      `(term| $(mkIdent <| ← lem.name.unresolveName))
    else
      withOptions (pp.mvars.set · false) (PrettyPrinter.delab proof)
  mkRewrite rwKind lem.symm proof hyp?

/-- Generate the suggestion for rewriting with `lem`. -/
def RwLemma.try (i : RwInfo) (lem : RwLemma) (assignableMVars : Array Expr) :
    ClickSuggestionsM (Result RwKey) := do
  let e := i.subExpr
  let (proof, mvars, binderInfos, eqn) ← lem.name.forallMetaTelescopeReducing
  let mkApp2 _ lhs rhs ← whnf eqn | throwError "Exected an equality or iff, not {eqn}"
  let (lhs, rhs) := if lem.symm then (rhs, lhs) else (lhs, rhs)
  let lhsOrig := lhs; let mctxOrig ← getMCtx
  unless ← isDefEq lhs e do throwError "{lhs} does not unify with {e}"
  -- just like in `kabstract`, we compare the `HeadIndex` and number of arguments
  let lhs ← instantiateMVars lhs
  -- TODO: if the `headIndex` doesn't match, then use `simp_rw` instead of `rw` in the suggestion,
  -- instead of just not showing the suggestion.
  if lhs.toHeadIndex != e.toHeadIndex || lhs.headNumArgs != e.headNumArgs then
    throwError "{lhs} and {e} do not match according to the head-constant indexing"
  synthAppInstances `click_suggestions default mvars binderInfos false false
  let mvars ← mvars.map (·.mvarId!) |>.filterM (not <$> ·.isAssigned)
  let mut extraGoals := #[]
  let mut justLemmaName := true
  let mut rwKind := i.rwKind
  for mvarId in mvars do
    let type ← instantiateMVars (← mvarId.getType)
    if rwKind matches .valid .. then
      if ← isProp type then
        if let some fvarId ← withNewMCtxDepth <| findLocalDeclWithType? type then
          mvarId.assign (.fvar fvarId)
          justLemmaName := false
          continue
    extraGoals := extraGoals.push type

  let replacement ← instantiateMVars rhs
  let unhelpfulMVars ← hasUnhelpfulMVars mvars assignableMVars (extraGoals.push replacement)
  let proof ← instantiateMVars proof
  let isRefl ← isExplicitEq e replacement
  if let .valid tpCorrect _ := rwKind then
    if justLemmaName then
      if ← withMCtx mctxOrig do kabstractFindsPositions i.rootExpr lhsOrig i.pos then
        rwKind := .valid tpCorrect none
      else
        justLemmaName := false
  let key := {
    numGoals := extraGoals.size
    symm := lem.symm
    nameLength := lem.name.length
    replacementSize := (← ppExpr replacement).pretty.length
    name := lem.name.toString
    replacement := ← abstractMVars replacement
  }
  let tactic ← tacticSyntax lem rwKind (← getHypIdent?) proof justLemmaName
  let isClosing ← (do
    if extraGoals.isEmpty then
      if let some rflTarget := i.rflTarget? then
        return ← withoutModifyingMCtx <| isDefEq replacement rflTarget
      else if (← read).pos == .root && (← read).hyp?.isNone then
        return ← succeeds (← mkFreshExprMVar replacement).mvarId!.applyRfl
    return false)
  if isClosing then
    addSolvedSuggestion tactic
  let mut htmls := #[← exprToHtml replacement]
  for goal in extraGoals do
    htmls := htmls.push <div> <strong className="goal-vdash">⊢ </strong> {← exprToHtml goal} </div>
  let filtered ←
    if isRefl || unhelpfulMVars then
      pure none
    else
      some <$> mkSuggestion tactic (.element "div" #[] htmls) (isClosing := isClosing)
  htmls := htmls.push (<div> {← lem.name.toHtml} </div>)
  let unfiltered ← mkSuggestion tactic (.element "div" #[] htmls) (isClosing := isClosing)
  let pattern ← do
    let (_, _, e) ← forallMetaTelescopeReducing (← lem.name.getType)
    let mkApp2 _ lhs rhs ← whnf e | throwError "Expected equation, not{indentExpr e}"
    exprToHtml <| if lem.symm then rhs else lhs
  return { filtered, unfiltered, key, pattern }

end Mathlib.Tactic.ClickSuggestions
