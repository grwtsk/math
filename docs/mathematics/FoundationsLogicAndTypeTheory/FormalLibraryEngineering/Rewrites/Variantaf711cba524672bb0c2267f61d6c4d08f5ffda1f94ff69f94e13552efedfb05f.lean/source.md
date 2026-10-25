# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrites.Variantaf711cba524672bb0c2267f61d6c4d08f5ffda1f94ff69f94e13552efedfb05f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c5ab455ca0fec3fad57810010794e524db4825c` · SHA-256 `aea64d57995b8ceb95a8cd474a784bbde3560470278288e1bca48f81ab613604`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalExact.Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalExact.Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Rewrites.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Elab.Tactic.Location
public import Lean.Meta.Tactic.Replace
public import Lean.Meta.Tactic.Rewrites


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalExact.Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785

public section

/-!
# The `rewrites` tactic.

`rw?` tries to find a lemma which can rewrite the goal.

`rw?` should not be left in proofs; it is a search tool, like `apply?`.

Suggestions are printed as `rw [h]` or `rw [← h]`.

-/
namespace Lean.Elab.Rewrites

open Lean Meta Rewrites
open Lean.Parser.Tactic

open Lean Elab Tactic

@[builtin_tactic Lean.Parser.Tactic.rewrites?]
def evalExact : Tactic := fun stx => do
  let `(tactic| rw?%$tk $[$loc]? $[[ $[-$forbidden],* ]]?) := stx
        | throwUnsupportedSyntax
  let moduleRef ← createModuleTreeRef
  let forbidden : NameSet :=
    ((forbidden.getD #[]).map Syntax.getId).foldl (init := ∅) fun s n => s.insert n
  reportOutOfHeartbeats `findRewrites tk
  let goal ← getMainGoal
  withLocation (expandOptLocation (Lean.mkOptionalNode loc))
    fun f => do
      let some a ← f.findDecl? | return
      if a.isImplementationDetail then return
      let target ← instantiateMVars (← f.getType)
      let hyps ← localHypotheses (except := [f])
      let results ← findRewrites hyps moduleRef goal target (stopAtRfl := false) forbidden
      reportOutOfHeartbeats `rewrites tk
      if results.isEmpty then
        throwError "Could not find any lemmas which can rewrite the hypothesis {← f.getUserName}"
      for r in results do withMCtx r.mctx do
        Tactic.TryThis.addRewriteSuggestion tk [(r.expr, r.symm)]
          (type? := .some r.result.eNew) (loc? := .some (.fvar f))
          (origSpan? := ← getRef) (checkState? := (← saveState))
      if let some r := results[0]? then
        setMCtx r.mctx
        let replaceResult ← goal.replaceLocalDecl f r.result.eNew r.result.eqProof
        replaceMainGoal (replaceResult.mvarId :: r.result.mvarIds)
    do
      let target ← instantiateMVars (← goal.getType)
      let hyps ← localHypotheses
      let results ← findRewrites hyps moduleRef goal target (stopAtRfl := true) forbidden
      reportOutOfHeartbeats `rewrites tk
      if results.isEmpty then
        throwError "Could not find any lemmas which can rewrite the goal"
      let mut state ← saveState
      if let some r := results[0]? then
        setMCtx r.mctx
        -- We must save the state after setting the metavar context so we can instantiate
        -- mvars in the expected type
        state ← saveState
        replaceMainGoal
          ((← goal.replaceTargetEq r.result.eNew r.result.eqProof) :: r.result.mvarIds)
        evalTactic (← `(tactic| try rfl))
      results.forM (·.addSuggestion tk (checkState? := state))
    (fun _ => throwError "Failed to find a rewrite for some location")

end Lean.Elab.Rewrites
```
