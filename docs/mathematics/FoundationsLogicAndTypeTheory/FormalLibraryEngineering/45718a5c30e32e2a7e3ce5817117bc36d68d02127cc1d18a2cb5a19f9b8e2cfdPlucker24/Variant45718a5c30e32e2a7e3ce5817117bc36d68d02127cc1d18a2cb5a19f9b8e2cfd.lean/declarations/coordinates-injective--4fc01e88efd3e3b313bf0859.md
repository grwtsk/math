# coordinates_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "950b4edbd68c6fbd9e22aeceea7723f5302d1278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6ab75fd-f04d-f85b-4e40-a57b836f3554",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fd17740-608c-bb88-81f4-758bea37fed4",
  "kind": "theorem",
  "lexical_name": "coordinates_injective",
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
  "slug": "coordinates-injective--4fc01e88efd3e3b313bf0859",
  "source": {
    "blob": "950b4edbd68c6fbd9e22aeceea7723f5302d1278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variant45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fc01e88efd3e3b313bf085973d221787e107f5a3cf2195d0ea381d756e0956d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variant45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd17740-608c-bb88-81f4-758bea37fed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinates_injective : Function.Injective coordinates := by
  intro x y h
  rw [coordinates_eq, coordinates_eq] at h
  apply Chart24.ext
  · exact congrArg PluckerCoordinates24.p13 h
  · exact congrArg PluckerCoordinates24.p14 h
  · exact congrArg PluckerCoordinates24.p23 h
  · exact congrArg PluckerCoordinates24.p24 h

/-- Construct chart parameters directly from four entries of a coordinate tuple. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variant45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfdPlucker24/Variant45718a5c30e32e2a7e3ce5817117bc36d68d02127cc1d18a2cb5a19f9b8e2cfd.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `950b4edbd68c6fbd9e22aeceea7723f5302d1278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
