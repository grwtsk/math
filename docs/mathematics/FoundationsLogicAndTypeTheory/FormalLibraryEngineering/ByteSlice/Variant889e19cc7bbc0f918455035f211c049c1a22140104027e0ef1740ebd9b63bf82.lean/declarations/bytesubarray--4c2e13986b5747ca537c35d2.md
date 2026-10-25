# ByteSubarray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89fce3ae58353dea0f743db02d3e77163b274ff1d662fdce43d0c636477ec2e3",
  "kind": "structure",
  "lexical_name": "ByteSubarray",
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
  "slug": "bytesubarray--4c2e13986b5747ca537c35d2",
  "source": {
    "blob": "556342243f755da7a7a883058a54af294bd6ac09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c2e13986b5747ca537c35d28168caf0450752a2042427e471336ddad682c0fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89fce3ae58353dea0f743db02d3e77163b274ff1d662fdce43d0c636477ec2e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ByteSubarray where
  /-- `O(1)`. Get data array of a `ByteSubarray`. -/
  array : ByteArray
  /-- `O(1)`. Get start index of a `ByteSubarray`. -/
  start : Nat
  /-- `O(1)`. Get stop index of a `ByteSubarray`. -/
  stop : Nat
  /-- Start index is before stop index. -/
  start_le_stop : start ≤ stop
  /-- Stop index is before end of data array. -/
  stop_le_array_size : stop ≤ array.size

namespace ByteSubarray
set_option linter.deprecated false

attribute [deprecated ByteSlice.byteArray (since := "2025-10-04")]
  ByteSubarray.array

attribute [deprecated ByteSlice.start (since := "2025-10-04")]
  ByteSubarray.start

attribute [deprecated ByteSlice.stop (since := "2025-10-04")]
  ByteSubarray.stop

attribute [deprecated ByteSlice.start_le_stop (since := "2025-10-04")]
  ByteSubarray.start_le_stop

attribute [deprecated ByteSlice.stop_le_size_byteArray (since := "2025-10-04")]
  ByteSubarray.stop_le_array_size

/-- `O(1)`. Get the size of a `ByteSubarray`. -/
@[deprecated ByteSlice.size (since := "2025-10-04")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ByteSlice/Variant889e19cc7bbc0f918455035f211c049c1a22140104027e0ef1740ebd9b63bf82.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `556342243f755da7a7a883058a54af294bd6ac09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
