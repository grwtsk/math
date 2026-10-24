# sSup_subtype_eq_sSup_univ_of_not_bddAbove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b97dba736af3c15a99c39fff736b1891f30c4f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1f300e2-a408-c671-d9d7-ff7d2c524852",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82ec49fd-1f52-bc2c-6c51-e0606ac1c597",
  "kind": "lemma",
  "lexical_name": "sSup_subtype_eq_sSup_univ_of_not_bddAbove",
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
  "slug": "ssup-subtype-eq-ssup-univ-of-not-bddabove--c33191d2504af3289f88ac23",
  "source": {
    "blob": "3b97dba736af3c15a99c39fff736b1891f30c4f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33191d2504af3289f88ac232594d379725c52ff6738be865b1a53e04ff316d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82ec49fd-1f52-bc2c-6c51-e0606ac1c597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sSup_subtype_eq_sSup_univ_of_not_bddAbove {s : Set α} [Inhabited s]
    (t : Set s) (ht : ¬BddAbove t) : sSup t = sSup univ := by
  have A : ∀ (u : Set s), ¬BddAbove u → BddAbove (Subtype.val '' u) →
      sSup ((↑) '' u : Set α) ∉ s := by
    intro u hu Hu
    contrapose! hu
    refine ⟨⟨_, hu⟩, ?_⟩
    rintro ⟨x, xs⟩ hx
    simp only [Subtype.mk_le_mk]
    apply le_csSup Hu
    exact ⟨⟨x, xs⟩, hx, rfl⟩
  by_cases Ht : BddAbove ((↑) '' t : Set α)
  · have I1 : sSup ((↑) '' t : Set α) ∉ s := A t ht Ht
    have I2 : sSup ((↑) '' (univ : Set s) : Set α) ∉ s := by
      apply A
      · contrapose! ht; exact ht.mono (subset_univ _)
      · refine ⟨sSup ((↑) '' t : Set α), ?_⟩
        rintro - ⟨⟨x, hx⟩, -, rfl⟩
        simp [BddAbove, not_nonempty_iff_eq_empty] at ht
        have : ⟨x, hx⟩ ∉ upperBounds t := by simp [ht]
        obtain ⟨⟨y, ys⟩, yt, hy⟩ : ∃ y, y ∈ t ∧ { val := x, property := hx } < y :=
          by simpa only [Subtype.mk_le_mk, not_forall, not_le, exists_prop, exists_and_right,
            mem_upperBounds]
        refine le_trans (le_of_lt hy) ?_
        exact le_csSup Ht ⟨⟨y, ys⟩, yt, rfl⟩
    simp only [sSup, I1, I2, dite_false]
  · have I : ¬BddAbove ((↑) '' (univ : Set s) : Set α) := by
      contrapose! Ht; exact Ht.mono (image_subset Subtype.val (subset_univ _))
    have X : sSup ((↑) '' t : Set α) = sSup (univ : Set α) :=
      ConditionallyCompleteLinearOrder.csSup_of_not_bddAbove _ Ht
    have Y : sSup ((↑) '' (univ : Set s) : Set α) = sSup (univ : Set α) :=
      ConditionallyCompleteLinearOrder.csSup_of_not_bddAbove _ I
    simp only [sSup, X, Y]

/-- For a nonempty subset of a conditionally complete linear order to be a conditionally complete
linear order, it suffices that it contain the `sSup` of all its nonempty bounded-above subsets, and
the `sInf` of all its nonempty bounded-below subsets.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b97dba736af3c15a99c39fff736b1891f30c4f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
