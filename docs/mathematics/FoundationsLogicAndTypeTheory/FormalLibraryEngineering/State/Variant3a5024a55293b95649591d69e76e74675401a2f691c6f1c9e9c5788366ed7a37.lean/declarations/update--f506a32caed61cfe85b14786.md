# update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bf8c9b5b59e533d658e4a373d50257d184194a7d3fee0165478c67e605d38f2",
  "kind": "def",
  "lexical_name": "update",
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
  "slug": "update--f506a32caed61cfe85b14786",
  "source": {
    "blob": "74d8fdc9f1b41015680168a96479c29275caaba7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 708,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f506a32caed61cfe85b14786bc445274a7e91f44e714646df3801dc63f766a5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bf8c9b5b59e533d658e4a373d50257d184194a7d3fee0165478c67e605d38f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 708–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def update (goal : MVarId) (rs : RuleState) : BaseM (RuleState × Array ForwardRuleMatch) :=
  withAesopTraceNode .forward (fun _ => return m!"update rule state {rs.rule.name}") do
  if ! rs.clusterStates.all (·.haveHypForEachSlot) then
    aesop_trace[forward] "skipping update since some cluster states cannot yet have complete matches"
    return (rs, #[])
  goal.withContext do
  withNewMCtxDepth do
    let some ruleExpr ←
      withConstAesopTraceNode .forwardDebug (return m!"elab rule term") do
        show MetaM _ from observing? $ elabForwardRuleTerm goal rs.rule.term
      | return (rs, #[])
    let lmvars := collectLevelMVars {} ruleExpr |>.result
    if lmvars.size != rs.rule.numLevelParams then
      aesop_trace[forward] "failed to add hyp or pat inst: rule term{indentD $ toMessageData rs.rule.term}\ndoes not have expected number of level mvars {rs.rule.numLevelParams}"
      return (rs, #[])
    let ruleType ← instantiateMVars (← inferType ruleExpr)
    let (premises, _, _) ←
      withConstAesopTraceNode .forwardDebug (return m!"open rule term") do
      withReducible do
        forallMetaTelescope ruleType
    if premises.size != rs.rule.numPremises then
      aesop_trace[forward] "failed to add hyp or pat inst: rule term{indentD $ toMessageData rs.rule.term}\ndoes not have expected number of premises {rs.rule.numPremises}"
      return (rs, #[])
    let premises := premises.map (·.mvarId!)
    let mut rs := rs
    let mut clusterStates := rs.clusterStates
    let mut completeMatches := #[]
    for i in [:clusterStates.size] do
      let cs := clusterStates[i]!
      let (cs, newClusterCompleteMatches) ← withConstAesopTraceNode .forward (return m!"update cluster state {i}") do
        cs.update |>.run premises lmvars
      aesop_trace[forwardDebug] "new cluster complete matches: {newClusterCompleteMatches}"
      clusterStates := clusterStates.set! i cs
      let completeMatches' ←
        withConstAesopTraceNode .forwardDebug (return m!"construct new complete matches") do
          pure <| addCompleteMatches completeMatches clusterStates i newClusterCompleteMatches
      completeMatches := completeMatches ++ completeMatches'
    return ({ rs with clusterStates }, completeMatches)
where
  addCompleteMatches (acc : Array ForwardRuleMatch)
      (clusterStates : Array ClusterState) (clusterIdx : Nat)
      (newClusterCompleteMatches : Array Match) :
      Array ForwardRuleMatch := Id.run do
    if newClusterCompleteMatches.isEmpty || clusterStates.any (·.completeMatches.isEmpty) then
      return #[]
    let rec loop (m : CompleteMatch) (i : Nat) : StateM (Array ForwardRuleMatch) Unit := do
      if h : i < clusterStates.size then
        if i == clusterIdx then
          for cm in newClusterCompleteMatches do
            loop { m with clusterMatches := m.clusterMatches.push cm } (i + 1)
        else
          for cm in clusterStates[i].completeMatches do
            loop { m with clusterMatches := m.clusterMatches.push cm } (i + 1)
      else
        modify fun ms => ms.push <| { rule := rs.rule, «match» := m }
    return loop ∅ 0 |>.run #[] |>.2

/-- Extract stats from a `RuleState`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3a5024a55293b95649591d69e76e74675401a2f691c6f1c9e9c5788366ed7a37.lean#L708).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d8fdc9f1b41015680168a96479c29275caaba7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
