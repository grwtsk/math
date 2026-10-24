# inter_orthRadius_eq_empty_iff

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
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ecb9fb8-a425-b24c-c680-cf1b0cba400a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e82103d-7ff0-4ff4-061d-52ad4272e82b",
  "kind": "lemma",
  "lexical_name": "inter_orthRadius_eq_empty_iff",
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
  "slug": "inter-orthradius-eq-empty-iff--2ecd00bfccf944ac4d4c42f3",
  "source": {
    "blob": "2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 243,
    "path": "GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ecd00bfccf944ac4d4c42f337e2b2100cabf75e7dd2c6a7c4823ca4930ff2b2",
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

Occurrence: `result:1e82103d-7ff0-4ff4-061d-52ad4272e82b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inter_orthRadius_eq_empty_iff {s : Sphere P} {p : P} :
    (s ∩ s.orthRadius p : Set P) = ∅ ↔ s.radius < dist p s.center ∨
      (Module.finrank ℝ V = 1 ∧ dist p s.center < s.radius ∧ p ≠ s.center) ∨
      (Subsingleton V ∧ s.radius ≠ 0) := by
  rcases lt_trichotomy (dist p s.center) s.radius with h | h | h
  · simp only [h.not_gt, h, ne_eq, true_and, (dist_nonneg.trans_lt h).ne', not_false_eq_true,
      and_true, false_or]
    obtain rfl | hp := eq_or_ne p s.center
    · rcases subsingleton_or_nontrivial V with hs | hs
      · have hs' := (AddTorsor.subsingleton_iff V P).1 hs
        simp [hs, Metric.sphere_eq_empty_of_subsingleton (dist_nonneg.trans_lt h).ne']
      · simp only [orthRadius_center, top_coe, Set.inter_univ, not_true_eq_false, and_false,
          not_subsingleton_iff_nontrivial.2 hs, or_self, iff_false, ← Set.nonempty_iff_ne_empty]
        obtain ⟨v, hv⟩ := exists_norm_eq V (dist_nonneg.trans_lt h).le
        exact ⟨v +ᵥ s.center, by simp [hv]⟩
    · simp only [hp, not_false_eq_true, and_true]
      rcases eq_or_ne (ℝ ∙ (p -ᵥ s.center)) ⊤ with hb | hb
      · have hb' := hb
        rw [Submodule.span_singleton_eq_top_iff] at hb'
        have hf := finrank_eq_one_iff'.2 ⟨p -ᵥ s.center, vsub_ne_zero.2 hp, hb'⟩
        simpa [hf] using inter_orthRadius_eq_empty_of_finrank_eq_one hp h.ne
      · have hn : ¬Subsingleton V := by
          rw [AddTorsor.subsingleton_iff V P]
          intro hs
          simp [Subsingleton.elim p s.center] at hp
        have hnf : Module.finrank ℝ V ≠ 1 := by
          intro hf
          apply hb
          rw [Submodule.span_singleton_eq_top_iff]
          rw [finrank_eq_one_iff'] at hf
          obtain ⟨v, hv0, hv⟩ := hf
          obtain ⟨c, hc⟩ := hv (p -ᵥ s.center)
          have hc0 : c ≠ 0 := by
            rintro rfl
            rw [zero_smul, eq_comm, vsub_eq_zero_iff_eq] at hc
            simp [hc] at hp
          intro v'
          obtain ⟨c', rfl⟩ := hv v'
          refine ⟨c' / c, ?_⟩
          simp [← hc, smul_smul, hc0]
        simp only [hnf, hn, or_self, iff_false, ← Set.nonempty_iff_ne_empty]
        rw [ne_eq, ← Submodule.orthogonal_eq_bot_iff] at hb
        obtain ⟨v, hvm, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hb
        refine ⟨(√(s.radius ^ 2 - (dist p s.center) ^ 2) / ‖v‖) • v +ᵥ p, ?_⟩
        rw [vadd_mem_inter_orthRadius_iff_norm_sq (dist_nonneg.trans_lt h).le
          (Submodule.smul_mem _ _ hvm)]
        rw [norm_smul, norm_div, norm_norm, div_mul_cancel₀ _ (norm_ne_zero_iff.2 hv0)]
        simp only [Real.norm_eq_abs, sq_abs]
        refine Real.sq_sqrt ?_
        rw [sub_nonneg, sq_le_sq, abs_of_nonneg dist_nonneg]
        exact h.le.trans (le_abs_self _)
  · rw [inter_orthRadius_eq_singleton_of_dist_eq_radius h]
    simp only [Set.singleton_ne_empty, h, lt_self_iff_false, ne_eq, false_and, and_false, false_or,
      false_iff, not_and, not_not]
    intro hs
    rw [AddTorsor.subsingleton_iff V P] at hs
    rw [Subsingleton.elim p s.center] at h
    simpa using h.symm
  · simp [h, inter_orthRadius_eq_empty_of_radius_lt_dist]

/-- In 2D, the line defined by `s.orthRadius p` intersects `s` at at most two points so long as `p`
lies within `s` and not at its center.

This version provides expressions for those points in terms of an arbitrary vector in
`s.orthRadius p` with norm `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/OrthRadius/Varianteef4e850a7e09f77caedf1d0c234a320bc5d38333c80e7d4b15e82e469c6d800.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e70e4cf1e7ce08d5c9ced47ca08eaec4c7f0093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
