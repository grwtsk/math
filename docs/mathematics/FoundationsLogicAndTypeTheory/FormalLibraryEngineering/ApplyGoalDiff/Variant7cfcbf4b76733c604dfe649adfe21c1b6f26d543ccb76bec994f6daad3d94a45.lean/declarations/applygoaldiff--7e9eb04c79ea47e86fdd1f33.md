# applyGoalDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdf558efd23247af38ec80c3872bc6c51b6a787f5c17251306da4b5ca610181f",
  "kind": "def",
  "lexical_name": "applyGoalDiff",
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
  "slug": "applygoaldiff--7e9eb04c79ea47e86fdd1f33",
  "source": {
    "blob": "6bcc4da91deec83072f0c2aaa80a91e3318f459f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyGoalDiff/Variant7cfcbf4b76733c604dfe649adfe21c1b6f26d543ccb76bec994f6daad3d94a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e9eb04c79ea47e86fdd1f3319d227cd4402bf2b37e9b65aa41f55c777bdead1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyGoalDiff/Variant7cfcbf4b76733c604dfe649adfe21c1b6f26d543ccb76bec994f6daad3d94a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdf558efd23247af38ec80c3872bc6c51b6a787f5c17251306da4b5ca610181f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyGoalDiff (rs : LocalRuleSet) (diff : GoalDiff) (fs : ForwardState) :
    BaseM ForwardState :=
  profilingForwardState do
  if ! aesop.dev.statefulForward.get (← getOptions) then
    return fs
  let fs ← diff.oldGoal.withContext do
    diff.removedFVars.foldM (init := fs) λ fs h => eraseHyp h fs
  diff.newGoal.withContext do
    let fs ← diff.addedFVars.foldM (init := fs) λ fs h => addHyp h fs
    if diff.targetChanged then
      updateTarget fs
    else
      return fs
where
  eraseHyp (h : FVarId) (fs : ForwardState) : BaseM ForwardState :=
    withConstAesopTraceNode .forward (return m!"erase hyp {Expr.fvar h} ({h.name})") do
      return fs.eraseHyp h

  addHyp (h : FVarId) (fs : ForwardState) : BaseM ForwardState := do
    let rules ← rs.applicableForwardRules (← h.getType)
    let patInsts ← rs.forwardRulePatternSubstsInLocalDecl (← h.getDecl)
    return fs.enqueueHypWithPatSubsts h rules patInsts

  updateTarget (fs : ForwardState) : BaseM ForwardState := do
    let patInsts ← rs.forwardRulePatternSubstsInExpr (← diff.newGoal.getType)
    return fs.enqueueTargetPatSubsts patInsts

end Aesop.ForwardState
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyGoalDiff/Variant7cfcbf4b76733c604dfe649adfe21c1b6f26d543ccb76bec994f6daad3d94a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyGoalDiff/Variant7cfcbf4b76733c604dfe649adfe21c1b6f26d543ccb76bec994f6daad3d94a45.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bcc4da91deec83072f0c2aaa80a91e3318f459f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
