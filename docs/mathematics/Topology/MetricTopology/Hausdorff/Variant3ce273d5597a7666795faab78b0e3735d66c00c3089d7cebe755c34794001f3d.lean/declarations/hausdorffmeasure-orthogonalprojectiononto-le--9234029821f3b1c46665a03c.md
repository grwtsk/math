# hausdorffMeasure_orthogonalProjectionOnto_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc94ad07-3b8d-1ddb-bbd5-0d96341358fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20ec4687-8e9a-dcbc-f7c2-ec7ae4af4007",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_orthogonalProjectionOnto_le",
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
  "slug": "hausdorffmeasure-orthogonalprojectiononto-le--9234029821f3b1c46665a03c",
  "source": {
    "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1133,
    "line": 1121,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9234029821f3b1c46665a03c37b016179439e36a3f83d0f77fcea0809473a37b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ec4687-8e9a-dcbc-f7c2-ec7ae4af4007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1121–1133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_orthogonalProjectionOnto_le [RCLike 𝕜]
    [NormedAddCommGroup E] [InnerProductSpace 𝕜 E] [MeasurableSpace E] [BorelSpace E]
    (K : Submodule 𝕜 E) [K.HasOrthogonalProjection]
    (d : ℝ) (s : Set E) (hs : 0 ≤ d) :
    μH[d] (K.orthogonalProjectionOnto '' s) ≤ μH[d] s := by
  simpa using K.lipschitzWith_orthogonalProjectionOnto.hausdorffMeasure_image_le hs s

@[deprecated (since := "2026-05-05")] alias hausdorffMeasure_orthogonalProjection_le :=
  hausdorffMeasure_orthogonalProjectionOnto_le

end Geometric

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean#L1121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c79bc8875aa7428d749bfc0e3cf2684bcee37b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
