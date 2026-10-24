# inter_orthRadius_eq_of_dist_le_radius_of_norm_eq_one

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
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65dfefd1-8129-edd9-0894-333e77f23acf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc448f7b-aa81-e143-7087-6415bba7df3e",
  "kind": "lemma",
  "lexical_name": "inter_orthRadius_eq_of_dist_le_radius_of_norm_eq_one",
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
  "slug": "inter-orthradius-eq-of-dist-le-radius-of-norm-eq-one--66b730e629cc7b746892d58c",
  "source": {
    "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 308,
    "path": "GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66b730e629cc7b746892d58cb1777ea35e3d7a60ca067fefd5c4eb54e41e99d9",
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

Occurrence: `result:bc448f7b-aa81-e143-7087-6415bba7df3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inter_orthRadius_eq_of_dist_le_radius_of_norm_eq_one [hf2 : Fact (Module.finrank ℝ V = 2)]
    {s : Sphere P} {p : P} (hp : dist p s.center ≤ s.radius) (hpc : p ≠ s.center) {v : V}
    (hv : v ∈ (ℝ ∙ (p -ᵥ s.center))ᗮ) (hv1 : ‖v‖ = 1) :
    (s ∩ s.orthRadius p : Set P) = {√(s.radius ^ 2 - (dist p s.center) ^ 2) • v +ᵥ p,
      -√(s.radius ^ 2 - (dist p s.center) ^ 2) • v +ᵥ p} := by
  have hr : 0 ≤ s.radius := dist_nonneg.trans hp
  have hv0 : v ≠ 0 := by rw [← norm_ne_zero_iff, hv1]; simp
  rw [neg_smul]
  have hf := finrank_orthRadius hpc
  rw [direction_orthRadius] at hf
  simp only [hf2.out, Nat.reduceEqDiff] at hf
  rw [finrank_eq_one_iff_of_nonzero' ⟨v, hv⟩ (by simpa using hv0)] at hf
  have hvc : ∀ w ∈ (ℝ ∙ (p -ᵥ s.center))ᗮ, ∃ c : ℝ, c • v = w := by
    intro w hw
    simpa using hf ⟨w, hw⟩
  have hvp : 0 ≤ s.radius ^ 2 - (dist p s.center) ^ 2 := by
    rw [sub_nonneg, sq_le_sq, abs_of_nonneg dist_nonneg]
    exact le_abs.2 (.inl hp)
  ext p'
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [← vsub_vadd p' p, Set.mem_insert_iff, Set.mem_singleton_iff, vadd_right_cancel_iff,
      vadd_right_cancel_iff]
    have h' : p' -ᵥ p ∈ (ℝ ∙ (p -ᵥ s.center))ᗮ := by
      rw [← direction_orthRadius, vsub_right_mem_direction_iff_mem (s.self_mem_orthRadius p)]
      exact h.2
    rw [← vsub_vadd p' p, vadd_mem_inter_orthRadius_iff_norm_sq hr h'] at h
    obtain ⟨c, hc⟩ := hvc _ h'
    rw [← hc] at h ⊢
    rw [← neg_smul]
    simp_rw [(smul_left_injective ℝ hv0).eq_iff, ← sq_eq_sq_iff_eq_or_eq_neg, Real.sq_sqrt hvp]
    simpa [norm_smul, hv1] using h
  · rw [← neg_smul] at h
    rcases h with rfl | rfl <;>
      rw [vadd_mem_inter_orthRadius_iff_norm_sq hr (Submodule.smul_mem _ _ hv)] <;>
      simp [norm_smul, hv1, hvp]

/-- In 2D, the line defined by `s.orthRadius p` intersects `s` at at most two points so long as `p`
lies within `s` and not at its center.

This version provides expressions for those points in terms of an arbitrary vector in
`s.orthRadius p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
