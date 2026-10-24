# OpenPartialHomeomorph.contMDiffOn_writtenInExtend_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c1b23c0-b412-1c80-e73d-8320f0e62c54",
  "kind": "theorem",
  "lexical_name": "OpenPartialHomeomorph.contMDiffOn_writtenInExtend_iff",
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
  "slug": "openpartialhomeomorph-contmdiffon-writteninextend-iff--a4b4d7a76291c4078710a0f2",
  "source": {
    "blob": "ad9e9e2f37971c08ea58b43623753afceb4c3a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 386,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b4d7a76291c4078710a0f2f907a94c2b0825a96f6351dfa157fb83cd5f8a98",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c1b23c0-b412-1c80-e73d-8320f0e62c54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OpenPartialHomeomorph.contMDiffOn_writtenInExtend_iff
    (hφ : φ ∈ maximalAtlas I n M) (hψ : ψ ∈ maximalAtlas J n N)
    (hs : s ⊆ φ.source) (hmaps : MapsTo f s ψ.source) :
    ContMDiffOn 𝓘(𝕜, E) 𝓘(𝕜, F) n (ψ.extend J ∘ f ∘ (φ.extend I).symm) (φ.extend I '' s) ↔
      ContMDiffOn I J n f s := by
  refine forall_mem_image.trans <| forall₂_congr fun x hx ↦ ?_
  refine (contMDiffWithinAt_congr_set ?_).trans
    (contMDiffWithinAt_writtenInExtend_iff hφ hψ (hs hx) (hmaps hx) hmaps)
  rw [← nhdsWithin_eq_iff_eventuallyEqSet, ← φ.map_extend_nhdsWithin_eq_image_of_subset,
    ← φ.map_extend_nhdsWithin]
  exacts [hs hx, hs hx, hs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant55b64c6be24844290b3039f64e8191d23cbcb683c3b64ca1b70a868f0ef12389.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9e9e2f37971c08ea58b43623753afceb4c3a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
