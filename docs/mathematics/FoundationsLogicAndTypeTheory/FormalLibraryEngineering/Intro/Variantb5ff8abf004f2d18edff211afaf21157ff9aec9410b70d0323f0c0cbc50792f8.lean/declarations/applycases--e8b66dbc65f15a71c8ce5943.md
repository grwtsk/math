# applyCases?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60c347bd35a0bfe6fd24533f52962d87f193d4e609e378e99c5548c7e688aa45",
  "kind": "def",
  "lexical_name": "applyCases?",
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
  "slug": "applycases--e8b66dbc65f15a71c8ce5943",
  "source": {
    "blob": "85653d8956e3ac9952558d4e6fb74ab4eaa4b09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8b66dbc65f15a71c8ce59437bbca7803777b36b5ac213f6dbe22fe6d35fcd6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60c347bd35a0bfe6fd24533f52962d87f193d4e609e378e99c5548c7e688aa45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def applyCases? (goal : Goal) (fvarId : FVarId) (kp : ActionCont) : GrindM (Option ActionResult) := goal.withContext do
  /-
  Remark: we used to use `whnfD`. This was a mistake, we don't want to unfold user-defined abstractions.
  Example: `a ∣ b` is defined as `∃ x, b = a * x`
  -/
  let type ← whnf (← fvarId.getType)
  unless (← isEagerCasesCandidate type) do return none
  if (← cheapCasesOnly) then
    unless (← isCheapInductive type) do return none
  if let .const declName _ := type.getAppFn then
    saveCases declName
  let mvarIds ← cases goal.mvarId (mkFVar fvarId)
  let subgoals := mvarIds.map fun mvarId => { goal with mvarId }
  let mut seqNew : Array (TSyntax `grind) := #[]
  let mut stuckNew : Array Goal := #[]
  for subgoal in subgoals do
    match (← kp subgoal) with
    | .stuck gs => stuckNew := stuckNew ++ gs
    | .closed seq => seqNew := seqNew ++ seq
  if stuckNew.isEmpty then
    return some (.closed seqNew.toList)
  else
    return some (.stuck stuckNew.toList)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85653d8956e3ac9952558d4e6fb74ab4eaa4b09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
