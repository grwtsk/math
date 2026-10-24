# circumcenter_eq_point

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
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:234e3054-dc7f-100b-d88f-ac7ff63345cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e22105cd-e343-053d-9f85-ae48dc65be66",
  "kind": "theorem",
  "lexical_name": "circumcenter_eq_point",
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
  "slug": "circumcenter-eq-point--227588ac2375002fcc115abf",
  "source": {
    "blob": "7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 365,
    "path": "GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227588ac2375002fcc115abf8b410e54b0f1a5bcc96b1007b5666072b7d1190a",
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

Occurrence: `result:e22105cd-e343-053d-9f85-ae48dc65be66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circumcenter_eq_point (s : Simplex ℝ P 0) (i : Fin 1) : s.circumcenter = s.points i := by
  have h := s.circumcenter_mem_affineSpan
  have : Unique (Fin 1) := ⟨⟨0, by decide⟩, fun a => by simp only [Fin.eq_zero]⟩
  simp only [Set.range_unique, AffineSubspace.mem_affineSpan_singleton] at h
  rw [h]
  congr
  simp only [eq_iff_true_of_subsingleton]
#align affine.simplex.circumcenter_eq_point Affine.Simplex.circumcenter_eq_point

/-- The circumcenter of a 1-simplex equals its centroid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Circumcenter/Variantdc4373d6ceb3e3886ce2bbf0be47af28927db468881d60896f562639794ab46b.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba8c6dafdd8ef0c57d32577e2c52afe37fa3d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
