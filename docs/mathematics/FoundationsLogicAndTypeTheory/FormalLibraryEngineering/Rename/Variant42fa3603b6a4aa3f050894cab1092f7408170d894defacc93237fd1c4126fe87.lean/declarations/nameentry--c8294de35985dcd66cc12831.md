# NameEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52e68d47ed96068f8db994aaa5d81231df0b63af20cfa373506e317c20b33c27",
  "kind": "structure",
  "lexical_name": "NameEntry",
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
  "slug": "nameentry--c8294de35985dcd66cc12831",
  "source": {
    "blob": "6328045e557c0144399a728ab2249f9943575720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8294de35985dcd66cc12831aeef532b742a227589df1de93bbf85f20ee407de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52e68d47ed96068f8db994aaa5d81231df0b63af20cfa373506e317c20b33c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NameEntry where
  /-- The lean 3 name. -/
  n3 : Name
  /-- The lean 4 name, or `.anonymous` for a `#noalign`. -/
  n4 : Name
  /-- If true, this lean 3 -> lean 4 mapping will not be entered into the converse map.
  This is used for "internal" definitions that should never be referred to in the source syntax. -/
  synthetic := false
  /-- A dubious translation is one where there is a type mismatch
  from the translated lean 3 definition to a pre-existing lean 4 definition.
  Type errors are likely in downstream theorems.
  The string stored here is printed in the event that `n3` is encountered by synport. -/
  dubious := ""

/-- Insert a name entry into the `RenameMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6328045e557c0144399a728ab2249f9943575720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
