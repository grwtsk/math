# saturateCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a94fa4ea79f9cb53a152a1b024a4584de872e8b9d547e14826613e8e9d639eb9",
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
  "slug": "saturatecore--607d35c5e112ab4ad736c644",
  "source": {
    "blob": "569dec7e06c03250bc6924a80077271f9e591b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:607d35c5e112ab4ad736c644154f8c5fee2a867a9821523e3ea8c5dfcd30167d",
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

Occurrence: `declaration:a94fa4ea79f9cb53a152a1b024a4584de872e8b9d547e14826613e8e9d639eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def saturateCore (rs : LocalRuleSet) (goal : MVarId) : SaturateM MVarId :=
  withExceptionPrefix "saturate: internal error: " do
  goal.withContext do
    goal.checkNotAssigned `saturate
    let mut queue := ∅
    let (fs, ruleMatches) ← rs.mkInitialForwardState goal
    for m in ruleMatches do
      queue := queue.insert m
    let (fs, ruleMatches) ← fs.update goal (phase? := none)
    for m in ruleMatches do
      queue := queue.insert m
    go ∅ fs queue ∅ goal
where
  go (hypDepths : Std.HashMap FVarId Nat) (fs : ForwardState) (queue : Queue)
      (erasedHyps : Std.HashSet FVarId) (goal : MVarId) : SaturateM MVarId := do
    withIncRecDepth do
    checkSystem "saturate"
    goal.withContext do
      if let some (m, queue) := queue.deleteMin then
        if m.rule.name.phase == .unsafe || m.anyHyp erasedHyps.contains then
          return ← go hypDepths fs queue erasedHyps goal
        trace[saturate] "goal:{indentD goal}"
        let some (goal, hyp, removedHyps) ← profilingRule m.rule.name (·.isSome) do
          m.apply goal (skipExistingProps := true)
          | return ← go hypDepths fs queue erasedHyps goal
        goal.withContext do
          -- TODO use applyGoalDiff
          let fs ← profilingForwardState do
            return removedHyps.foldl (init := fs) λ fs h => fs.eraseHyp h
          let type ← hyp.getType
          let erasedHyps := erasedHyps.insertMany removedHyps
          let mut depth := 0
          let mut hypDepths := hypDepths
          let maxDepth? := (← read).options.forwardMaxDepth?
          if maxDepth?.isSome then
            depth := 1 + m.foldHyps (init := 0) λ depth h =>
              max depth (hypDepths[h]?.getD 0)
            hypDepths := hypDepths.insert hyp depth
          trace[saturate] "added hyp (depth {depth}) {Expr.fvar hyp} : {type}"
          if maxDepth?.isSome && depth ≥ maxDepth?.get! then
            go hypDepths fs queue erasedHyps goal
          else
            let rules ← profilingRuleSelection do
              rs.applicableForwardRules type
            let fs ← profilingForwardState do
              let patInsts ←
                rs.forwardRulePatternSubstsInLocalDecl (← hyp.getDecl)
              return fs.enqueueHypWithPatSubsts hyp rules patInsts
            let (fs, ruleMatches) ← fs.update goal (phase? := none)
            let queue :=
              ruleMatches.foldl (init := queue) λ queue m => queue.insert m
            go hypDepths fs queue erasedHyps goal
      else
        return goal

end Stateful

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569dec7e06c03250bc6924a80077271f9e591b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
