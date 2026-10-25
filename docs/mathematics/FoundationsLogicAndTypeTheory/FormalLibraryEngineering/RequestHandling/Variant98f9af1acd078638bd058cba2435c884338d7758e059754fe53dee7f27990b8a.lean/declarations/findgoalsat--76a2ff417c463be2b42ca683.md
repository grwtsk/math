# findGoalsAt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e91617c885e98ef082dc2f37e799ae2440b02a242d2bf5bb9c579f979999eca5",
  "kind": "def",
  "lexical_name": "findGoalsAt?",
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
  "slug": "findgoalsat--76a2ff417c463be2b42ca683",
  "source": {
    "blob": "d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76a2ff417c463be2b42ca683a9c24e96b6d9b3dbe77bb07be47d25c851680918",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e91617c885e98ef082dc2f37e799ae2440b02a242d2bf5bb9c579f979999eca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findGoalsAt? (doc : EditableDocument) (hoverPos : String.Pos.Raw) : ServerTask (Option (List Elab.GoalsAtResult)) :=
  let text := doc.meta.text
  findCmdParsedSnap doc hoverPos |>.bindCostly fun
    | some cmdParsed =>
      let t := toSnapshotTree cmdParsed.elabSnap |>.foldSnaps [] fun snap oldGoals => Id.run do
        let some stx := snap.stx?
          | return .pure (oldGoals, .proceed (foldChildren := false))
        let some (pos, tailPos, trailingPos) := getPositions stx
          | return .pure (oldGoals, .proceed (foldChildren := true))
        let snapRange : Lean.Syntax.Range := ⟨pos, trailingPos⟩
        -- When there is no trailing whitespace, we also consider snapshots directly before the
        -- cursor.
        let hasNoTrailingWhitespace := tailPos == trailingPos
        if ! text.rangeContainsHoverPos snapRange hoverPos (includeStop := hasNoTrailingWhitespace) then
          return .pure (oldGoals, .proceed (foldChildren := false))

        return snap.task.asServerTask.mapCheap fun tree => Id.run do
          let some infoTree := tree.element.infoTree?
            | return (oldGoals, .proceed (foldChildren := true))

          let goals := infoTree.goalsAt? text hoverPos
          let optimalSnapRange : Lean.Syntax.Range := ⟨pos, tailPos⟩
          let isOptimalGoalSet :=
            text.rangeContainsHoverPos optimalSnapRange hoverPos
                (includeStop := hasNoTrailingWhitespace)
              || goals.any fun goal => ! goal.indented
          if isOptimalGoalSet then
            return (goals, .done)

          return (goals, .proceed (foldChildren := true))
      t.mapCheap fun
        | []    => none
        | goals => goals
    | none =>
      .pure none
where
  getPositions (stx : Syntax) : Option (String.Pos.Raw × String.Pos.Raw × String.Pos.Raw) := do
    let pos ← stx.getPos? (canonicalOnly := true)
    let tailPos ← stx.getTailPos? (canonicalOnly := true)
    let trailingPos? ← stx.getTrailingTailPos? (canonicalOnly := true)
    return (pos, tailPos, trailingPos?)

open RequestM in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
