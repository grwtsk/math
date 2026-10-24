# sum_reflectionCircumcenterWeightsWithCircumcenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 678,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b0f43c8-aa05-76c2-c7e5-ee19f0850ed3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:890cd992-ee84-66e2-4ec4-918003089c52",
  "kind": "theorem",
  "lexical_name": "sum_reflectionCircumcenterWeightsWithCircumcenter",
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
  "slug": "sum-reflectioncircumcenterweightswithcircumcenter--c5f14caf03f59c67ed3af9e0",
  "source": {
    "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 678,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5f14caf03f59c67ed3af9e011ce410387e544756d1c0545e16158fe7eca4d65",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:890cd992-ee84-66e2-4ec4-918003089c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 678–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_reflectionCircumcenterWeightsWithCircumcenter {n : ℕ} {i₁ i₂ : Fin (n + 1)}
    (h : i₁ ≠ i₂) : ∑ i, reflectionCircumcenterWeightsWithCircumcenter i₁ i₂ i = 1 := by
  simp_rw [sum_pointsWithCircumcenter, reflectionCircumcenterWeightsWithCircumcenter, sum_ite,
    sum_const, filter_or, filter_eq']
  rw [card_union_eq]
  · simp
  · simpa only [if_true, mem_univ, disjoint_singleton] using h
#align affine.simplex.sum_reflection_circumcenter_weights_with_circumcenter Affine.Simplex.sum_reflectionCircumcenterWeightsWithCircumcenter

/-- The reflection of the circumcenter of a simplex in an edge, in
terms of `pointsWithCircumcenter`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean#L678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
