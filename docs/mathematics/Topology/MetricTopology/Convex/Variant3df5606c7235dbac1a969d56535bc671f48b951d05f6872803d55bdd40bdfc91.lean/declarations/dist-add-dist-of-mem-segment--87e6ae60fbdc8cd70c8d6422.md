# dist_add_dist_of_mem_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b17d04d81672d182136cad03c1bb2a56ce72a2d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f8a93fc-831d-b1ea-5130-c63e84107a1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:095f85ff-b404-91fe-2379-89155b1af58f",
  "kind": "theorem",
  "lexical_name": "dist_add_dist_of_mem_segment",
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
  "slug": "dist-add-dist-of-mem-segment--87e6ae60fbdc8cd70c8d6422",
  "source": {
    "blob": "b17d04d81672d182136cad03c1bb2a56ce72a2d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e6ae60fbdc8cd70c8d6422225b39d607f355e4b8be0860c5916f761c154816",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095f85ff-b404-91fe-2379-89155b1af58f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_add_dist_of_mem_segment {x y z : E} (h : y ∈ [x -[ℝ] z]) :
    dist x y + dist y z = dist x z :=
  (mem_segment_iff_wbtw.1 h).dist_add_dist

end SeminormedAddCommGroup

section NormedAddCommGroup
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E] {s : Set E} {x : E}

/-- We can intercalate a simplex between a point and one of its neighborhoods. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Convex/Variant3df5606c7235dbac1a969d56535bc671f48b951d05f6872803d55bdd40bdfc91.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17d04d81672d182136cad03c1bb2a56ce72a2d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
