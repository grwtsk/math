# CompactedRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50d7fc5bfe618155e1e006be1509c4576a9d67063a365b8d6af9b40a7f09262a",
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
  "slug": "compactedregion--586722fc6b22eaa4c60c549d",
  "source": {
    "blob": "4fc00fa480154e5e1b2dbcf83dd2a2255fb64487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:586722fc6b22eaa4c60c549df03f4edd8f832e04c3d9d4bc732ce82bebe3f955",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50d7fc5bfe618155e1e006be1509c4576a9d67063a365b8d6af9b40a7f09262a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–51.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactedRegion/Variant56ef2a63c2394faefe590b58a5e3bd239589ddb6657a8523e5b0385800043f94.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc00fa480154e5e1b2dbcf83dd2a2255fb64487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
