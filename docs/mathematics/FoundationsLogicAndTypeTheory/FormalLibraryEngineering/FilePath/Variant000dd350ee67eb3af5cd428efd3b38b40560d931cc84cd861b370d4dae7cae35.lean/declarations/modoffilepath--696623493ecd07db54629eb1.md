# modOfFilePath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30e33b083d3228bbc84d0506124a608767c381dce9ae6c6629cc8c7098281d6b",
  "kind": "def",
  "lexical_name": "modOfFilePath",
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
  "slug": "modoffilepath--696623493ecd07db54629eb1",
  "source": {
    "blob": "8c0be0a9dce099058b06d4c5ce82c80639e2c77b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:696623493ecd07db54629eb19c70f63149a5244352230e461c8dd6277347dd60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30e33b083d3228bbc84d0506124a608767c381dce9ae6c6629cc8c7098281d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def modOfFilePath (path : FilePath) : Name :=
  let path := removeExts path.normalize.toString
  let path := path.dropSuffix FilePath.pathSeparator.toString
  FilePath.components path.copy |>.foldl .str .anonymous
where
  removeExts (s : String) (i := s.rawEndPos) (e := s.rawEndPos) :=
    if h : i = 0 then
      String.Pos.Raw.extract s 0 e
    else
      have := String.Pos.Raw.prev_lt_of_pos s i h
      let i' := i.prev s
      let c  := i'.get s
      if c == FilePath.pathSeparator then
        String.Pos.Raw.extract s 0 e
      else if c == '.' then
        removeExts s i' i'
      else
        removeExts s i' e
  termination_by i.1

attribute [deprecated "Deprecated without replacement." (since := "2025-08-01")] modOfFilePath
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c0be0a9dce099058b06d4c5ce82c80639e2c77b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
