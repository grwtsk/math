# shadow_initSeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:704442b7-53ce-5dbd-c15f-43a484ccc50a",
  "kind": "lemma",
  "lexical_name": "shadow_initSeg",
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
  "slug": "shadow-initseg--daa6060a3968217a92cfcff3",
  "source": {
    "blob": "08dfb3532f0b77b4454d0354a84f98f7de6d331f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daa6060a3968217a92cfcff3aa942ae585d65d4465b7f0d71163a1d5c6a1fabf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:704442b7-53ce-5dbd-c15f-43a484ccc50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shadow_initSeg [Fintype α] (hs : s.Nonempty) :
    ∂ (initSeg s) = initSeg (erase s <| min' s hs) := by
  -- This is a pretty painful proof, with lots of cases.
  ext t
  simp only [mem_shadow_iff_insert_mem, mem_initSeg]
  constructor
  -- First show that if t ∪ a ≤ s, then t ≤ s - min s
  · rintro ⟨a, ha, hst, hts⟩
    constructor
    · rw [card_erase_of_mem (min'_mem _ _), hst, card_insert_of_notMem ha, add_tsub_cancel_right]
    · simpa [ha] using erase_le_erase_min' hts hst.ge (mem_insert_self _ _)
  -- Now show that if t ≤ s - min s, there is j such that t ∪ j ≤ s
  -- We choose j as the smallest thing not in t
  simp_rw [le_iff_eq_or_lt, lt_iff_exists_filter_lt, mem_sdiff, filter_inj, and_assoc]
  simp only [toColex_inj, and_imp]
  rintro cards' (rfl | ⟨k, hks, hkt, z⟩)
  -- If t = s - min s, then use j = min s so t ∪ j = s
  · refine ⟨min' s hs, notMem_erase _ _, ?_⟩
    rw [insert_erase (min'_mem _ _)]
    exact ⟨rfl, Or.inl rfl⟩
  set j := min' tᶜ ⟨k, mem_compl.2 hkt⟩
  -- Assume first t < s - min s, and take k as the colex witness for this
  have hjk : j ≤ k := min'_le _ _ (mem_compl.2 ‹k ∉ t›)
  have : j ∉ t := mem_compl.1 (min'_mem _ _)
  have hcard : #s = #(insert j t) := by
    rw [card_insert_of_notMem ‹j ∉ t›, ← ‹_ = #t›, card_erase_add_one (min'_mem _ _)]
  refine ⟨j, ‹_›, hcard, ?_⟩
  -- Cases on j < k or j = k
  obtain hjk | r₁ := hjk.lt_or_eq
  -- if j < k, k is our colex witness for t ∪ {j} < s
  · refine Or.inr ⟨k, mem_of_mem_erase ‹_›, fun hk ↦ hkt <| mem_of_mem_insert_of_ne hk hjk.ne',
      fun x hx ↦ ?_⟩
    simpa only [mem_insert, z hx, (hjk.trans hx).ne', mem_erase, Ne, false_or,
      and_iff_right_iff_imp] using fun _ ↦ ((min'_le _ _ <| mem_of_mem_erase hks).trans_lt hx).ne'
  -- if j = k, all of range k is in t so by sizes t ∪ {j} = s
  refine Or.inl (eq_of_subset_of_card_le (fun a ha ↦ ?_) hcard.ge).symm
  rcases lt_trichotomy k a with (lt | rfl | gt)
  · apply mem_insert_of_mem
    rw [z lt]
    refine mem_erase_of_ne_of_mem (lt_of_le_of_lt ?_ lt).ne' ha
    apply min'_le _ _ (mem_of_mem_erase ‹_›)
  · rw [r₁]; apply mem_insert_self
  · apply mem_insert_of_mem
    rw [← r₁] at gt
    by_contra
    apply (min'_le tᶜ _ _).not_gt gt
    rwa [mem_compl]

/-- The shadow of an initial segment is also an initial segment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant318d81793696ffd57322684fccab9a014dde03d21474d92539de2a5ae50bea54.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08dfb3532f0b77b4454d0354a84f98f7de6d331f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
