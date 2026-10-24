# IsClosed.Icc_subset_of_forall_mem_nhdsGT_of_Icc_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec58c516e95199231596874e646f4157df3bc781",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 368,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90110587-558b-4d01-1838-4c9b5692e902",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21e5f901-0892-050e-fb43-37a815bd17d6",
  "kind": "lemma",
  "lexical_name": "IsClosed.Icc_subset_of_forall_mem_nhdsGT_of_Icc_subset",
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
  "slug": "isclosed-icc-subset-of-forall-mem-nhdsgt-of-icc-subset--f260e52f8e567de4d47b2890",
  "source": {
    "blob": "ec58c516e95199231596874e646f4157df3bc781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 368,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f260e52f8e567de4d47b2890b9ed7aa9be33a33153eba3e9338903d6d6af806d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21e5f901-0892-050e-fb43-37a815bd17d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.Icc_subset_of_forall_mem_nhdsGT_of_Icc_subset {a b : α} {s : Set α}
    (hs : IsClosed (s ∩ Icc a b)) (ha : a ∈ s)
    (h : ∀ t ∈ Ico a b, Icc a t ⊆ s → s ∈ 𝓝[>] t) :
    Icc a b ⊆ s := by
  rcases lt_or_ge b a with hab | hab
  · simp_all
  set A := {t ∈ Icc a b | Icc a t ⊆ s}
  have a_mem : a ∈ A := ⟨left_mem_Icc.mpr hab, by simp [ha]⟩
  have bdd_A : BddAbove A := ⟨b, fun t ht ↦ ht.1.2⟩
  set t₁ := sSup A
  have t₁_mem : t₁ ∈ Icc a b := ⟨le_csSup bdd_A a_mem, csSup_le ⟨a, a_mem⟩ (fun t ht ↦ ht.1.2)⟩
  obtain ⟨⟨t₁a, t₁b⟩, ht₁⟩ : t₁ ∈ A := by
    refine ⟨t₁_mem, fun t ht ↦ ?_⟩
    rcases ht.2.eq_or_lt with rfl | h
    · have : closure A ⊆ s ∩ Icc a b := by
        apply (closure_subset_iff hs).2 (fun t ht ↦ ⟨?_, ht.1⟩)
        have : t ∈ Icc a t := ⟨ht.1.1, le_rfl⟩
        exact ht.2 this
      apply this.trans inter_subset_left
      exact csSup_mem_closure ⟨a, a_mem⟩ bdd_A
    · obtain ⟨c, cA, tc⟩ : ∃ c ∈ A, t < c := (lt_csSup_iff bdd_A ⟨a, a_mem⟩).1 h
      apply cA.2
      exact ⟨ht.1, tc.le⟩
  suffices t₁ = b by simpa [this] using ht₁
  apply eq_of_le_of_not_lt t₁b fun t₁b' ↦ ?_
  obtain ⟨m, t₁m, H⟩ : ∃ m > t₁, Ioo t₁ m ⊆ s :=
    (mem_nhdsGT_iff_exists_Ioo_subset' t₁b').mp (h t₁ ⟨t₁a, t₁b'⟩ (fun s hs ↦ ht₁ hs))
  obtain ⟨t, hat, ht⟩ : ∃ t, t₁ < t ∧ t < min m b := exists_between (lt_min t₁m t₁b')
  have : t ∈ A := by
    refine ⟨⟨by order, ht.le.trans (min_le_right _ _)⟩, fun t' ht' ↦ ?_⟩
    rcases le_or_gt t' t₁ with h't' | h't'
    · exact ht₁ ⟨ht'.1, h't'⟩
    · exact H ⟨h't', ht'.2.trans_lt <| ht.trans_le <| min_le_left ..⟩
  have : t ≤ t₁ := le_csSup bdd_A this
  order

/-- A "continuous induction principle" for a closed interval: if a set `s` meets `[a, b]`
on a closed subset, contains `a`, and for any `x ∈ s ∩ [a, b)` the set `s` includes some open
neighborhood of `x` within `(x, +∞)`, then `[a, b] ⊆ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant786525c2a6ff8f69c77a2e49049d3f89901d0bd08482adaa28581c154a39687f.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec58c516e95199231596874e646f4157df3bc781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
