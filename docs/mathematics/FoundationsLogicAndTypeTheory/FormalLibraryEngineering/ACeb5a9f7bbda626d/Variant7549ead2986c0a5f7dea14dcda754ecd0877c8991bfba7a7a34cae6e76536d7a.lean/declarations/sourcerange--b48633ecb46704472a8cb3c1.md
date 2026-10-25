# SourceRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:540c06e6ce7d5d93413fe6578086f5e7f8b075efe84882540cdb8ec2077c5889",
  "kind": "structure",
  "lexical_name": "SourceRange",
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
  "slug": "sourcerange--b48633ecb46704472a8cb3c1",
  "source": {
    "blob": "8610b6830859b7b86740547f9fc50e1df5256ee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACeb5a9f7bbda626d/Variant7549ead2986c0a5f7dea14dcda754ecd0877c8991bfba7a7a34cae6e76536d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b48633ecb46704472a8cb3c1eb0a8e5a8a523a130efdef6900b3c1f07403da59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACeb5a9f7bbda626d/Variant7549ead2986c0a5f7dea14dcda754ecd0877c8991bfba7a7a34cae6e76536d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:540c06e6ce7d5d93413fe6578086f5e7f8b075efe84882540cdb8ec2077c5889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceRange where
  start : SourcePosition
  stop : SourcePosition
  deriving DecidableEq, Repr, Inhabited

end MathDiscovery.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACeb5a9f7bbda626d/Variant7549ead2986c0a5f7dea14dcda754ecd0877c8991bfba7a7a34cae6e76536d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ACeb5a9f7bbda626d/Variant7549ead2986c0a5f7dea14dcda754ecd0877c8991bfba7a7a34cae6e76536d7a.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8610b6830859b7b86740547f9fc50e1df5256ee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
