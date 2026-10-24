-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomicFact.Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AtomicFact.Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Order/CollectFacts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Vasilii Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasilii Nesterov
-/
import Mathlib.Order.Basic
import Qq

/-!
# Facts collection for the `order` Tactic

This file implements the collection of facts for the `order` tactic.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomicFact.Variant45d51e151655792887073396aa664f9eb28c05fa16e08003ae44c73281836f97

namespace Mathlib.Tactic.Order

open Lean Qq Elab Meta Tactic

/-- A structure for storing facts about variables. -/
inductive AtomicFact
| eq (lhs : Nat) (rhs : Nat) (proof : Expr)
| ne (lhs : Nat) (rhs : Nat) (proof : Expr)
| le (lhs : Nat) (rhs : Nat) (proof : Expr)
| nle (lhs : Nat) (rhs : Nat) (proof : Expr)
| lt (lhs : Nat) (rhs : Nat) (proof : Expr)
| nlt (lhs : Nat) (rhs : Nat) (proof : Expr)
deriving Inhabited, BEq

-- For debugging purposes.
instance : ToString AtomicFact where
  toString fa := match fa with
  | .eq lhs rhs _ => s!"{lhs} = {rhs}"
  | .ne lhs rhs _ => s!"{lhs} ≠ {rhs}"
  | .le lhs rhs _ => s!"{lhs} ≤ {rhs}"
  | .nle lhs rhs _ => s!"¬ {lhs} ≤ {rhs}"
  | .lt lhs rhs _ => s!"{lhs} < {rhs}"
  | .nlt lhs rhs _ => s!"¬ {lhs} < {rhs}"

/-- State for `CollectFactsM`. It contains a map where the key `t` maps to a
pair `(atomToIdx, facts)`. `atomToIdx` is a `DiscrTree` containing atomic expressions with their
indices, and `facts` stores `AtomicFact`s about them. -/
abbrev CollectFactsState := Std.HashMap Expr <| DiscrTree (Nat × Expr) × Array AtomicFact

/-- Monad for the fact collection procedure. -/
abbrev CollectFactsM := StateT CollectFactsState MetaM

/-- Updates the state with the atom `x`. -/
partial def addAtom {u : Level} (type : Q(Type u)) (x : Q($type)) : CollectFactsM Nat := do
  modify fun res => res.insertIfNew type (.empty, #[])
  let (atomToIdx, facts) := (← get).get! type
  let idx ← match ← (← atomToIdx.getUnify x).findM? fun (_, e) => isDefEq x e with
  | none =>
    let idx := atomToIdx.size
    let atomToIdxNew ← atomToIdx.insert x (idx, x)
    modify fun res => res.insert type (atomToIdxNew, facts)
    pure idx
  | some (idx, _) => pure idx
  return idx

/-- Adds `fact` to the state. -/
def addFact (type : Expr) (fact : AtomicFact) : CollectFactsM Unit :=
  modify fun res => res.modify type fun (atomToIdx, facts) =>
    (atomToIdx, facts.push fact)

set_option linter.unusedVariables false in
/-- Implementation for `collectFacts` in `CollectFactsM` monad. -/
def collectFactsImp (g : MVarId) :
    CollectFactsM Unit := g.withContext do
  let ctx ← getLCtx
  for ldecl in ctx do
    if ldecl.isImplementationDetail then
      continue
    processExpr ldecl.toExpr
where
  /-- Extracts facts and atoms from the expression. -/
  processExpr (expr : Expr) : CollectFactsM Unit := do
    let type ← inferType expr
    if !(← isProp type) then
      return
    let ⟨u, type, expr⟩ ← inferTypeQ expr
    let _ : u =QL 0 := ⟨⟩
    match type with
    | ~q(@Eq ($α : Type _) $x $y) =>
      if (← synthInstance? (q(Preorder $α))).isSome then
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .eq xIdx yIdx expr
    | ~q(@LE.le $α $inst $x $y) =>
      let xIdx := ← addAtom α x
      let yIdx := ← addAtom α y
      addFact α <| .le xIdx yIdx expr
    | ~q(@LT.lt $α $inst $x $y) =>
      let xIdx := ← addAtom α x
      let yIdx := ← addAtom α y
      addFact α <| .lt xIdx yIdx expr
    | ~q(@Ne ($α : Type _) $x $y) =>
      if (← synthInstance? (q(Preorder $α))).isSome then
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .ne xIdx yIdx expr
    | ~q(Not $p) =>
      match p with
      | ~q(@LE.le $α $inst $x $y) =>
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .nle xIdx yIdx expr
      | ~q(@LT.lt $α $inst $x $y) =>
        let xIdx := ← addAtom α x
        let yIdx := ← addAtom α y
        addFact α <| .nlt xIdx yIdx expr
      | _ => return
    | _ => return

/-- Collects facts from the local context. For each occurring type `α`, the returned map contains
a pair `(idxToAtom, facts)`, where the map `idxToAtom` converts indices to found
atomic expressions of type `α`, and `facts` contains all collected `AtomicFact`s about them. -/
def collectFacts (g : MVarId) :
    MetaM <| Std.HashMap Expr <| Std.HashMap Nat Expr × Array AtomicFact := g.withContext do
  let res := (← (collectFactsImp g).run ∅).snd
  return res.map fun _ (atomToIdx, facts) =>
    let idxToAtom : Std.HashMap Nat Expr := atomToIdx.fold (init := ∅) fun acc _ value =>
      acc.insert value.fst value.snd
    (idxToAtom, facts)

end Mathlib.Tactic.Order
