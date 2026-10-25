# CompactedRegion.save

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:981261cd8cd25e5766fb424ee2cad64e33a0bf3c0ad7af8deb654f5e8e441b12",
  "kind": "opaque",
  "lexical_name": "CompactedRegion.save",
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
  "slug": "compactedregion-save--1c2c9e5816f5788d629de990",
  "source": {
    "blob": "e8b1649dc3be15e24f49a24d262f65269935449a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c2c9e5816f5788d629de990ca64ed774e552fb53634b25b12c6913051b73c57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:981261cd8cd25e5766fb424ee2cad64e33a0bf3c0ad7af8deb654f5e8e441b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public unsafe opaque CompactedRegion.save {α : Type} (fname : @& System.FilePath) (key : @& Name)
    (data : @& α) (depRegions : @& Array CompactedRegion) (prev : Option Compactor)
    (allowClosures := false) : IO Compactor

/--
Reads a compacted region from disk.

`depRegions` are existing compacted regions whose address ranges are needed for cross-region
pointer fixup. The result is the root object reinterpreted at type `α` paired with the new
`CompactedRegion`. Unsafe because `α` is type-erased at the extern boundary: it is the caller's
responsibility to ensure `α` matches the type the data was saved at; mismatched types yield
undefined behavior on use.
-/
@[extern "lean_compacted_region_read"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b1649dc3be15e24f49a24d262f65269935449a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
