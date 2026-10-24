# clusterPt_comap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "363703f1c317ab357689082bc3ba98132f3f1cfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 489,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e619a26-a2e4-62bb-f6a5-fa7562614b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be3c153c-592f-0cf0-73d9-2509a785cad1",
  "kind": "theorem",
  "lexical_name": "clusterPt_comap_iff",
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
  "slug": "clusterpt-comap-iff--3524f13134eaaeaf642e7fee",
  "source": {
    "blob": "363703f1c317ab357689082bc3ba98132f3f1cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 489,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3524f13134eaaeaf642e7fee001e76d3ffb9da41ae2d64d8d558f45117686a29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be3c153c-592f-0cf0-73d9-2509a785cad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clusterPt_comap_iff (hf : IsOpenMap f) (hfc : Continuous f) {x : X} {l : Filter Y} :
    ClusterPt x (comap f l) ↔ ClusterPt (f x) l :=
  ⟨fun h => h.map hfc.continuousAt tendsto_comap, hf.clusterPt_comap⟩

end IsOpenMap

/-- A map is open if and only if the `Set.kernImage` of every *closed* set is closed.

One way to understand this result is that `f : X → Y` is open if and only if its fibers vary in a
**lower hemicontinuous** way: for any open subset `U ⊆ X`, the set of all `y ∈ Y` such that
`(f ⁻¹' {y} ∩ U).Nonempty` is open in `Y`. See `isOpenMap_iff_lowerHemicontinuous`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363703f1c317ab357689082bc3ba98132f3f1cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
