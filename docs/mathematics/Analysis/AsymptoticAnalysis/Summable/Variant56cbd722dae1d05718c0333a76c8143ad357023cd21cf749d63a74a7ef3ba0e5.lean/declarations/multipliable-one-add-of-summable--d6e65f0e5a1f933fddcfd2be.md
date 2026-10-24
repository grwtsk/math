# multipliable_one_add_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcca4679-9ca1-6e1c-709b-8279bf0c463d",
  "kind": "lemma",
  "lexical_name": "multipliable_one_add_of_summable",
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
  "slug": "multipliable-one-add-of-summable--d6e65f0e5a1f933fddcfd2be",
  "source": {
    "blob": "e4df3ae6fbf63fffc3feaa89f721ab08a8f319c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 179,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e65f0e5a1f933fddcfd2bea8b495c596fc65ca195c6d941781ab3c25e58fde",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcca4679-9ca1-6e1c-709b-8279bf0c463d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multipliable_one_add_of_summable [CompleteSpace R]
    (hf : Summable fun i ↦ ‖f i‖) : Multipliable fun i ↦ (1 + f i) := by
  classical
  refine CompleteSpace.complete <| Metric.cauchy_iff.mpr ⟨by infer_instance, fun ε hε ↦ ?_⟩
  obtain ⟨r₁, hr₁, s₁, hs₁⟩ :=
    (multipliable_norm_one_add_of_summable_norm hf).eventually_bounded_finsetProd
  obtain ⟨s₂, hs₂⟩ := prod_vanishing_of_summable_norm hf (show 0 < ε / (2 * r₁) by positivity)
  simp only [unconditional, Filter.mem_map, mem_atTop_sets, Set.mem_preimage]
  let s := s₁ ∪ s₂
  -- The idea here is that if `s` is a large enough finset, then the product over `s` is bounded
  -- by some `r`, and the product over finsets disjoint from `s` is within `ε / (2 * r)` of 1.
  -- From this it follows that the products over any two finsets containing `s` are within `ε` of
  -- each other.
  -- Here `s₁ ⊆ s` guarantees that the product over `s` is bounded, and `s₂ ⊆ s` guarantees that
  -- the product over terms not in `s` is small.
  refine ⟨Metric.ball (∏ i ∈ s, (1 + f i)) (ε / 2), ⟨s, fun b hb ↦ ?_⟩, ?_⟩
  · rw [← union_sdiff_of_subset hb, prod_union sdiff_disjoint.symm,
      Metric.mem_ball, dist_eq_norm_sub, ← mul_sub_one,
      show ε / 2 = r₁ * (ε / (2 * r₁)) by field]
    apply (norm_mul_le _ _).trans_lt
    refine lt_of_le_of_lt (b := r₁ * ‖∏ x ∈ b \ s, (1 + f x) - 1‖) ?_ ?_
    · refine mul_le_mul_of_nonneg_right ?_ (norm_nonneg _)
      exact (Finset.norm_prod_le _ _).trans (hs₁ _ subset_union_left)
    · refine mul_lt_mul_of_pos_left (hs₂ _ ?_) hr₁
      simp [s, sdiff_union_distrib, disjoint_iff_inter_eq_empty]
  · intro x hx y hy
    exact (dist_triangle_right _ _ (∏ i ∈ s, (1 + f i))).trans_lt (add_halves ε ▸ add_lt_add hx hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4df3ae6fbf63fffc3feaa89f721ab08a8f319c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
