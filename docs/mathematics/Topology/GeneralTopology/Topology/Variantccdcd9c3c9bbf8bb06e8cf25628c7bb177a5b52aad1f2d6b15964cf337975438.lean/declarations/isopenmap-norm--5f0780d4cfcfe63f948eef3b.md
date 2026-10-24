# isOpenMap_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "164b13e15d0e53e5a20d1ef645bd1463f68753df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62ada50a-b240-0c4f-e3cc-cb0d91067b86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cac6ecb3-ece5-718d-c35a-83c806f9c91a",
  "kind": "lemma",
  "lexical_name": "isOpenMap_norm",
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
  "slug": "isopenmap-norm--5f0780d4cfcfe63f948eef3b",
  "source": {
    "blob": "164b13e15d0e53e5a20d1ef645bd1463f68753df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f0780d4cfcfe63f948eef3b54c5a2f6caf46b5822c57573706a7114d180e395",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cac6ecb3-ece5-718d-c35a-83c806f9c91a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpenMap_norm : IsOpenMap (fun τ : ℍ ↦ ‖(τ : ℂ)‖) := by
  refine .of_nhds_le fun τ U hU ↦ ?_
  obtain ⟨s, hs, hs'⟩ := Filter.mem_map_iff_exists_image.mp hU
  simp_rw [← isOpenEmbedding_coe.image_mem_nhds, Metric.mem_nhds_iff] at hs ⊢
  obtain ⟨ε, hεpos, hεs⟩ := hs
  refine ⟨ε, hεpos, subset_trans (fun r hr ↦ ?_) hs'⟩
  have hr' : 0 ≤ r := by
    by_contra! hr'
    rw [mem_ball_iff_norm, Real.norm_eq_abs, abs_lt] at hr
    have : ‖(τ : ℂ)‖ < ε := by linarith
    have : 0 ∈ Metric.ball (τ : ℂ) ε := by rwa [mem_ball_iff_norm', sub_zero]
    simpa [UpperHalfPlane.ne_zero] using hεs this
  have : r / ‖(τ : ℂ)‖ * (τ : ℂ) ∈ Metric.ball (τ : ℂ) ε := by
    rwa [mem_ball_iff_norm,
      show r / ‖(τ : ℂ)‖ * (τ : ℂ) - τ = ↑(r / ‖(τ : ℂ)‖ - 1) * (τ : ℂ) by simp; ring,
      norm_mul, norm_real, ← norm_norm (τ : ℂ), ← norm_mul, sub_mul, norm_norm, one_mul,
      div_mul_cancel₀ _ (by simpa using τ.ne_zero), ← mem_ball_iff_norm]
  obtain ⟨ξ, hξs, hξτ⟩ := Set.mem_of_mem_of_subset this hεs
  use ξ, hξs
  simp_rw [hξτ, norm_mul, norm_div, norm_real, norm_norm]
  rw [div_mul_cancel₀ _ (by simpa using τ.ne_zero), Real.norm_of_nonneg hr']

end IsOpenMap

end UpperHalfPlane
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantccdcd9c3c9bbf8bb06e8cf25628c7bb177a5b52aad1f2d6b15964cf337975438.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164b13e15d0e53e5a20d1ef645bd1463f68753df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
