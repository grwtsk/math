# Goal.traceMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8884d036785224d363996ae023a4767329231864e9f9ddb813ce8ccd85b25ed4",
  "kind": "def",
  "lexical_name": "Goal.traceMetadata",
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
  "slug": "goal-tracemetadata--52100472279ffc893ed608e8",
  "source": {
    "blob": "1a3b9b6343b37cf2748c8ddcd3ba4466297f5cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variante17bab4a5c0e98853c231b9221d02491402793a50ab8706f14949f63d4ff93f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52100472279ffc893ed608e865dc4b296032676662f81e4039441270e1fdc3b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variante17bab4a5c0e98853c231b9221d02491402793a50ab8706f14949f63d4ff93f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8884d036785224d363996ae023a4767329231864e9f9ddb813ce8ccd85b25ed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Goal.traceMetadata (g : Goal) (traceOpt : TraceOption) : MetaM Unit := do
  if ! (← traceOpt.isEnabled) then
    return
  trc m!"ID: {g.id}"
  trcNode m!"Pre-normalisation goal ({g.preNormGoal.name}):" do
    g.runMetaMInParentState' do
      trc m!"{g.preNormGoal}"
  match g.postNormGoalAndMetaState? with
  | none =>
    trc m!"Post-normalisation goal: <goal not normalised>"
  | some (goal, state) =>
    state.runMetaM' do
      trcNode m!"Post-normalisation goal ({goal.name}):" do
        trc m!"{goal}"
  trc m!"Metavariables: {g.mvars.toArray.map (·.name)}"
  trc m!"Parent rapp:  {← (← g.parentRapp?).mapM λ rref => (·.id) <$> rref.get}"
  trc m!"Child rapps:  {← g.children.mapM λ rref => (·.id) <$> rref.get}"
  trc m!"Origin: {g.origin.toString}"
  trc m!"Depth: {g.depth}"
  trc m!"State: {g.state.toEmoji} {g.state}"
  trc m!"Forward rule matches: {g.forwardRuleMatches.size}"
  trc m!"Irrelevant: {toYesNo g.isIrrelevant}"
  trc m!"Forced unprovable: {toYesNo g.isForcedUnprovable}"
  trc m!"Added in iteration: {g.addedInIteration}"
  trc m!"Last expanded in iteration: {if g.lastExpandedInIteration == .none then "never" else toString $ g.lastExpandedInIteration}"
  trcNode m!"Forward state" do
    match g.postNormGoalAndMetaState? with
    | some (mvarId, metaState) =>
      metaState.runMetaM' do mvarId.withContext do
        trc $ toMessageData g.forwardState
    | none =>
      g.runMetaMInParentState' do g.preNormGoal.withContext do
        trc $ toMessageData g.forwardState
  if g.unsafeRulesSelected then
    if g.unsafeQueue.isEmpty then
      trc m!"Unsafe rule queue: <empty>"
    else
      trcNode m!"Unsafe rule queue:" do
        for r in g.unsafeQueue.toArray do
          trc m!"[{r.successProbability.toHumanString}] {r.name}"
  else
    trc m!"Unsafe rule queue: <not selected>"
  if g.failedRapps.isEmpty then
    trc m!"Failed rules: <none>"
  else
    trcNode m!"Failed rules:" do
      for r in g.failedRapps do
        trc m!"[{r.successProbability.toHumanString}] {r.name}"
  where
    trc msg : MetaM Unit := do aesop_trace![traceOpt] msg

    trcNode msg (k : MetaM Unit) : MetaM Unit :=
      withConstAesopTraceNode traceOpt (return msg) k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variante17bab4a5c0e98853c231b9221d02491402793a50ab8706f14949f63d4ff93f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variante17bab4a5c0e98853c231b9221d02491402793a50ab8706f14949f63d4ff93f6.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a3b9b6343b37cf2748c8ddcd3ba4466297f5cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
