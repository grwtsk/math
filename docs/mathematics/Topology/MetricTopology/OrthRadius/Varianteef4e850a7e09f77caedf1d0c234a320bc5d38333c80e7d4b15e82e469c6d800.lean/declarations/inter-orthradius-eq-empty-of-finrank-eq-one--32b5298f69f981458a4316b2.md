# inter_orthRadius_eq_empty_of_finrank_eq_one

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
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70d0cb9c-15bf-446b-62b6-7517ebc1f1d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54eb5707-dbe4-1ef6-2a39-c674fcbe4654",
  "kind": "lemma",
  "lexical_name": "inter_orthRadius_eq_empty_of_finrank_eq_one",
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
  "slug": "inter-orthradius-eq-empty-of-finrank-eq-one--32b5298f69f981458a4316b2",
  "source": {
    "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 227,
    "path": "GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b5298f69f981458a4316b279648be43c105327842e045a2ca28c7745195d82",
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

Occurrence: `result:54eb5707-dbe4-1ef6-2a39-c674fcbe4654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inter_orthRadius_eq_empty_of_finrank_eq_one {s : Sphere P} {p : P} (hpc : p ≠ s.center)
    (hp : dist p s.center ≠ s.radius) (hf : Module.finrank ℝ V = 1) :
    (s ∩ s.orthRadius p : Set P) = ∅ := by
  ext p'
  rw [mem_inter_orthRadius_iff_radius_nonneg_and_vsub_mem_and_norm_sq]
  simp only [Set.mem_empty_iff_false, iff_false, not_and]
  intro hr hpo
  have : FiniteDimensional ℝ V := Module.finite_of_finrank_eq_succ hf
  have ha := (ℝ ∙ (p -ᵥ s.center)).finrank_add_finrank_orthogonal
  simp only [finrank_span_singleton (vsub_ne_zero.2 hpc), hf, Nat.add_eq_left,
    Submodule.finrank_eq_zero, Submodule.orthogonal_eq_bot_iff] at ha
  simp only [ha, Submodule.top_orthogonal_eq_bot, Submodule.mem_bot, vsub_eq_zero_iff_eq] at hpo
  simp only [hpo, vsub_self, norm_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow]
  rw [eq_comm, sub_eq_zero, eq_comm, sq_eq_sq₀ dist_nonneg hr]
  exact hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
