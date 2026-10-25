# CompactedRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8431de3bea615f2daa380281f61d1c2d97c3032d08ce7bf523f9eec54f87949f",
  "kind": "structure",
  "lexical_name": "CompactedRegion",
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
  "slug": "compactedregion--cd6f5ba88cf598edbe243546",
  "source": {
    "blob": "e8b1649dc3be15e24f49a24d262f65269935449a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd6f5ba88cf598edbe24354699e2b72c43e7f4a6f0e4fb228a3f6362fd54e9fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8431de3bea615f2daa380281f61d1c2d97c3032d08ce7bf523f9eec54f87949f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure CompactedRegion where
  /-- Path the region was loaded from. -/
  filePath       : System.FilePath
  /-- Size in bytes of the region's mapping (the backing `.olean` file). -/
  size           : USize
  /-- Whether the region's buffer is backed by a memory mapping of its file. -/
  isMemoryMapped : Bool
  /--
  Logical base address the region's mapping is relative to (`olean_header.base_addr`), used to
  translate cross-region pointers when this region is used as a dependency.
  -/
  private baseAddr     : USize
  /--
  Byte offset of the region's root object from the start of the mapping; `root - bufferOffset`
  recovers the mapping base (the address to unmap/free and the start of the dependency range).
  -/
  private bufferOffset : USize
  /--
  Pointer to the region's root object. A plain pointer into the data buffer (not an external handle),
  so the object compactor relocates it as a cross-region pointer when the region is embedded in
  compacted data with itself supplied as a `depRegion`.
  -/
  private root         : NonScalar
  deriving Nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variante324b00e6bca08f3de79b18db3b1afa1f13e7896f754bb35e38c2396f4d71d27.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b1649dc3be15e24f49a24d262f65269935449a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
