# tacGenImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84212a59c292b30ef4f0a4f9c76b4668bd031597ac5f5791bc09e643368a2cb6",
  "kind": "def",
  "lexical_name": "tacGenImpl",
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
  "slug": "tacgenimpl--b2dcc44fcec25ef10dcd8b3a",
  "source": {
    "blob": "ab6a388471377dcb6fe308458b2abd34281f7a47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2dcc44fcec25ef10dcd8b3a7758b7cb0c514d00f10e671e0cfc38e0fae02320",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84212a59c292b30ef4f0a4f9c76b4668bd031597ac5f5791bc09e643368a2cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def tacGenImpl (decl : Name) : RuleTac := λ input => do
  let tacGen ← evalConst TacGen decl
  let initialState ← saveState
  let suggestions ← tacGen input.goal
  let mut apps := Array.mkEmpty suggestions.size
  let mut errors : Array (String × Exception) := Array.mkEmpty suggestions.size
  for (tacticStr, successProbability) in suggestions do
    initialState.restore
    let env ← getEnv
    try
      let some successProbability := Percent.ofFloat successProbability
        | throwError "invalid success probability '{successProbability}', must be between 0 and 1"
      let .ok stx :=
        Parser.runParserCategory env `tactic tacticStr (fileName := "<stdin>")
        | throwError "failed to parse tactic syntax{indentD tacticStr}"
      let postGoals := (← run input.goal (evalTactic stx) |>.run').toArray
      let postState ← saveState
      if let some proof ← getExprMVarAssignment? input.goal then
        if ← hasSorry proof then
          throwError "generated proof contains sorry"
      let step := {
        preState := initialState
        preGoal := input.goal
        tacticBuilders := #[return .unstructured ⟨stx⟩]
        postState, postGoals
      }
      let postGoals ←
        postGoals.mapM (mvarIdToSubgoal (parentMVarId := input.goal) ·)
      apps := apps.push {
        goals := postGoals
        scriptSteps? := some #[step]
        successProbability? := successProbability
        postState
      }
    catch e =>
      errors := errors.push (tacticStr, e)
  if apps.isEmpty then throwError
    "Failed to apply any tactics generated. Errors:{indentD $ MessageData.joinSep (errors.toList.map (λ (tac, e) => m!"{tac}: {e.toMessageData}")) "\n"}"
  return ⟨apps⟩

-- Precondition: `decl` has type `TacGen`.
@[implemented_by tacGenImpl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab6a388471377dcb6fe308458b2abd34281f7a47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
