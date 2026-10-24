# ofComapInfPrincipal_eq_of_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 532,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d7f6aee-7a0d-bc31-6c7f-1d03e81b5a00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68daf271-fbcc-3b39-94a1-3d145bacafbe",
  "kind": "theorem",
  "lexical_name": "ofComapInfPrincipal_eq_of_map",
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
  "slug": "ofcomapinfprincipal-eq-of-map--62ef1c9dc10092743948d838",
  "source": {
    "blob": "3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 532,
    "path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ef1c9dc10092743948d838cf25a5cd52f1d8cef9e6f7e13399a2579e28fb90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68daf271-fbcc-3b39-94a1-3d145bacafbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofComapInfPrincipal_eq_of_map (h : m '' s ∈ g) : (ofComapInfPrincipal h).map m = g := by
  let f := Filter.comap m g ⊓ 𝓟 s
  haveI : f.NeBot := comap_inf_principal_neBot_of_image_mem h
  apply eq_of_le
  calc
    Filter.map m (of f) ≤ Filter.map m f := map_mono (of_le _)
    _ ≤ (Filter.map m <| Filter.comap m g) ⊓ Filter.map m (𝓟 s) := map_inf_le
    _ = (Filter.map m <| Filter.comap m g) ⊓ (𝓟 <| m '' s) := by rw [map_principal]
    _ ≤ ↑g ⊓ (𝓟 <| m '' s) := inf_le_inf_right _ map_comap_le
    _ = ↑g := inf_of_le_left (le_principal_iff.mpr h)
#align ultrafilter.of_comap_inf_principal_eq_of_map Ultrafilter.ofComapInfPrincipal_eq_of_map

end Ultrafilter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
