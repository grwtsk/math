# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f79489c407865779433b496d67ee4bec80888b949110402e12b5ae0baa8c9b05",
  "kind": "elab_rules",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "elab-rules--72827c39a1139ecb08cd067c",
  "source": {
    "blob": "a3a16b14d71ff1cfe2d002be266de87cb60fe680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72827c39a1139ecb08cd067c8694c4f56c4800552d791ae927064576b25b166e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f79489c407865779433b496d67ee4bec80888b949110402e12b5ae0baa8c9b05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic |
    `(tactic| rw?%$tk $[!%$lucky]? $[$loc]?) => do
  let lems ← rewriteLemmas.get
  reportOutOfHeartbeats `rewrites tk
  let goal ← getMainGoal
  -- TODO fix doc of core to say that * fails only if all failed
  withLocation (expandOptLocation (Lean.mkOptionalNode loc))
    fun f => do
      let some a ← f.findDecl? | return
      if a.isImplementationDetail then return
      let target ← instantiateMVars (← f.getType)
      let hyps ← localHypotheses (except := [f])
      let results ← rewrites hyps lems goal target (stopAtRfl := false)
      reportOutOfHeartbeats `rewrites tk
      if results.isEmpty then
        throwError "Could not find any lemmas which can rewrite the hypothesis {
          ← f.getUserName}"
      for r in results do withMCtx r.mctx do
        addRewriteSuggestion tk [(r.expr, r.symm)]
          r.result.eNew (loc? := .some (.fvar f)) (origSpan? := ← getRef)
      if lucky.isSome then
        match results[0]? with
        | some r => do
            setMCtx r.mctx
            let replaceResult ← goal.replaceLocalDecl f r.result.eNew r.result.eqProof
            replaceMainGoal (replaceResult.mvarId :: r.result.mvarIds)
        | _ => failure
    -- See https://github.com/leanprover/lean4/issues/2150
    do withMainContext do
      let target ← instantiateMVars (← goal.getType)
      let hyps ← localHypotheses
      let results ← rewrites hyps lems goal target (stopAtRfl := true)
      reportOutOfHeartbeats `rewrites tk
      if results.isEmpty then
        throwError "Could not find any lemmas which can rewrite the goal"
      for r in results do withMCtx r.mctx do
        let newGoal := if r.rfl? = some true then Expr.lit (.strVal "no goals") else r.result.eNew
        addRewriteSuggestion tk [(r.expr, r.symm)]
          newGoal (origSpan? := ← getRef)
      if lucky.isSome then
        match results[0]? with
        | some r => do
            setMCtx r.mctx
            replaceMainGoal
              ((← goal.replaceTargetEq r.result.eNew r.result.eqProof) :: r.result.mvarIds)
            evalTactic (← `(tactic| try rfl))
        | _ => failure
    (fun _ => throwError "Failed to find a rewrite for some location")

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant150707fa5f25c70c5083eff4c578c657dd46c1fad99cc0d36088cc6525e1f239.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a16b14d71ff1cfe2d002be266de87cb60fe680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
