# ediam_smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af8038672bf3420e9316d19aea958764bcef69c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2681708-acbc-239a-ef05-414e6b9cbb77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cc19f77-fabc-5197-5ccb-efb931621b07",
  "kind": "theorem",
  "lexical_name": "ediam_smul₀",
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
  "slug": "ediam-smul--e00aad2c028f98ad82cc0e89",
  "source": {
    "blob": "af8038672bf3420e9316d19aea958764bcef69c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e00aad2c028f98ad82cc0e89f01f6afe55d604787f6ca5fbf71f1749103ea810",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cc19f77-fabc-5197-5ccb-efb931621b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ediam_smul₀ (c : 𝕜) (s : Set E) : EMetric.diam (c • s) = ‖c‖₊ • EMetric.diam s := by
  refine' le_antisymm (ediam_smul_le c s) _
  obtain rfl | hc := eq_or_ne c 0
  · obtain rfl | hs := s.eq_empty_or_nonempty
    · simp
    simp [zero_smul_set hs, ← Set.singleton_zero]
  · have := (lipschitzWith_smul c⁻¹).ediam_image_le (c • s)
    rwa [← smul_eq_mul, ← ENNReal.smul_def, Set.image_smul, inv_smul_smul₀ hc s, nnnorm_inv,
      ENNReal.le_inv_smul_iff (nnnorm_ne_zero_iff.mpr hc)] at this
#align ediam_smul₀ ediam_smul₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8038672bf3420e9316d19aea958764bcef69c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
