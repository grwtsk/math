# Finset.exists_equiv_extend_of_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09160406-cb71-5fb3-23bf-5c4021802c48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8792819-1ce2-4754-bf1f-42b89dc032aa",
  "kind": "theorem",
  "lexical_name": "Finset.exists_equiv_extend_of_card_eq",
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
  "slug": "finset-exists-equiv-extend-of-card-eq--6d9378be2ab592022f293ce9",
  "source": {
    "blob": "cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d9378be2ab592022f293ce9c0bc4bddac78d64a6b4b97bee90f63bfa6cb827d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8792819-1ce2-4754-bf1f-42b89dc032aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.exists_equiv_extend_of_card_eq [Fintype α] [DecidableEq β] {t : Finset β}
    (hαt : Fintype.card α = #t) {s : Finset α} {f : α → β} (hfst : Finset.image f s ⊆ t)
    (hfs : Set.InjOn f s) : ∃ g : α ≃ t, ∀ i ∈ s, (g i : β) = f i := by
  classical
    induction' s using Finset.induction with a s has H generalizing f
    · obtain ⟨e⟩ : Nonempty (α ≃ ↥t) := by rwa [← Fintype.card_eq, Fintype.card_coe]
      use e
      simp
    have hfst' : Finset.image f s ⊆ t := (Finset.image_mono _ (s.subset_insert a)).trans hfst
    have hfs' : Set.InjOn f s := hfs.mono (s.subset_insert a)
    obtain ⟨g', hg'⟩ := H hfst' hfs'
    have hfat : f a ∈ t := hfst (mem_image_of_mem _ (s.mem_insert_self a))
    use g'.trans (Equiv.swap (⟨f a, hfat⟩ : t) (g' a))
    simp_rw [mem_insert]
    rintro i (rfl | hi)
    · simp
    rw [Equiv.trans_apply, Equiv.swap_apply_of_ne_of_ne, hg' _ hi]
    · exact
        ne_of_apply_ne Subtype.val
          (ne_of_eq_of_ne (hg' _ hi) <|
            hfs.ne (subset_insert _ _ hi) (mem_insert_self _ _) <| ne_of_mem_of_not_mem hi has)
    · exact g'.injective.ne (ne_of_mem_of_not_mem hi has)

/-- Any injection from a set `s` in a fintype `α` to a finset `t` of the same cardinality as `α`
can be extended to a bijection between `α` and `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
