# saturateCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:922ee8ab285bab8bfe28b4d7ce253d9d3bd4b9301a910094272bc82bc96faa6f",
  "kind": "def",
  "lexical_name": "saturateCore",
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
  "slug": "saturatecore--816d35ef6224f76c08f237de",
  "source": {
    "blob": "0905862fd9489b8c1ac7536d807b26caf713522f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:816d35ef6224f76c08f237de056a0d9e990655e00536ddedb275f7ebf7e5b15c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:922ee8ab285bab8bfe28b4d7ce253d9d3bd4b9301a910094272bc82bc96faa6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def saturateCore (rs : LocalRuleSet) (goal : MVarId) : SaturateM MVarId :=
  withExceptionPrefix "saturate: internal error: " do
  goal.checkNotAssigned `saturate
  go goal
where
  go (goal : MVarId) : SaturateM MVarId :=
    withIncRecDepth do
    checkSystem "saturate"
    trace[saturate] "goal {goal.name}:{indentD goal}"
    let mvars := UnorderedArraySet.ofHashSet $ ← goal.getMVarDependencies
    let preState ← show MetaM _ from saveState
    if let some diff ← tryNormRules goal mvars preState then
      go diff.newGoal
    else if let some diff ← trySafeRules goal mvars preState then
      go diff.newGoal
    else
      clearForwardImplDetailHyps goal

  tryNormRules (goal : MVarId) (mvars : UnorderedArraySet MVarId)
      (preState : Meta.SavedState) : SaturateM (Option GoalDiff) :=
    withTraceNode `saturate (fun _ => return m!"trying normalisation rules") do
      let matchResults ←
        withTraceNode `saturate (fun _ => return m!"selecting normalisation rules") do
        profilingRuleSelection do
        rs.applicableNormalizationRulesWith ∅ goal
          (include? := (isForwardOrDestructRuleName ·.name))
      runFirstRule goal mvars preState matchResults

  trySafeRules (goal : MVarId) (mvars : UnorderedArraySet MVarId)
      (preState : Meta.SavedState) : SaturateM (Option GoalDiff) :=
    withTraceNode `saturate (fun _ => return m!"trying safe rules") do
      let matchResults ←
        withTraceNode `saturate (fun _ => return m!"selecting safe rules") do
        profilingRuleSelection do
        rs.applicableSafeRulesWith ∅ goal
          (include? := (isForwardOrDestructRuleName ·.name))
      runFirstRule goal mvars preState matchResults

  runRule {α} (goal : MVarId) (mvars : UnorderedArraySet MVarId)
      (preState : Meta.SavedState) (matchResult : IndexMatchResult (Rule α)) :
      SaturateM (Option (GoalDiff × Option (Array Script.LazyStep))) := do
    withTraceNode `saturate (fun _ => return m!"running rule {matchResult.rule.name}") do
    profilingRule matchResult.rule.name (·.isSome) do
    let input := {
      indexMatchLocations := matchResult.locations
      patternSubsts? := matchResult.patternSubsts?
      options := (← read).options
      goal, mvars
    }
    let tacResult ←
      runRuleTac matchResult.rule.tac.run matchResult.rule.name preState input
    match tacResult with
    | .error exc =>
      trace[saturate] exc.toMessageData
      return none
    | .ok output =>
      let (diff, postState, scriptSteps?) ← getSingleGoal output
      postState.restore
      return (diff, scriptSteps?)

  runFirstRule {α} (goal : MVarId) (mvars : UnorderedArraySet MVarId)
      (preState : Meta.SavedState)
      (matchResults : Array (IndexMatchResult (Rule α))) :
      SaturateM (Option GoalDiff) := do
    for matchResult in matchResults do
      let ruleResult? ← runRule goal mvars preState matchResult
      if let some (diff, scriptSteps?) := ruleResult? then
        if (← read).options.generateScript then
          let some scriptSteps := scriptSteps?
            | throwError "rule '{matchResult.rule.name}' does not support script generation (saturate?)"
          recordScriptSteps scriptSteps
        return some diff
    return none

namespace Stateful

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0905862fd9489b8c1ac7536d807b26caf713522f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
