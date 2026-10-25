# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3888570c4a23e933b0e986fc13f2e4724fbd1830` · SHA-256 `f7e5394604a95da07a3767135c8fed45c05f865b02a229630d869473eb942f44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Substitution.Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/Substitution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.LevelIndex
public import Aesop.Forward.PremiseIndex
public import Aesop.Util.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variant39099f7cef9ff6e577ac4d0a63238bcfdb0eae14d562deb26ab017b475e22677

public section

namespace Aesop

open Lean Lean.Meta

set_option linter.missingDocs true

/-- A substitution for the premises of a rule. Given a rule with type
`∀ (x₁ : T₁) ... (xₙ : Tₙ), U` a substitution is a finite partial map with
domain `{1, ..., n}` that associates an expression with some or all of the
premises. -/
structure Substitution where
  /-- The substitution. -/
  premises : Array (Option Expr)
  /-- The level substitution implied by the premise substitution. If `e` is the
  elaborated rule expression (with level params replaced by level mvars), and
  `collectLevelMVars (← instantiateMVars e) = [?m₁, ..., ?mₙ]`, then `levels[i]`
  is the level assigned to `?mᵢ`. -/
  levels : Array (Option Level)
  deriving Inhabited

namespace Substitution

instance : BEq Substitution where
  beq s₁ s₂ := s₁.premises == s₂.premises

instance : Hashable Substitution where
  hash s := hash s.premises

-- TODO This is fairly expensive. Can we get away with Expr.quickComp?
private def cmpExprs (e₁ e₂ : Expr) : Ordering :=
  if e₁ == e₂ then
    .eq
  else if e₁.lt e₂ then
    .lt
  else
    .gt

instance : Ord Substitution where
  compare s₁ s₂ := private
    have : Ord Expr := ⟨cmpExprs⟩
    compareArraySizeThenLex compare s₁.premises s₂.premises

/-- The empty substitution for a rule with the given number of premise
indexes. -/
def empty (numPremises numLevels : Nat) : Substitution where
  premises := .replicate numPremises none
  levels   := .replicate numLevels   none

/-- Insert the mapping `pi ↦ inst` into the substitution `s`. Precondition: `pi`
is in the domain of `s`. -/
def insert (pi : PremiseIndex) (inst : Expr) (s : Substitution) :
    Substitution :=
  { s with premises := s.premises.set! pi.toNat inst }

/-- Get the instantiation associated with premise `pi` in `s`. Precondition:
`pi` is in the domain of `s`. -/
def find? (pi : PremiseIndex) (s : Substitution) : Option Expr :=
  s.premises[pi.toNat]!

/-- Insert the mapping `li ↦ inst` into the substitution `s`. Precondition: `li`
is in the domain of `s` and `inst` is normalised. -/
def insertLevel (li : LevelIndex) (inst : Level) (s : Substitution) :
    Substitution :=
  { s with levels := s.levels.set! li.toNat inst }

/-- Get the instantiation associated with level `li` in `s`. Precondition:
`li` is in the domain of `s`. -/
def findLevel? (li : PremiseIndex) (s : Substitution) : Option Level :=
  s.levels[li.toNat]!

instance : ToMessageData Substitution where
  toMessageData s :=
    let ps := s.premises.filterMap id |>.mapIdx (λ i e => m!"{i} ↦ {e}") |>.toList
    let ls := s.levels.filterMap   id |>.mapIdx (λ i l => m!"{i} ↦ {l}") |>.toList
    .bracket "{" (.joinSep ps ", " ++ " | " ++ .joinSep ls ", ") "}"

/-- Merge two substitutions. Precondition: the substitutions are compatible, so
they must have the same size and if `s₁[x]` and `s₂[x]` are both defined, they
must be defeq. -/
-- FIXME defeq at which transparency?
def mergeCompatible (s₁ s₂ : Substitution) : Substitution := Id.run do
  assert! s₁.premises.size == s₂.premises.size
  assert! s₁.levels.size == s₂.levels.size
  let mut result := s₁
  for h : i in [:s₂.premises.size] do
    if let some e := s₂.premises[i] then
      if s₁.premises[i]!.isNone then
        result := result.insert ⟨i⟩ e
  for h : i in [:s₂.levels.size] do
    if let some l := s₂.levels[i] then
      if s₁.levels[i]!.isNone then
        result := result.insertLevel ⟨i⟩ l
  return result

