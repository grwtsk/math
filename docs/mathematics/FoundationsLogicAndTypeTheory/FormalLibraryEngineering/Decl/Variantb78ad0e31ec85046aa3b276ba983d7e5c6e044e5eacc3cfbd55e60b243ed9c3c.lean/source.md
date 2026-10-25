# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decl.Variantb78ad0e31ec85046aa3b276ba983d7e5c6e044e5eacc3cfbd55e60b243ed9c3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beccfc3c84dd076b194ea28864ae541397ffede9` · SHA-256 `559baab98846626750f7d169c0ee4302202a8c938be70a2cd200812f2238ed36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunPropDecl.Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FunPropDecl.Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/FunProp/Decl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Tomáš Skřivan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tomáš Skřivan
-/
import Mathlib.Init

/-!
## `funProp` environment extension that stores all registered function properties
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunPropDecl.Varianta57951f36f87d34dad2395159e8c4b6fd8479f5554f0d71e229848f9929ad672

namespace Mathlib
open Lean Meta

namespace Meta.FunProp


/-- Basic information about function property

To use `funProp` to prove a function property `P : (α→β)→Prop` one has to provide `FunPropDecl`.
-/
structure FunPropDecl where
  /-- function transformation name -/
  funPropName : Name
  /-- path for discrimination tree -/
  path : Array DiscrTree.Key
  /-- argument index of a function this function property talks about.
  For example, this would be 4 for `@Continuous α β _ _ f` -/
  funArgId : Nat
  deriving Inhabited, BEq

/-- Discrimination tree for function properties. -/
structure FunPropDecls where
  /-- Discrimination tree for function properties. -/
  decls : DiscrTree FunPropDecl := {}
  deriving Inhabited

set_option linter.style.docString false in
/-- -/
abbrev FunPropDeclsExt := SimpleScopedEnvExtension FunPropDecl FunPropDecls

/-- Extension storing function properties tracked and used by the `fun_prop` attribute and tactic,
including, for example, `Continuous`, `Measurable`, `Differentiable`, etc. -/
initialize funPropDeclsExt : FunPropDeclsExt ←
  registerSimpleScopedEnvExtension {
    name := by exact decl_name%
    initial := {}
    addEntry := fun d e =>
      {d with decls := d.decls.insertCore e.path e}
  }

/-- Register new function property. -/
def addFunPropDecl (declName : Name) : MetaM Unit := do

  let info ← getConstInfo declName

  let (xs, bi, b) ← forallMetaTelescope info.type

  if ¬b.isProp then
    throwError "invalid fun_prop declaration, has to be `Prop` valued function"

  let lvls := info.levelParams.map (fun l => Level.param l)
  let e := mkAppN (.const declName lvls) xs
  let path ← DiscrTree.mkPath e

  -- find the argument position of the function `f` in `P f`
  let mut .some funArgId ← (xs.zip bi).findIdxM? fun (x,bi) => do
    if (← inferType x).isForall && bi.isExplicit then
      return true
    else
      return false
    | throwError "invalid fun_prop declaration, can't find argument of type `α → β`"

  let decl : FunPropDecl := {
    funPropName := declName
    path := path
    funArgId := funArgId
  }

  modifyEnv fun env => funPropDeclsExt.addEntry env decl

  trace[Meta.Tactic.funProp.attr]
    "added new function property `{declName}`\nlook up pattern is `{path}`"


/-- Is `e` a function property statement? If yes return function property declaration and
the function it talks about. -/
def getFunProp? (e : Expr) : MetaM (Option (FunPropDecl × Expr)) := do
  let ext := funPropDeclsExt.getState (← getEnv)

  let decls ← ext.decls.getMatch e (← read)

  if h : decls.size = 0 then
    return none
  else
    if decls.size > 1 then
      throwError "fun_prop bug: expression {← ppExpr e} matches multiple function properties\n\
        {decls.map (fun d => d.funPropName)}"

    let decl := decls[0]
    unless decl.funArgId < e.getAppNumArgs do return none
    let f := e.getArg! decl.funArgId

    return (decl,f)

/-- Is `e` a function property statement? -/
def isFunProp (e : Expr) : MetaM Bool := do return (← getFunProp? e).isSome

/-- Is `e` a `fun_prop` goal? For example `∀ y z, Continuous fun x => f x y z` -/
def isFunPropGoal (e : Expr) : MetaM Bool := do
  forallTelescope e fun _ b =>
  return (← getFunProp? b).isSome

/-- Returns function property declaration from `e = P f`. -/
def getFunPropDecl? (e : Expr) : MetaM (Option FunPropDecl) := do
  match ← getFunProp? e with
  | .some (decl,_) => return decl
  | .none => return none


/-- Returns function `f` from `e = P f` and `P` is function property. -/
def getFunPropFun? (e : Expr) : MetaM (Option Expr) := do
  match ← getFunProp? e with
  | .some (_,f) => return f
  | .none => return none


open Elab Term in
/-- Turn tactic syntax into a discharger function. -/
def tacticToDischarge (tacticCode : TSyntax `tactic) : Expr → MetaM (Option Expr) := fun e =>
  withTraceNode `Meta.Tactic.fun_prop
    (fun r => do pure s!"[{ExceptToEmoji.toEmoji r}] discharging: {← ppExpr e}") do
    let mvar ← mkFreshExprSyntheticOpaqueMVar e `funProp.discharger
    let runTac? : TermElabM (Option Expr) :=
      try
        withoutModifyingStateWithInfoAndMessages do
          instantiateMVarDeclMVars mvar.mvarId!

          let _ ←
            withSynthesize (postpone := .no) do
              Tactic.run mvar.mvarId! (Tactic.evalTactic tacticCode *> Tactic.pruneSolvedGoals)

          let result ← instantiateMVars mvar
          if result.hasExprMVar then
            return none
          else
            return some result
      catch _ =>
        return none
    let (result?, _) ← runTac?.run {} {}

    return result?

end Meta.FunProp

end Mathlib
```
