# value_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33fc797ff29fbc528857f99e438f6bc5aede599a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b0bd8e1-aa76-dc35-27d5-03ba84c5279c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69390304-d073-7036-a542-346e68b8038e",
  "kind": "theorem",
  "lexical_name": "value_mem_Icc",
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
  "slug": "value-mem-icc--d5653ea6d54c51c7b112ca95",
  "source": {
    "blob": "33fc797ff29fbc528857f99e438f6bc5aede599a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5653ea6d54c51c7b112ca9577285ee3466c6884b4e8e10bdba6faadc1d95e09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69390304-d073-7036-a542-346e68b8038e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem value_mem_Icc
    (raster : ContinuousTerrainRaster mesh charge)
    (p : M.CarrierPoint)
    (i : Fin charge.channels) :
    raster.field p i ∈ Set.Icc (0 : ℝ) 1 :=
  raster.field_bounds p i

/-- The concrete barycentric law used on each declared cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33fc797ff29fbc528857f99e438f6bc5aede599a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
