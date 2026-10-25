# evalExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c50742ee55517032e54bc43a5e872ecf1dfe327e8776a396c9b24537602718b",
  "kind": "def",
  "lexical_name": "evalExact",
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
  "slug": "evalexact--d1ef1119de0cb8aa29abf79a",
  "source": {
    "blob": "c7efb1821fba9370e7a7a871e4b82612dd361e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1ef1119de0cb8aa29abf79a972cf73b112e2a2718a8fdd4881c2c35fc29182f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c50742ee55517032e54bc43a5e872ecf1dfe327e8776a396c9b24537602718b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7efb1821fba9370e7a7a871e4b82612dd361e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
