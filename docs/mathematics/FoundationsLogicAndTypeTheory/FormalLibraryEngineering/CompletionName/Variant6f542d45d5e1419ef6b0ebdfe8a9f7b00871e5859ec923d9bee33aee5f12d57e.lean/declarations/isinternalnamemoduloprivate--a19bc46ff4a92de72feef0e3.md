# isInternalNameModuloPrivate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29ba3faf1bda3455bac19f2311fce6b7fe80308bc238e871dbea367c42040d42",
  "kind": "def",
  "lexical_name": "isInternalNameModuloPrivate",
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
  "slug": "isinternalnamemoduloprivate--a19bc46ff4a92de72feef0e3",
  "source": {
    "blob": "93b7b18741b81d0c7cc80e45847372c0d91c8446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionName/Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a19bc46ff4a92de72feef0e3b2307aa89a8a6383ab53973aa0dfba75ebd80266",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionName/Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29ba3faf1bda3455bac19f2311fce6b7fe80308bc238e871dbea367c42040d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isInternalNameModuloPrivate : Name → Bool
  | n@(.str p s) => s.front == '_' && n != privateHeader || isInternalNameModuloPrivate p
  | .num p _ => isInternalNameModuloPrivate p
  | _       => false

/--
Return true if name is blacklisted for completion purposes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionName/Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionName/Variant6f542d45d5e1419ef6b0ebdfe8a9f7b00871e5859ec923d9bee33aee5f12d57e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b7b18741b81d0c7cc80e45847372c0d91c8446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
