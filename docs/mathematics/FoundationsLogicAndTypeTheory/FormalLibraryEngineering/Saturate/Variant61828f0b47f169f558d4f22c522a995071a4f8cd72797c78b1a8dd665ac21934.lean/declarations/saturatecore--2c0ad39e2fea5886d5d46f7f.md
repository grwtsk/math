# saturateCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7360b9a2e9aca169d65b2577ae70f7c45b7002685817fe585dcf5fdc79ee75d",
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
  "slug": "saturatecore--2c0ad39e2fea5886d5d46f7f",
  "source": {
    "blob": "569dec7e06c03250bc6924a80077271f9e591b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c0ad39e2fea5886d5d46f7f89f6fd28f1cd027a45187b52e80fc23f7abd51bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7360b9a2e9aca169d65b2577ae70f7c45b7002685817fe585dcf5fdc79ee75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–134.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569dec7e06c03250bc6924a80077271f9e591b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
