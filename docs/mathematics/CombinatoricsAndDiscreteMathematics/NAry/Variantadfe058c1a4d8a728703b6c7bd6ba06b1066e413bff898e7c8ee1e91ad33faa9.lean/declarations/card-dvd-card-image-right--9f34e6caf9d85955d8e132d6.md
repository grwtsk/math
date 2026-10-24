# card_dvd_card_image₂_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5dbcb2abb70c16930ea234705c7d6160f13e86c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f87c579-1348-fe09-9ba1-ce06acb7e8e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e811261-426b-f1bc-4707-1337f6557788",
  "kind": "theorem",
  "lexical_name": "card_dvd_card_image₂_right",
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
  "slug": "card-dvd-card-image-right--9f34e6caf9d85955d8e132d6",
  "source": {
    "blob": "b5dbcb2abb70c16930ea234705c7d6160f13e86c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f34e6caf9d85955d8e132d61847293e49b74e47552b61b454d2db74399b65d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e811261-426b-f1bc-4707-1337f6557788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_dvd_card_image₂_right (hf : ∀ a ∈ s, Injective (f a))
    (hs : ((fun a => t.image <| f a) '' s).PairwiseDisjoint id) : t.card ∣ (image₂ f s t).card := by
  classical
  induction' s using Finset.induction with a s _ ih
  · simp
  specialize ih (forall_of_forall_insert hf)
    (hs.subset <| Set.image_subset _ <| coe_subset.2 <| subset_insert _ _)
  rw [image₂_insert_left]
  by_cases h : Disjoint (image (f a) t) (image₂ f s t)
  · rw [card_union_eq h]
    exact (card_image_of_injective _ <| hf _ <| mem_insert_self _ _).symm.dvd.add ih
  simp_rw [← biUnion_image_left, disjoint_biUnion_right, not_forall] at h
  obtain ⟨b, hb, h⟩ := h
  rwa [union_eq_right_iff_subset.2]
  exact (hs.eq (Set.mem_image_of_mem _ <| mem_insert_self _ _)
      (Set.mem_image_of_mem _ <| mem_insert_of_mem hb) h).trans_subset
    (image_subset_image₂_right hb)
#align finset.card_dvd_card_image₂_right Finset.card_dvd_card_image₂_right

/-- If each partial application of `f` is injective, and images of `t` under those partial
applications are disjoint (but not necessarily distinct!), then the size of `s` divides the size of
`finset.image₂ f s t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5dbcb2abb70c16930ea234705c7d6160f13e86c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