/-- Returns `true` if any expression in the codomain of `s` contains `hyp`. -/
def containsHyp (hyp : FVarId) (s : Substitution) : Bool :=
  s.premises.any λ
    | none => false
    | some e => e.containsFVar hyp

/-- Given `e` with type `∀ (x₁ : T₁) ... (xₙ : Tₙ), U` and a substitution `σ`
for the arguments `xᵢ`, replace occurrences of `xᵢ` in the body `U` with fresh
metavariables (like `forallMetaTelescope`). Then, for each mapping `xᵢ ↦ tᵢ` in
`σ`, assign `tᵢ` to the metavariable corresponding to `xᵢ`. Returns the newly
created metavariables (which may be assigned!), their binder infos and the
updated body. -/
def openRuleType (e : Expr) (subst : Substitution) :
    MetaM (Array MVarId × Array BinderInfo × Expr) := do
  let lmvarIds := collectLevelMVars {} (← instantiateMVars e) |>.result
  if subst.levels.size != lmvarIds.size then
    throwError "openRuleType: substitution contains incorrect number of levels. Rule:{indentExpr e}\nSubstitution:{indentD $ toMessageData subst}"
  let type ← inferType e
  let (mvars, binfos, body) ← forallMetaTelescopeReducing type
  let mvarIds := mvars.map (·.mvarId!)
  if subst.premises.size != mvars.size then
    throwError "openRuleType: substitution has incorrect size. Rule:{indentExpr e}\nRule type:{indentExpr type}\nSubstitution:{indentD $ toMessageData subst}"
  for h : i in [:lmvarIds.size] do
    if let some inst := subst.findLevel? ⟨i⟩ then
      assignLevelMVar lmvarIds[i] inst
  for h : i in [:mvarIds.size] do
    if let some inst := subst.find? ⟨i⟩ then
      mvarIds[i].assign inst
  return (mvarIds, binfos, body)

/-- Given `rule` of type `∀ (x₁ : T₁) ... (xₙ : Tₙ), U` and a substitution `σ` for
the arguments `xᵢ`, specialise `rule` with the arguments given by `σ`. That is,
construct `U t₁ ... tₙ` where `tⱼ` is `σ(xⱼ)` if `xⱼ ∈ dom(σ)` and is otherwise
a fresh fvar, then λ-abstract the fresh fvars. -/
def specializeRule (rule : Expr) (subst : Substitution) : MetaM Expr :=
  withNewMCtxDepth do
    let lmvarIds := collectLevelMVars {} (← instantiateMVars rule) |>.result
    for h : i in [:lmvarIds.size] do
      if let some l := subst.findLevel? ⟨i⟩ then
        assignLevelMVar lmvarIds[i] l
    forallTelescopeReducing (← inferType rule) λ fvarIds _ => do
      let mut args := Array.mkEmpty fvarIds.size
      let mut remainingFVarIds := Array.mkEmpty fvarIds.size
      for h : i in [:fvarIds.size] do
        if let some inst := subst.find? ⟨i⟩ then
          args := args.push $ some inst
        else
          let fvarId := fvarIds[i]
          args := args.push $ some fvarId
          remainingFVarIds := remainingFVarIds.push fvarId
      let result ← mkLambdaFVars remainingFVarIds (← mkAppOptM' rule args)
      return result

end Substitution

/-- Open the type of a rule `e`. If a substitution `σ` is given, this function
acts like `Substitution.openRuleType σ`. Otherwise it acts like
`forallMetaTelescope`. -/
def openRuleType (subst? : Option Substitution) (e : Expr) :
    MetaM (Array MVarId × Array BinderInfo × Expr) := do
  match subst? with
  | some subst => do
    subst.openRuleType e
  | none =>
    let (premises, binfos, conclusion) ←
      forallMetaTelescopeReducing (← inferType e)
    return (premises.map (·.mvarId!), binfos, conclusion)

end Aesop
```
