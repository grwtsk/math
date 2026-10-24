# isClosed_image_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa82be51558f7581a6fa7873eea78df06781e000",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1aeebac-0c6f-47ce-707b-e72df5d3a10d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:455174dc-0729-52e7-6e0d-5d0f4c0325a9",
  "kind": "theorem",
  "lexical_name": "isClosed_image_of_isClosed",
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
  "slug": "isclosed-image-of-isclosed--673bea4d3d38352b156e595e",
  "source": {
    "blob": "aa82be51558f7581a6fa7873eea78df06781e000",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 211,
    "path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:673bea4d3d38352b156e595e6589d36bc0d4a8737496abaae2f96fa53f643d84",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:455174dc-0729-52e7-6e0d-5d0f4c0325a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_image_of_isClosed {s : Set M} (hsc : IsClosed s) (hs : s ⊆ support f) :
    IsClosed (extChartAt I c '' s) := by
  rw [f.image_eq_inter_preimage_of_subset_support hs]
  refine ContinuousOn.preimage_isClosed_of_isClosed
    ((continuousOn_extChartAt_symm _).mono f.closedBall_subset) ?_ hsc
  exact IsClosed.inter isClosed_closedBall I.isClosed_range

/-- If `f` is a smooth bump function and `s` closed subset of the support of `f` (i.e., of the open
ball of radius `f.rOut`), then there exists `0 < r < f.rOut` such that `s` is a subset of the open
ball of radius `r`. Formally, `s ⊆ e.source ∩ e ⁻¹' (ball (e c) r)`, where `e = extChartAt I c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant409f719046dca1d88f69ffc13c806a653d197b0514641bfe777d6defe3e8bd23.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa82be51558f7581a6fa7873eea78df06781e000` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
