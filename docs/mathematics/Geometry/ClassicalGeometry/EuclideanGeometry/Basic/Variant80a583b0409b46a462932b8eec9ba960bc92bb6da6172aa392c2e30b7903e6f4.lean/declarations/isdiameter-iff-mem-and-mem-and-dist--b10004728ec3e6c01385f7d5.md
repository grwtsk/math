# isDiameter_iff_mem_and_mem_and_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a44542d3-8b0e-3a76-345d-068b89ce281c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ed35d8-c98d-08b1-12f3-4c31c2d93eae",
  "kind": "lemma",
  "lexical_name": "isDiameter_iff_mem_and_mem_and_dist",
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
  "slug": "isdiameter-iff-mem-and-mem-and-dist--b10004728ec3e6c01385f7d5",
  "source": {
    "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 591,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b10004728ec3e6c01385f7d526d0a9ba6261a51ce6993d44d68df47ece1f230f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ed35d8-c98d-08b1-12f3-4c31c2d93eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDiameter_iff_mem_and_mem_and_dist :
    s.IsDiameter p₁ p₂ ↔ p₁ ∈ s ∧ p₂ ∈ s ∧ dist p₁ p₂ = 2 * s.radius := by
  refine ⟨fun h ↦ ⟨h.left_mem, h.right_mem, h.dist_left_right⟩, fun ⟨h₁, h₂, hr⟩ ↦ ⟨h₁, ?_⟩⟩
  rw [midpoint_eq_iff, AffineEquiv.pointReflection_apply, eq_comm, eq_vadd_iff_vsub_eq]
  apply eq_of_norm_eq_of_norm_add_eq
  · simp_rw [← dist_eq_norm_vsub, mem_sphere'.1 h₁, mem_sphere.1 h₂]
  · simp_rw [vsub_add_vsub_cancel, ← dist_eq_norm_vsub, mem_sphere'.1 h₁, mem_sphere.1 h₂]
    rw [dist_comm, hr, two_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e60c522aa7a6ed8b00ff637f51a8e3530c2a47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
