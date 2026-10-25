# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePattern.Variant162864eaaddde4cd24a75eeeea07cb126b67b40b5c9a9b66b9502b809b1fdfc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ce7e3f490e210ecc629d1109aeb401436c62543` · SHA-256 `ae2b5c9e8f682eb6cf0c12ba521519a69cded4aae092cd60e8c521deaaf7479d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePattern.Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RulePattern.Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RulePattern.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.BaseM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePattern.Variant597dec6514b1ac817578c101ed9ee1321e9e1d69430345b0b8c7c6e4fc96ee02

public section

open Lean Lean.Meta

namespace Aesop

/--
A rule pattern. For a rule of type `∀ (x₀ : T₀) ... (xₙ : Tₙ), U`, a valid rule
pattern is an expression `p` such that `x₀ : T₁, ..., xₙ : Tₙ ⊢ p : P`. Let
`y₀, ..., yₖ` be those variables `xᵢ` on which `p` depends. When `p` matches an
expression `e`, this means that `e` is defeq to `p` (where each `yᵢ` is replaced
with a metavariable) and we obtain a substitution

    {y₀ ↦ t₀ : T₀, y₁ ↦ t₁ : T₁[x₀ := t₀], ...}

Now suppose we want to match the above rule type against a type `V` (where `V`
is the target for an `apply`-like rule and a hypothesis type for a
`forward`-like rule). To that end, we take `U` and replace each `xᵢ` where
`xᵢ = yⱼ` with `tⱼ` and each `xᵢ` with `xᵢ ≠ yⱼ ∀ j` with a metavariable. The
resulting expression `U'` is then matched against `V`.
-/
structure RulePattern where
  /--
  An expression of the form `λ y₀ ... yₖ, p` representing the
  pattern.
  -/
  pattern : AbstractMVarsResult
  /--
  A partial map from the index set `{0, ..., n-1}` into `{0, ..., k-1}`. If
  `argMap[i] = j`, this indicates that when matching against the rule type, the
  instantiation `tⱼ` of `yⱼ` should be substituted for `xᵢ`.
  -/
  argMap : Array (Option Nat)
  /--
  A partial map from the level metavariables occurring in the rule to the
  pattern's level params.
  -/
  levelArgMap : Array (Option Nat)
  /--
  Discrimination tree keys for `p`.
  -/
  discrTreeKeys : Array DiscrTree.Key
  deriving Inhabited

namespace RulePattern

def boundPremises (pat : RulePattern) : Array Nat := Id.run do
  let mut result := Array.mkEmpty pat.argMap.size
  for h : i in [:pat.argMap.size] do
    if pat.argMap[i].isSome then
      result := result.push i
  return result

-- Largely copy-paste from openAbstractMVarsResult
def «open» (pat : RulePattern) :
    MetaM (Array MVarId × Array LMVarId × Expr) := do
  let a := pat.pattern
  let us ← a.paramNames.mapM fun _ => mkFreshLevelMVar
  let e := a.expr.instantiateLevelParamsArray a.paramNames us
  let (mvars, _, e) ← lambdaMetaTelescope e (some a.numMVars)
  return (mvars.map (·.mvarId!), us.map (·.mvarId!) , e)

def «match» (e : Expr) (pat : RulePattern) : BaseM (Option Substitution) :=
  withNewMCtxDepth do
    let (mvarIds, lmvarIds, p) ← pat.open
    if ! (← isDefEq e p) then
      return none
    let mut subst := .empty pat.argMap.size pat.levelArgMap.size
    for h : i in [:pat.argMap.size] do
      if let some j := pat.argMap[i] then
        let mvarId := mvarIds[j]!
        let mvar := .mvar mvarId
        let inst ← instantiateMVars mvar
        if inst == mvar then
          throwError "RulePattern.match: while matching pattern '{p}' against expression '{e}': expected metavariable ?{(← mvarId.getDecl).userName} ({mvarId.name}) to be assigned"
        subst := subst.insert ⟨i⟩ inst
    for h : i in [:pat.levelArgMap.size] do
      if let some j := pat.levelArgMap[i] then
        let mvar := .mvar lmvarIds[j]!
        let inst ← instantiateLevelMVars mvar
        if inst != mvar then
          subst := subst.insertLevel ⟨i⟩ inst
    return some subst

open Lean.Elab Lean.Elab.Term in
def «elab» (stx : Term) (rule : Expr) : TermElabM RulePattern :=
  withConstAesopTraceNode .debug (return m!"elaborating rule pattern") do
   -- TODO withNewMCtxDepth produces an error, but I don't understand why
  withLCtx {} {} $ withoutModifyingState do
    aesop_trace[debug] "rule: {rule}"
    aesop_trace[debug] "pattern: {stx}"
    let lmvarIds := collectLevelMVars {} (← instantiateMVars rule) |>.result
    aesop_trace[debug] "level metavariables in rule: {lmvarIds.map Level.mvar}"
    forallTelescope (← inferType rule) λ fvars _ => do
      let pat := (← elabPattern stx).consumeMData
      let (pat, mvarIds) ← fvarsToMVars fvars pat
      let discrTreeKeys ← mkDiscrTreePath pat
      let (pat, mvarIdToPatternPos, lmvarIdToPatternPos) ← abstractMVars' pat
      let argMap := mvarIds.map (mvarIdToPatternPos[·]?)
      let levelArgMap := lmvarIds.map (lmvarIdToPatternPos[·]?)
      aesop_trace[debug] "result: '{pat.expr}' with arg map{indentD $ toMessageData argMap}\nand level arg map{indentD $ toMessageData levelArgMap}"
      return { pattern := pat, argMap, levelArgMap, discrTreeKeys }
where
  fvarsToMVars (fvars : Array Expr) (e : Expr) :
      MetaM (Expr × Array MVarId) := do
    let e ← mkLambdaFVars fvars (← instantiateMVars e)
    let (mvars, _, e) ← lambdaMetaTelescope e (maxMVars? := some fvars.size)
    return (e, mvars.map (·.mvarId!))

  -- Largely copy-pasta of `abstractMVars`.
  abstractMVars' (e : Expr) :
      MetaM (AbstractMVarsResult × Std.HashMap MVarId Nat × Std.HashMap LMVarId Nat) := do
    let e ← instantiateMVars e
    let (e, s) := AbstractMVars.abstractExprMVars e
      { mctx := (← getMCtx)
        lctx := (← getLCtx)
        ngen := (← getNGen)
        abstractLevels := true }
    setNGen s.ngen
    setMCtx s.mctx
    let e := s.lctx.mkLambda s.fvars e
    let mut fvarIdToMVarId : Std.HashMap FVarId MVarId := ∅
    for (mvarId, e) in s.emap do
      if let .fvar fvarId := e then
        fvarIdToMVarId := fvarIdToMVarId.insert fvarId mvarId
    let mut mvarIdToPos := ∅
    for h : i in [:s.fvars.size] do
      mvarIdToPos := mvarIdToPos.insert fvarIdToMVarId[s.fvars[i].fvarId!]! i
    let mut paramToLMVarId : Std.HashMap Name LMVarId := ∅
    for (lmvarId, l) in s.lmap do
      if let .param n := l then
        paramToLMVarId := paramToLMVarId.insert n lmvarId
    let mut lmvarIdToPos := ∅
    for h : i in [:s.paramNames.size] do
      lmvarIdToPos := lmvarIdToPos.insert paramToLMVarId[s.paramNames[i]]! i
    let result :=
      { paramNames := s.paramNames, mvars := s.mvars, expr := e }
    return (result, mvarIdToPos, lmvarIdToPos)

end Aesop.RulePattern
```
