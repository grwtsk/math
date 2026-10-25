# expandGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:773cf82a470967d042ea43633cb82aaf4026b1484751146f72b5d9285d77d6b8",
  "kind": "def",
  "lexical_name": "expandGoal",
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
  "slug": "expandgoal--d6f34a41c33b7dd2d0c04399",
  "source": {
    "blob": "ec07351f3b5fb86236f1a4bb90dcdb852bf0e2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 240,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6f34a41c33b7dd2d0c0439966e8111cc79c021251aad43206dcc7c151e8e084",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:773cf82a470967d042ea43633cb82aaf4026b1484751146f72b5d9285d77d6b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandGoal (gref : GoalRef) : SearchM Q RuleResult := do
  let provedByNorm ←
    withAesopTraceNode .steps fmtNorm (normalizeGoalIfNecessary gref)
  aesop_trace[steps] do
    unless provedByNorm do
      let (goal, metaState) ←
        (← gref.get).currentGoalAndMetaState (← getRootMetaState)
      metaState.runMetaM' do
        aesop_trace![steps] "Goal after normalisation:{indentD goal}"
  if provedByNorm then
    return .proved #[]
  let safeResult ←
    withAesopTraceNode .steps fmtSafe (runFirstSafeRule gref)
  match safeResult with
  | .succeeded newRapps => return .succeeded newRapps
  | .proved newRapps => return .proved newRapps
  | .failed postponedSafeRules => doUnsafe postponedSafeRules
  | .skipped => doUnsafe #[]
  where
    doUnsafe (postponedSafeRules : Array PostponedSafeRule) :
        SearchM Q RuleResult := do
      withAesopTraceNode .steps fmtUnsafe do
        runFirstUnsafeRule postponedSafeRules gref

    fmtNorm (result : Except Exception Bool) : SearchM Q MessageData :=
      let emoji :=
        match result with
        | .error _ => ruleErrorEmoji
        | .ok true => ruleProvedEmoji
        | .ok false => ruleSuccessEmoji
      return m!"{emoji} Normalisation"

    fmtSafe (result : Except Exception SafeRulesResult) :
        SearchM Q MessageData :=
      return m!"{exceptRuleResultToEmoji (·.toEmoji) result} Safe rules"

    fmtUnsafe (result : Except Exception RuleResult) : SearchM Q MessageData :=
      return m!"{exceptRuleResultToEmoji (·.toEmoji) result} Unsafe rules"

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec07351f3b5fb86236f1a4bb90dcdb852bf0e2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
