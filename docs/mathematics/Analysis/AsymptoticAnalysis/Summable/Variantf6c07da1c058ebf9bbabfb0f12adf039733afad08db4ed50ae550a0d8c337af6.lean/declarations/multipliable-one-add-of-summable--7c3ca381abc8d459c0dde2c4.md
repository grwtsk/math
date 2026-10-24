# multipliable_one_add_of_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c98d4033-aa05-1819-5cbf-b05d7855abe0",
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
  "slug": "multipliable-one-add-of-summable--7c3ca381abc8d459c0dde2c4",
  "source": {
    "blob": "9d8494be20e077db143adc74cfcefeac4ebb4476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 170,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c3ca381abc8d459c0dde2c42fbedda9893076362cb9275f17cf69574fb13dd0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c98d4033-aa05-1819-5cbf-b05d7855abe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multipliable_one_add_of_summable [CompleteSpace R]
    (hf : Summable fun i ↦ ‖f i‖) : Multipliable fun i ↦ (1 + f i) := by
  classical
  refine CompleteSpace.complete <| Metric.cauchy_iff.mpr ⟨by infer_instance, fun ε hε ↦ ?_⟩
  obtain ⟨r₁, hr₁, s₁, hs₁⟩ :=
    (multipliable_norm_one_add_of_summable_norm hf).eventually_bounded_finset_prod
  obtain ⟨s₂, hs₂⟩ := prod_vanishing_of_summable_norm hf (show 0 < ε / (2 * r₁) by positivity)
  simp only [Filter.mem_map, mem_atTop_sets, ge_iff_le, le_eq_subset, Set.mem_preimage]
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
      show ε / 2 = r₁ * (ε / (2 * r₁)) by field_simp [hr₁]; ring]
    apply (norm_mul_le _ _).trans_lt
    refine lt_of_le_of_lt (b := r₁ * ‖∏ x ∈ b \ s, (1 + f x) - 1‖) ?_ ?_
    · refine mul_le_mul_of_nonneg_right ?_ (norm_nonneg _)
      exact (Finset.norm_prod_le _ _).trans (hs₁ _ subset_union_left)
    · refine mul_lt_mul_of_pos_left (hs₂ _ ?_) hr₁
      simp [s, sdiff_union_distrib, disjoint_iff_inter_eq_empty]
  · intro x hx y hy
    exact (dist_triangle_right _ _ (∏ i ∈ s, (1 + f i))).trans_lt (add_halves ε ▸ add_lt_add hx hy)

end NormedRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8494be20e077db143adc74cfcefeac4ebb4476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
