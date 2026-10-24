# square_subset_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 832,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c299af2b-5d75-34ee-b9a0-e0e4f3ba0ba8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7f0d188-2b96-6dde-3ea4-cf1b415c4e3c",
  "kind": "lemma",
  "lexical_name": "square_subset_above",
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
  "slug": "square-subset-above--be32bf62310b5a3ba2ec6bd6",
  "source": {
    "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 863,
    "line": 832,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be32bf62310b5a3ba2ec6bd6247fad70f1dfeb8d2a92cd42261f7d3070b3a0bb",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f0d188-2b96-6dde-3ea4-cf1b415c4e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 832–863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma square_subset_above (h : (C ∩ level n).Finite) :
    ∀ᶠ a in atTop, embed n '' Set.Ici (a, a) ⊆ {x | ∀ y ∈ C ∩ level n, y ≤ x} \ (C ∩ level n) := by
  -- If `(C ∩ level n)` is empty, trivially we are done.
  obtain h | hne := (C ∩ level n).eq_empty_or_nonempty
  · simp [h]
  -- Otherwise take a maximal pair `(a, b)` so that any `(c, d, n)` in `C` satisfies
  -- `(c, d, n) ≤ (a, b, n)`.
  obtain ⟨a, b, hab⟩ : ∃ a b, ∀ c d, h(c, d, n) ∈ C → c ≤ a ∧ d ≤ b := by
    obtain ⟨⟨a, b⟩, hab⟩ := (h.image (fun t ↦ ((ofHollom t).1, (ofHollom t).2.1))).bddAbove
    use a, b
    intro c d hcd
    simpa using hab ⟨h(_, _, _), ⟨hcd, by simp⟩, rfl⟩
  -- With this pair, we can use the "base" of the square as `max a b + 1`.
  rw [eventually_atTop]
  refine ⟨max a b + 1, ?_⟩
  simp +contextual only [sup_le_iff, embed, RelEmbedding.coe_mk,
    Function.Embedding.coeFn_mk, Set.mem_inter_iff, and_imp, «forall», toHollom_mem_level_iff,
    Prod.forall, Set.subset_def, Set.mem_image, Set.mem_Ici, Prod.exists, Prod.mk_le_mk,
    Set.mem_ofPred_eq, forall_exists_index, Prod.mk.injEq,
    toHollom_le_toHollom_iff_fixed_right, Set.mem_sdiff, and_true, ← max_add_add_right,
    Hollom.ext_iff]
  -- After simplifying, direct calculations show the subset relation as required.
  rintro k hak hbk _ _ _ f g hkf hkg rfl rfl rfl
  constructor
  · rintro c d n hcd rfl
    specialize hab c d hcd
    lia
  · intro hfg
    specialize hab _ _ hfg
    lia

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean#L832).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eea7e4bd418a2e1ae42665cdf464a2230815e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
