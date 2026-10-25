# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88abe78960fcfd736cae724c284e5527d9d57a0a11d4c7af34f691bd7f993f0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b6ce2dc2357e531726b8c8e3",
  "source": {
    "blob": "290830e74d17e34cd326500548be68ed6a44f237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FileSource/Variant9438e1c5dd7a41d4fce234e9f208ec5b44dd15b46964161dc19289797ffef12c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6ce2dc2357e531726b8c8e321245f8230b26bd279e7de31a38285eaa70f58a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FileSource/Variant9438e1c5dd7a41d4fce234e9f208ec5b44dd15b46964161dc19289797ffef12c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88abe78960fcfd736cae724c284e5527d9d57a0a11d4c7af34f691bd7f993f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FileSource DocumentColorParams where
  fileSource p := fileSource p.textDocument

/--
Yields the file source of `item` by attempting to obtain `mod : Name` from `item.data?`. \
Panics if `item.data?` is not present or does not contain a `mod` field and the first element of a
`data?` array cannot be parsed to `Name`.
Used when `completionItem/resolve` requests pass the watchdog to decide which file worker to forward
the request to.
Since this function can panic and clients typically send `completionItem/resolve` requests for every
selected completion item, all completion items returned by the server in `textDocument/completion`
requests must have a `data?` field that has a `mod` field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FileSource/Variant9438e1c5dd7a41d4fce234e9f208ec5b44dd15b46964161dc19289797ffef12c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FileSource/Variant9438e1c5dd7a41d4fce234e9f208ec5b44dd15b46964161dc19289797ffef12c.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290830e74d17e34cd326500548be68ed6a44f237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
