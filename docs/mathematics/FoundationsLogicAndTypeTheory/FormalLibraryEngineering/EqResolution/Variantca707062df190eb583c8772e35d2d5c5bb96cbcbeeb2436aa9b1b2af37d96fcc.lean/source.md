# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqResolution.Variantca707062df190eb583c8772e35d2d5c5bb96cbcbeeb2436aa9b1b2af37d96fcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51f495d43caa5e46fefe8f6f4245a76a6f48b6ba` · SHA-256 `e439805e0c6d34e9fd6fbec054b37cf823cc3431ac4a30f10b32a4af7ac6e54d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopSortState.Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TopSortState.Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/EqResolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.Meta.AppBuilder
import Lean.Meta.MatchUtil
import Lean.Util.ForEachExpr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TopSortState.Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e

public section
namespace Lean.Meta.Grind
/-! A basic "equality resolution" procedure. -/

/--
Similar to `forallMetaTelescopeReducing`, but if `prop` resulting type is of the form `¬ p`, it will "convert" it so `p → False`, and
will return a hypothesis for it and return `False` as the resulting type.
-/
private def forallMetaTelescopeReducingAndUnfoldingNot (prop : Expr) : MetaM (Array Expr × Expr) := do
  let (ms, _, type) ← forallMetaTelescopeReducing prop
  if let some p ← matchNot? type then
    let m ← mkFreshExprMVar p
    return (ms.push m, mkConst ``False)
  return (ms, type)

structure TopSort.State where
  tempMark  : Std.HashSet Expr := {}
  permMark  : Std.HashSet Expr := {}
  result : Array Expr := #[]

abbrev TopSortM := OptionT $ StateT TopSort.State MetaM

/--
Sorts metavariables `ms` using topological sort.
There is an "edge" from `m₁` to `m₂` if type of `m₁` contains `m₂`.
We use this function to ensure that after applying equality resolution to
```
∀ x : Nat, p x a → ∀ y : Nat, p y b → x = y → False
```
we produce
```
∀ y, p y a → p y b → False
```
instead of
```
p ?y a → ∀ y, p y b → False
```
Recall that in equality resolution we create a meta-variable for each hypothesis.
Thus, we initially have
```
?x : Nat, ?h₁ : p ?x a, ?y : Nat, ?h₂ : p ?y b, ?h₃ : ?x = ?y
```
Then, we resolve `?h₃ : ?x = ?y` as `?y := ?x` and `?h₃ := Eq.refl ?y`.
But `?h₁` occurs before `?y`. We use topological sort to address this situation.
If a cycle is detected, it returns `none`.
-/
private partial def topsortMVars? (ms : Array Expr) : MetaM (Option (Array Expr)) := do
  let (some _, s) ← go.run.run {} | return none
  return some s.result
where
  go : TopSortM Unit := do
    for m in ms do
      visit m

  visit (m : Expr) : TopSortM Unit := do
    if (← get).permMark.contains m then
      return ()
    if (← get).tempMark.contains m then
      failure
    modify fun s => { s with tempMark := s.tempMark.insert m }
    visitTypeOf m
    modify fun s => { s with
      result := s.result.push m
      permMark := s.permMark.insert m
    }

  visitTypeOf (m : Expr) : TopSortM Unit := do
    let type ← instantiateMVars (← inferType m)
    type.forEach' fun e => do
      if e.hasExprMVar then
        if e.isMVar && ms.contains e then
          visit e
        return true
      else
        return false

private def eqResCore (prop proof : Expr) : MetaM (Option (Expr × Expr)) := withNewMCtxDepth do
  /-
  We use `forallMetaTelescopeReducingAndUnfoldingNot` because we want to treat
  ```
  ∀ x, ¬ f x = f a
  ```
  as
  ```
  ∀ x, f x = f a → False
  ```
  recall that `¬` is not reducible.
  -/
  let (ms, type) ← forallMetaTelescopeReducingAndUnfoldingNot prop
  if ms.isEmpty then return none
  let mut progress := false
  for m in ms do
    let type ← inferType m
    let_expr Eq _ lhs rhs ← type
      | pure ()
    if (← isDefEq lhs rhs) then
      unless (← m.mvarId!.checkedAssign (← mkEqRefl lhs)) do
        return none
      progress := true
  unless progress do
    return none
  if (← ms.anyM fun m => m.mvarId!.isDelayedAssigned) then
    return none
  let prop' ← instantiateMVars type
  let proof' ← instantiateMVars (mkAppN proof ms)
  let ms ← ms.filterM fun m => return !(← m.mvarId!.isAssigned)
  let some ms ← topsortMVars? ms | return none
  let prop' ← mkForallFVars ms prop' (binderInfoForMVars := .default)
  let proof' ← mkLambdaFVars ms proof'
  return some (prop', proof')

/--
A basic "equality resolution" procedure: Given a proposition `prop` with a proof `proof`, it attempts to resolve equality hypotheses using `isDefEq`. For example, it reduces `∀ x y, f x = f (g y y) → g x y = y` to `∀ y, g (g y y) y = y`, and `∀ (x : Nat), f x ≠ f a` to `False`.
If successful, the result is a pair `(prop', proof)`, where `prop'` is the simplified proposition,
and `proof : prop → prop'`
-/
def eqResolution (prop : Expr) : MetaM (Option (Expr × Expr)) :=
  withLocalDeclD `h prop fun h => do
    let some (prop', proof') ← eqResCore prop h
      | return none
    let proof' ← mkLambdaFVars #[h] proof'
    return some (prop', proof')

end Lean.Meta.Grind
````
