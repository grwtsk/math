# connectedComponentIn_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf3a607a-ebd4-9af0-2319-554ab7ad3264",
  "kind": "theorem",
  "lexical_name": "connectedComponentIn_mono",
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
  "slug": "connectedcomponentin-mono--bec6bf9fb284444facb7fcb5",
  "source": {
    "blob": "5fa17d82b172a666f3d23997cd0dc5251cd09238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 675,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bec6bf9fb284444facb7fcb5ce57277ab44a5c85b0e7d241842e424bcf8c6b5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf3a607a-ebd4-9af0-2319-554ab7ad3264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connectedComponentIn_mono (x : α) {F G : Set α} (h : F ⊆ G) :
    connectedComponentIn F x ⊆ connectedComponentIn G x := by
  by_cases hx : x ∈ F
  · rw [connectedComponentIn_eq_image hx, connectedComponentIn_eq_image (h hx), ←
      show ((↑) : G → α) ∘ inclusion h = (↑) from rfl, image_comp]
    exact image_mono ((continuous_inclusion h).image_connectedComponent_subset ⟨x, hx⟩)
  · rw [connectedComponentIn_eq_empty hx]
    exact Set.empty_subset _

/-- The preimage of a connected component of `F` is the union of the connected components of
`f ⁻¹' F` at the points of that preimage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa17d82b172a666f3d23997cd0dc5251cd09238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
