# orthogonalProjectionFn_vsub_mem_direction_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "007a4cce831fe69c7063e0469906e165e1b4f970",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bddd5f5b-0ff2-5583-d20f-0acefd3aba8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03c29908-7ff2-782c-8189-7786bb19c4da",
  "kind": "theorem",
  "lexical_name": "orthogonalProjectionFn_vsub_mem_direction_orthogonal",
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
  "slug": "orthogonalprojectionfn-vsub-mem-direction-orthogonal--94ea6a967db181de98b5b3a6",
  "source": {
    "blob": "007a4cce831fe69c7063e0469906e165e1b4f970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94ea6a967db181de98b5b3a60fda76649670badc1627215cf2ae53daf1b06698",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03c29908-7ff2-782c-8189-7786bb19c4da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalProjectionFn_vsub_mem_direction_orthogonal {s : AffineSubspace ℝ P} [Nonempty s]
    [s.direction.HasOrthogonalProjection] (p : P) :
    orthogonalProjectionFn s p -ᵥ p ∈ s.directionᗮ :=
  direction_mk' p s.directionᗮ ▸
    vsub_mem_direction (orthogonalProjectionFn_mem_orthogonal p) (self_mem_mk' _ _)

attribute [local instance] AffineSubspace.toAddTorsor

/-- Auxiliary definition for setting up the orthogonal projection. This one is a bundled affine
map; the final `orthogonalProjection` is a continuous affine map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007a4cce831fe69c7063e0469906e165e1b4f970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
