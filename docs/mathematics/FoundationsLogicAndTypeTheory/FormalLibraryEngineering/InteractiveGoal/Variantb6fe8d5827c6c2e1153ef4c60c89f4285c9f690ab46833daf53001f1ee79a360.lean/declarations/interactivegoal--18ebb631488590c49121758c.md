# InteractiveGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35370f036b0763ed2b3e9ed51c4fc32cd5581a4d79414c76a3c50b532a66ac3d",
  "kind": "structure",
  "lexical_name": "InteractiveGoal",
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
  "slug": "interactivegoal--18ebb631488590c49121758c",
  "source": {
    "blob": "578a6496da7a973eee47531bf58c0a4f2640dc39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variantb6fe8d5827c6c2e1153ef4c60c89f4285c9f690ab46833daf53001f1ee79a360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18ebb631488590c49121758c3fd62c2ffff70e8be955d358adea93afb504c5d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variantb6fe8d5827c6c2e1153ef4c60c89f4285c9f690ab46833daf53001f1ee79a360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35370f036b0763ed2b3e9ed51c4fc32cd5581a4d79414c76a3c50b532a66ac3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InteractiveGoal extends InteractiveGoalCore where
  /-- The name `foo` in `case foo`, if any. -/
  userName? : Option String
  /-- The symbol to display before the target type. Usually `⊢ ` but `conv` goals use `∣ `
  and it could be extended. -/
  goalPrefix : String
  /-- Identifies the goal (ie with the unique name of the MVar that it is a goal for.) -/
  mvarId : MVarId
  /-- If true, the goal was not present on the previous tactic state. -/
  isInserted? : Option Bool := none
  /-- If true, the goal will be removed on the next tactic state. -/
  isRemoved? : Option Bool := none
  deriving RpcEncodable

/-- An interactive term-mode goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variantb6fe8d5827c6c2e1153ef4c60c89f4285c9f690ab46833daf53001f1ee79a360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variantb6fe8d5827c6c2e1153ef4c60c89f4285c9f690ab46833daf53001f1ee79a360.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `578a6496da7a973eee47531bf58c0a4f2640dc39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
