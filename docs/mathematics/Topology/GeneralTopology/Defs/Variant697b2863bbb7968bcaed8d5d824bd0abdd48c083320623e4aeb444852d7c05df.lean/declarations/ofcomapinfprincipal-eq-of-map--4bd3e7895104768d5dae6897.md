# ofComapInfPrincipal_eq_of_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d366e8d-6552-b960-229c-924cb645119b",
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
  "slug": "ofcomapinfprincipal-eq-of-map--4bd3e7895104768d5dae6897",
  "source": {
    "blob": "0163d8ec6daf095d52452697064f74c0acf03322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 391,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant697b2863bbb7968bcaed8d5d824bd0abdd48c083320623e4aeb444852d7c05df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bd3e7895104768d5dae6897fd9f7e54e3b9b05a9385050a2bc498ca63755e29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant697b2863bbb7968bcaed8d5d824bd0abdd48c083320623e4aeb444852d7c05df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d366e8d-6552-b960-229c-924cb645119b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–401.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant697b2863bbb7968bcaed8d5d824bd0abdd48c083320623e4aeb444852d7c05df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant697b2863bbb7968bcaed8d5d824bd0abdd48c083320623e4aeb444852d7c05df.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0163d8ec6daf095d52452697064f74c0acf03322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
