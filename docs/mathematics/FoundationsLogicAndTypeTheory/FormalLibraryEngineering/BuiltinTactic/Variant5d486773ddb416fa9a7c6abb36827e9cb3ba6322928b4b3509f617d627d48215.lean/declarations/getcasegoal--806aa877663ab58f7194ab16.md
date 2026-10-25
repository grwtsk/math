# getCaseGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb9f0f7544edbe1d9a3bd4b71f2265fc1551bb71759acd4044479c90c1fdd8b3",
  "kind": "def",
  "lexical_name": "getCaseGoal",
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
  "slug": "getcasegoal--806aa877663ab58f7194ab16",
  "source": {
    "blob": "2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:806aa877663ab58f7194ab164d731f7169fe68f4e2376d7c7a1f8fce94ffc2b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb9f0f7544edbe1d9a3bd4b71f2265fc1551bb71759acd4044479c90c1fdd8b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getCaseGoal (tag : TSyntax ``binderIdent) : GrindTacticM (Goal × List Goal) := do
  let gs ← getUnsolvedGoals
  if let `(binderIdent| $tagId:ident) := tag then
    let tagId := tagId.getId.eraseMacroScopes
    let some g ← findGrindTag? gs tagId | notFound gs tagId
    return (g, gs.filter (·.mvarId != g.mvarId))
  else
    let g ← getMainGoal
    return (g, gs.filter (·.mvarId != g.mvarId))
where
  notFound {α} (available : List Goal) (tag : Name) : GrindTacticM α := do
    let names := (← available.mapM fun g => return (← g.mvarId.getDecl).userName)
      |>.filter (· != .anonymous) |>.eraseDups
    let hint := match names with
      | []      => m!"There are no cases to select."
      | [name]  => m!"The only available case tag is `{name}`."
      | names   => m!"Available tags: {MessageData.joinSep (names.map (m!"`{·}`")) ", "}"
    throwError "Case tag `{tag}` not found.\n{hint}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
