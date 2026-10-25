# shouldInferBinderName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bef56043a27bb9fb843e242072c1793d287d45d387c807205a1a03f873af675",
  "kind": "def",
  "lexical_name": "shouldInferBinderName",
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
  "slug": "shouldinferbindername--02bb7a498ddde8db257daf95",
  "source": {
    "blob": "ce0c213fd55af28d4f2de47dba8490620f0aff6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02bb7a498ddde8db257daf950457105ea1690395e13fa3ba744d3d1a5a4aefa1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bef56043a27bb9fb843e242072c1793d287d45d387c807205a1a03f873af675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def shouldInferBinderName (x : Expr) : m Bool := do
  match x with
  | .mvar mvarId => return (← mvarId.getDecl).userName.isAnonymous
  | _ => return false

/--
  Auxiliary method for (temporarily) setting the user facing name of metavariables.
  Let `?m` be a metavariable in `isTarget.contains ?m`, and `?m` does not have a user facing name.
  Then, we try to find an application `f ... ?m` in `e`, and (temporarily) use the
  corresponding parameter name (with a fresh macro scope) as the user facing name for `?m`.
  This method returns all metavariables whose user facing name has been updated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant15cc18f25f2c7a2dc5b0295ffcaaa176895d02a408699f7b0f7968edc4a40f00.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0c213fd55af28d4f2de47dba8490620f0aff6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
