# mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb0d7a02-8337-2561-5ef4-6d33537ddeaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba299bdf-db20-5684-74b0-a11ff3b373df",
  "kind": "lemma",
  "lexical_name": "mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq",
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
  "slug": "mem-inter-orthradius-iff-radius-nonneg-and-vsub-mem-and-norm-sq--be1338d2e013de2d997816ed",
  "source": {
    "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be1338d2e013de2d997816ed2ddad6995838da56bc3a5e897033bc1a36aeb26e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba299bdf-db20-5684-74b0-a11ff3b373df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq {s : Sphere P} {p q : P} :
    q ∈ (s ∩ s.orthRadius p : Set P) ↔ 0 ≤ s.radius ∧
      q -ᵥ p ∈ (ℝ ∙ (p -ᵥ s.center))ᗮ ∧ ‖q -ᵥ p‖ ^ 2 = s.radius ^ 2 - (dist p s.center) ^ 2 := by
  simp only [Set.mem_inter_iff, Metric.mem_sphere, mem_coe', SetLike.mem_coe,
    ← dist_sq_eq_iff_mem_orthRadius, ← direction_orthRadius,
    vsub_right_mem_direction_iff_mem (s.self_mem_orthRadius p), ← dist_eq_norm_vsub]
  nth_rw 3 [and_comm]
  rw [← and_assoc, and_congr_left_iff]
  intro h
  rw [← sub_eq_iff_eq_add'] at h
  rw [← h]
  rcases le_or_gt 0 s.radius with h0 | h0
  · simp [h0]
  · simp only [h0.not_ge, sub_left_inj, false_and, iff_false]
    intro hm
    exact h0.not_ge (radius_nonneg_of_mem hm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
