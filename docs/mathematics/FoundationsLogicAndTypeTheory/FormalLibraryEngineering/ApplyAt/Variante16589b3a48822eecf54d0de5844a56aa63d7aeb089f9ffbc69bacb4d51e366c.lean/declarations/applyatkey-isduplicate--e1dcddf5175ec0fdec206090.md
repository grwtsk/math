# ApplyAtKey.isDuplicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:505e654a1412c139b7bc668a50963b2abfbbac79a489ed790f1a20c060332199",
  "kind": "def",
  "lexical_name": "ApplyAtKey.isDuplicate",
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
  "slug": "applyatkey-isduplicate--e1dcddf5175ec0fdec206090",
  "source": {
    "blob": "ce0b4aa4cb232999bf8fb7c28403b90e59366821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyAt/Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1dcddf5175ec0fdec206090fdee3e2d03a3423b9a4bf91685743bb5b8c62eb1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyAt/Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:505e654a1412c139b7bc668a50963b2abfbbac79a489ed790f1a20c060332199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ApplyAtKey.isDuplicate (a b : ApplyAtKey) : MetaM Bool :=
  pure (a.newGoals.size == b.newGoals.size) <&&>
  a.newGoals.size.allM fun i _ =>
    pure (a.newGoals[i]!.mvars.size == b.newGoals[i]!.mvars.size)
      <&&> isExplicitEq a.newGoals[i]!.expr b.newGoals[i]!.expr

/-- Return the `apply` tactic that performs the application. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyAt/Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyAt/Variante16589b3a48822eecf54d0de5844a56aa63d7aeb089f9ffbc69bacb4d51e366c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0b4aa4cb232999bf8fb7c28403b90e59366821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
