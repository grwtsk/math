# treesOfNumNodesEq_card_eq_catalan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "169813d9dd29684e26e393376b59621f6990f081",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ec1d104-b13a-5e23-8d9c-573537c12309",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b26cc83c-0855-e964-e981-82ddf69af81f",
  "kind": "theorem",
  "lexical_name": "treesOfNumNodesEq_card_eq_catalan",
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
  "slug": "treesofnumnodeseq-card-eq-catalan--f56d3811c0446c8dde38ece7",
  "source": {
    "blob": "169813d9dd29684e26e393376b59621f6990f081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56d3811c0446c8dde38ece7e3b1725683d633185105bd642e16488c72b9ca60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b26cc83c-0855-e964-e981-82ddf69af81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem treesOfNumNodesEq_card_eq_catalan (n : ℕ) : (treesOfNumNodesEq n).card = catalan n := by
  induction' n using Nat.case_strong_induction_on with n ih
  · simp
  rw [treesOfNumNodesEq_succ, card_biUnion, catalan_succ']
  · apply sum_congr rfl
    rintro ⟨i, j⟩ H
    rw [card_map, card_product, ih _ (fst_le H), ih _ (snd_le H)]
  · simp_rw [disjoint_left]
    rintro ⟨i, j⟩ _ ⟨i', j'⟩ _
    -- Porting note: was clear * -; tidy
    intros h a
    cases' a with a l r
    · intro h; simp at h
    · intro h1 h2
      apply h
      trans (numNodes l, numNodes r)
      · simp at h1; simp [h1]
      · simp at h2; simp [h2]
#align tree.trees_of_nodes_eq_card_eq_catalan Tree.treesOfNumNodesEq_card_eq_catalan

end Tree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant76246ad98ece523327272ccea367bbe17ec2ab79ee93886e50fd4bbbd9e1b608.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169813d9dd29684e26e393376b59621f6990f081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
