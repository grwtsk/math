# validate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8de955998720f3d7c5e9aef675210d74933cd99627fdfe60a9553d5ab6833a2",
  "kind": "def",
  "lexical_name": "validate",
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
  "slug": "validate--f5cbc8617eb18b5ff190e1ec",
  "source": {
    "blob": "f23c54fcbf932cf6fdb1985b4556186fa2293073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5cbc8617eb18b5ff190e1ecdafa05463d13015d3ffd25c707c85c2751a6720e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8de955998720f3d7c5e9aef675210d74933cd99627fdfe60a9553d5ab6833a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def validate (step : Step) : MetaM Unit := do
  let preMCtx := step.preState.meta.mctx
  let expectedPostMCtx := step.postState.meta.mctx
  let expectedPostGoals := step.postGoals |>.map (·.goal)
  let tac := step.uTactic
  let (actualPostState, actualPostGoals) ←
    try
      runTacticMCapturingPostState (evalTactic tac) step.preState [step.preGoal]
    catch e =>
      throwError "tactic{indentD step.uTactic}\nfailed with error{indentD e.toMessageData}"
  let actualPostGoals := actualPostGoals.toArray
  unless ← tacticStatesEqualUpToIds preMCtx expectedPostMCtx
      actualPostState.meta.mctx expectedPostGoals actualPostGoals do
    throwError "tactic{indentD tac}\nsucceeded but did not generate expected state. Initial goal:{indentD $ ← fmtGoals step.preState #[step.preGoal]}\nExpected goals:{indentD $ ← fmtGoals step.postState $ step.postGoals.map (·.goal)}\nActual goals:{indentD $ ← fmtGoals actualPostState actualPostGoals}"
where
  fmtGoals (state : Meta.SavedState) (goals : Array MVarId) :
      MetaM MessageData :=
    state.runMetaM' do
      addMessageContext $
        MessageData.joinSep (← goals.mapM (λ g => return m!"{g}")).toList "\n"

end Step

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23c54fcbf932cf6fdb1985b4556186fa2293073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
