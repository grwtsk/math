# evalAllGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:984dbeb2803f5b3911949ec893022a6c572706f1e5938d7f531ded9d7cde98d9",
  "kind": "def",
  "lexical_name": "evalAllGoals",
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
  "slug": "evalallgoals--8cb922b46eaf1a22d252fdf6",
  "source": {
    "blob": "2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cb922b46eaf1a22d252fdf67cea6d8d367a895f982a3c9f12600c2ff97bb939",
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

Occurrence: `declaration:984dbeb2803f5b3911949ec893022a6c572706f1e5938d7f531ded9d7cde98d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic allGoals] def evalAllGoals : GrindTactic := fun stx => do
  let goals ← getGoals
  let mut goalsNew := #[]
  let mut abort := false
  for goal in goals do
    unless (← goal.mvarId.isAssigned) do
      setGoals [goal]
      let saved ← saveState
      abort ← Grind.tryCatch
        (do
          evalGrindTactic stx[1]
          pure abort)
        (fun ex => do
          if (← read).recover then
            logException ex
            let msgLog ← Core.getMessageLog
            saved.restore
            Core.setMessageLog msgLog
            admitGoal goal.mvarId
            pure true
          else
            throw ex)
      goalsNew := goalsNew ++ (← getUnsolvedGoals)
  if abort then
    throwAbortTactic
  setGoals goalsNew.toList

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
