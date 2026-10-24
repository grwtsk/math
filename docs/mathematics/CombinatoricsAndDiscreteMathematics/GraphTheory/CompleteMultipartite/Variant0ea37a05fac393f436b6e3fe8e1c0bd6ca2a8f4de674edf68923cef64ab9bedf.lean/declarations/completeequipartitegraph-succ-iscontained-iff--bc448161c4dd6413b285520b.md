# completeEquipartiteGraph_succ_isContained_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ac2e6b2046f7f70dca57c1bc121128ce170a91b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64b92708-645f-4bbb-2bb1-187a8e567df7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d6877c2-872c-b8eb-8a0d-8615484a3556",
  "kind": "theorem",
  "lexical_name": "completeEquipartiteGraph_succ_isContained_iff",
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
  "slug": "completeequipartitegraph-succ-iscontained-iff--bc448161c4dd6413b285520b",
  "source": {
    "blob": "8ac2e6b2046f7f70dca57c1bc121128ce170a91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 467,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc448161c4dd6413b285520b74f85180df026264f8e26119a4319bbd2cef34af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d6877c2-872c-b8eb-8a0d-8615484a3556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeEquipartiteGraph_succ_isContained_iff :
  completeEquipartiteGraph (r + 1) t ⊑ G
    ↔ ∃ᵉ (K : G.CompleteEquipartiteSubgraph r t) (s : Finset V),
        #s = t ∧ ∀ p ∈ K.parts, G.IsCompleteBetween p s := by
  classical
  by_cases ht : t = 0
  · have (r' : ℕ) : IsEmpty (Fin r' × Fin t) := by simp [ht]
    have h_bot (r' : ℕ) : completeEquipartiteGraph r' t = ⊥ :=
      completeEquipartiteGraph_eq_bot_iff.mpr <| .inr ht
    simp_rw [h_bot (r + 1), ht, Finset.card_eq_zero, exists_eq_left, IsCompleteBetween, mem_coe,
      notMem_empty, IsEmpty.forall_iff, implies_true, exists_true_iff_nonempty]
    exact ⟨fun _ ↦ CompleteEquipartiteSubgraph.nonempty_of_eq_zero_or_eq_zero (.inr ht),
      fun _ ↦ ⟨Copy.bot .ofIsEmpty⟩⟩
  · rw [completeEquipartiteGraph_isContained_iff]
    refine ⟨fun ⟨K'⟩ ↦ ?_, fun ⟨K, s, hs, hadj⟩ ↦ ?_⟩
    · obtain ⟨parts, hparts_sub, hparts_card⟩ := K'.parts.exists_subset_card_eq (Nat.pred_le _)
      let K : G.CompleteEquipartiteSubgraph r t := by
        refine ⟨parts, ?_, fun h ↦ K'.card_mem_parts (hparts_sub h),
          fun _ h₁ _ h₂ hne ↦ K'.isCompleteBetween (hparts_sub h₁) (hparts_sub h₂) hne⟩
        rw [hparts_card, K'.card_parts.resolve_right ht]
        exact .inl (Nat.pred_succ r)
      obtain ⟨s, nhs_mem, hs⟩ : ∃ s ∉ K.parts, insert s K.parts = K'.parts := by
        refine exists_eq_insert_iff.mpr ⟨hparts_sub, ?_⟩
        rw [K.card_parts.resolve_right ht, K'.card_parts.resolve_right ht]
      have hs_mem : s ∈ K'.parts := by simp [← hs]
      exact ⟨K, s, K'.card_mem_parts hs_mem,
        fun _ h ↦ K'.isCompleteBetween (hparts_sub h) hs_mem (ne_of_mem_of_not_mem h nhs_mem)⟩
    · refine ⟨K.parts.cons s ?_, ?_, ?_, ?_⟩
      · intro hs_mem
        obtain ⟨v, hv⟩ : s.Nonempty := by
          rw [← Finset.card_pos, hs]
          exact Nat.pos_of_ne_zero ht
        exact G.irrefl <| hadj s hs_mem hv hv
      · rw [Finset.card_cons, K.card_parts.resolve_right ht]
        exact .inl rfl
      · simp_rw [mem_cons, forall_eq_or_imp]
        exact ⟨hs, fun p ↦ K.card_mem_parts⟩
      · rw [coe_cons]
        have : Std.Symm G.IsCompleteBetween := by simp [symm_def, isCompleteBetween_comm]
        exact K.isCompleteBetween.insert_of_symm fun p hp _ ↦ hadj p hp |>.symm

end CompleteEquipartiteSubgraph

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac2e6b2046f7f70dca57c1bc121128ce170a91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
