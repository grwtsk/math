# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCongrTheorems.Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6309d1b9fe36c55f8e1e9a3becfeed9a946e1895` · SHA-256 `0d7f90e7efcfc51e6acf0a79ea9e3fbd84126a10900f9a67071882c03869f434`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCongrTheorem.Variant46852cd6ba7a38bf58188ccce2dcec4dd6b21c072f05d45d3bd6425a5a863b1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46852cd6ba7a38bf58188ccce2dcec4dd6b21c072f05d45d3bd6425a5a863b1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpCongrTheorem.Variant46852cd6ba7a38bf58188ccce2dcec4dd6b21c072f05d45d3bd6425a5a863b1b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"46852cd6ba7a38bf58188ccce2dcec4dd6b21c072f05d45d3bd6425a5a863b1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/SimpCongrTheorems.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.Recognizers
public import Lean.Util.CollectMVars
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpCongrTheorem.Variant46852cd6ba7a38bf58188ccce2dcec4dd6b21c072f05d45d3bd6425a5a863b1b

public section

namespace Lean.Meta

/--
  Data for user-defined theorems marked with the `congr` attribute.

  This type should be confused with `CongrTheorem` which represents different kinds of automatically
  generated congruence theorems. The `simp` tactic also uses some of them.
-/
structure SimpCongrTheorem where
  theoremName   : Name
  funName       : Name
  hypothesesPos : Array Nat
  priority      : Nat
deriving Inhabited, Repr

structure SimpCongrTheorems where
  lemmas : SMap Name (List SimpCongrTheorem) := {}
  deriving Inhabited, Repr

def SimpCongrTheorems.get (d : SimpCongrTheorems) (declName : Name) : List SimpCongrTheorem :=
  match d.lemmas.find? declName with
  | none    => []
  | some cs => cs

def addSimpCongrTheoremEntry (d : SimpCongrTheorems) (e : SimpCongrTheorem) : SimpCongrTheorems :=
  { d with lemmas :=
      match d.lemmas.find? e.funName with
      | none    => d.lemmas.insert e.funName [e]
      | some es => d.lemmas.insert e.funName <| insert es }
where
  insert : List SimpCongrTheorem → List SimpCongrTheorem
    | []     => [e]
    | e'::es => if e.priority ≥ e'.priority then e::e'::es else e' :: insert es

builtin_initialize congrExtension : SimpleScopedEnvExtension SimpCongrTheorem SimpCongrTheorems ←
  registerSimpleScopedEnvExtension {
    initial        := {}
    addEntry       := addSimpCongrTheoremEntry
    finalizeImport := fun s => { s with lemmas := s.lemmas.switch }
  }

def mkSimpCongrTheorem (declName : Name) (prio : Nat) : MetaM SimpCongrTheorem := withReducible do
  let c ← mkConstWithLevelParams declName
  let (xs, bis, type) ← forallMetaTelescopeReducing (← inferType c)
  match type.eqOrIff? with
  | none => throwError "Invalid `congr` theorem: Theorem is not an equality or iff{indentExpr type}"
  | some (lhs, rhs) =>
    lhs.withApp fun lhsFn lhsArgs => rhs.withApp fun rhsFn rhsArgs => do
      unless lhsFn.isConst && rhsFn.isConst && lhsFn.constName! == rhsFn.constName! && lhsArgs.size == rhsArgs.size do
        throwError "Invalid `congr` theorem: The left- and right-hand sides of the equality are not applications of the same function{indentExpr type}"
      let mut foundMVars : MVarIdSet := {}
      for lhsArg in lhsArgs do
        for mvarId in (lhsArg.collectMVars {}).result do
          foundMVars := foundMVars.insert mvarId
      let mut i : Nat := 0
      let mut hypothesesPos := #[]
      for x in xs, bi in bis do
        if bi.isExplicit && !foundMVars.contains x.mvarId! then
          let rhsFn? ← forallTelescopeReducing (← inferType x) fun ys xType => do
            match xType.eqOrIff? with
            | none => pure none -- skip
            | some (xLhs, xRhs) =>
              let mut j : Nat := 0
              for y in ys do
                let yType ← inferType y
                unless onlyMVarsAt yType foundMVars do
                  throwError "Invalid `congr` theorem: Argument #{j+1} of parameter #{i+1} contains unresolved parameter{indentExpr yType}"
                j := j + 1
              unless onlyMVarsAt xLhs foundMVars do
                throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its left-hand side contains unresolved parameters{indentExpr xLhs}"
              let xRhsFn := xRhs.getAppFn
              unless xRhsFn.isMVar do
                throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its right-hand side head is not a metavariable{indentExpr xRhs}"
              unless !foundMVars.contains xRhsFn.mvarId! do
                throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its right-hand side head was already resolved{indentExpr xRhs}"
              for arg in xRhs.getAppArgs do
                unless arg.isFVar do
                  throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its right-hand side argument is not a local variable{indentExpr xRhs}"
              pure (some xRhsFn)
          match rhsFn? with
          | none       => pure ()
          | some rhsFn =>
            foundMVars    := foundMVars.insert x.mvarId! |>.insert rhsFn.mvarId!
            hypothesesPos := hypothesesPos.push i
        i := i + 1
      return {
        theoremName   := declName
        funName       := lhsFn.constName!
        hypothesesPos := hypothesesPos
        priority      := prio
      }
where
  /-- Return `true` if `t` contains a metavariable that is not in `mvarSet` -/
  onlyMVarsAt (t : Expr) (mvarSet : MVarIdSet) : Bool :=
    Option.isNone <| t.find? fun e => e.isMVar && !mvarSet.contains e.mvarId!

def addSimpCongrTheorem (declName : Name) (attrKind : AttributeKind) (prio : Nat) : MetaM Unit := do
  let lemma ← mkSimpCongrTheorem declName prio
  congrExtension.add lemma attrKind

/--
Registers `simp` congruence lemmas.

A `simp` congruence lemma should prove the equality of two applications of the same function from
the equality of the individual arguments. They are used by `simp` to visit subexpressions of an
application where the default congruence algorithm fails. This is particularly important for
functions where some parameters depend on previous parameters.

Congruence lemmas should have an equality for every parameter, possibly bounded by foralls, with
the right hand side being an application of a parameter on the right-hand side. When applying
congruence theorems, `simp` will first infer parameters from the right-hand side, then try to
simplify each left-hand side of the parameter equalities and finally infer the right-hand side
parameters from the result.

Example:
```
def Option.pbind (o : Option α) (f : (a : α) → o = some a → Option β) : Option β := ...

@[congr]
theorem Option.pbind_congr
    {o o' : Option α} (ho : o = o') -- equality for first parameter
    {f : (a : α) → o = some a → Option β} {f' : (a : α) → o' = some a → Option β}
    (hf : ∀ (a : α) (h : _), f a (ho.trans h) = f' a h) : -- equality for second parameter
    o.pbind f = o'.pbind f' := -- conclusion: equality of the whole application
  ...
```
-/
@[builtin_doc]
builtin_initialize
  registerBuiltinAttribute {
    name  := `congr
    descr := "congruence theorem"
    add   := fun declName stx attrKind => do
      let prio ← getAttrParamOptPrio stx[1]
      discard <| addSimpCongrTheorem declName attrKind prio |>.run {} {}
  }

def getSimpCongrTheorems : CoreM SimpCongrTheorems :=
  return congrExtension.getState (← getEnv)

end Lean.Meta
````
