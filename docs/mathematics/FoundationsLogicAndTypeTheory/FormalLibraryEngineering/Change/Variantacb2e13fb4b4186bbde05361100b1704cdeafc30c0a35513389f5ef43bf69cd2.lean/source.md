# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variantacb2e13fb4b4186bbde05361100b1704cdeafc30c0a35513389f5ef43bf69cd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `135ff025dab38392fa2c65ff416497239215e58c` · SHA-256 `2df8b576f4caccc7adaa4858819a3eba005542c85671400c178a236bebf7345d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabChangeDefaultError.Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabChangeDefaultError.Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
module

prelude
public import Lean.Meta.Tactic.Replace
public import Lean.Elab.Tactic.Location


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabChangeDefaultError.Variant438e307e9d79ad5dd7922f11a5f56d6a9c488bac1c8bc79ac16c56d8b7f2df4b

public section

namespace Lean.Elab.Tactic
open Meta
/-!
# Implementation of the `change` tactic
-/

def elabChangeDefaultError (p tgt : Expr) : MetaM MessageData := do
  return m!"\
    'change' tactic failed, pattern{indentExpr p}\n\
    is not definitionally equal to target{indentExpr tgt}"

/--
Elaborates the pattern `p` and ensures that it is defeq to `e`.
Emulates `(show p from ?m : e)`, returning the type of `?m`, but `e` and `p` do not need to be types.
Unlike `(show p from ?m : e)`, this can assign synthetic opaque metavariables appearing in `p`.
-/
def elabChange (e : Expr) (p : Term) (mkDefeqError : Expr → Expr → MetaM MessageData := elabChangeDefaultError) :
    TacticM Expr := do
  let p ← runTermElab do
    let p ← Term.elabTermEnsuringType p (← inferType e)
    unless ← isDefEq p e do
      /-
      Sometimes isDefEq can fail due to postponed elaboration problems.
      We synthesize pending synthetic mvars while allowing typeclass instances to be postponed,
      which might enable solving for them with an additional `isDefEq`.
      -/
      Term.synthesizeSyntheticMVars (postpone := .partial)
      discard <| isDefEq p e
    pure p
  withAssignableSyntheticOpaque do
    unless ← isDefEq p e do
      throwError MessageData.ofLazyM (es := #[p, e]) do
        let (p, tgt) ← addPPExplicitToExposeDiff p e
        mkDefeqError p tgt
    instantiateMVars p

/-- `change` can be used to replace the main goal or its hypotheses with
different, yet definitionally equal, goal or hypotheses.

For example, if `n : Nat` and the current goal is `⊢ n + 2 = 2`, then
```lean
change _ + 1 = _
```
changes the goal to `⊢ n + 1 + 1 = 2`.

The tactic also applies to hypotheses. If `h : n + 2 = 2` and `h' : n + 3 = 4`
are hypotheses, then
```lean
change _ + 1 = _ at h h'
```
changes their types to be `h : n + 1 + 1 = 2` and `h' : n + 2 + 1 = 4`.

Change is like `refine` in that every placeholder needs to be solved for by unification,
but using named placeholders or `?_` results in `change` to creating new goals.

The tactic `show e` is interchangeable with `change e`, where the pattern `e` is applied to
the main goal. -/
@[builtin_tactic change] def evalChange : Tactic
  | `(tactic| change $newType:term $[$loc:location]?) => do
    withLocation (expandOptLocation (Lean.mkOptionalNode loc))
      (atLocal := fun h => do
        let (hTy', mvars) ← withCollectingNewGoalsFrom (elabChange (← h.getType) newType) (← getMainTag) `change
        liftMetaTactic fun mvarId => do
          return (← mvarId.changeLocalDecl h hTy') :: mvars)
      (atTarget := do
        let (tgt', mvars) ← withCollectingNewGoalsFrom (elabChange (← getMainTarget) newType) (← getMainTag) `change
        liftMetaTactic fun mvarId => do
          return (← mvarId.replaceTargetDefEq tgt') :: mvars)
      (failed := fun _ => throwError "'change' tactic failed")
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
````
