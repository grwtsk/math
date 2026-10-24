# erase_le_erase_min'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3c6fab8350b0cca7f7d4a8559ce80581d086b59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9b98b96-3091-030f-35e5-1ab4257db1ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2f6fa25-553f-d5df-e373-e9385de8e557",
  "kind": "lemma",
  "lexical_name": "erase_le_erase_min'",
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
  "slug": "erase-le-erase-min--27ec3af2da84023e813374fc",
  "source": {
    "blob": "e3c6fab8350b0cca7f7d4a8559ce80581d086b59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 362,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ec3af2da84023e813374fc0f47d279b98e3a58fb2ced72217ba7b16da4c241",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2f6fa25-553f-d5df-e373-e9385de8e557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma erase_le_erase_min' (hst : toColex s ≤ toColex t) (hcard : #s ≤ #t) (ha : a ∈ s) :
    toColex (s.erase a) ≤
      toColex (t.erase <| min' t <| card_pos.1 <| (card_pos.2 ⟨a, ha⟩).trans_le hcard) := by
  generalize_proofs ht
  set m := min' t ht
  -- Case on whether `s = t`
  obtain rfl | h' := eq_or_ne s t
  -- If `s = t`, then `s \ {a} ≤ s \ {m}` because `m ≤ a`
  · exact (erase_le_erase ha <| min'_mem _ _).2 <| min'_le _ _ <| ha
  -- If `s ≠ t`, call `w` the colex witness. Case on whether `w < a` or `a < w`
  replace hst := hst.lt_of_ne <| toColex_inj.not.2 h'
  simp only [lt_iff_exists_filter_lt, mem_sdiff, filter_inj, and_assoc] at hst
  obtain ⟨w, hwt, hws, hw⟩ := hst
  obtain hwa | haw := (ne_of_mem_of_not_mem ha hws).symm.lt_or_lt
  -- If `w < a`, then `a` is the colex witness for `s \ {a} < t \ {m}`
  · have hma : m < a := (min'_le _ _ hwt).trans_lt hwa
    refine (lt_iff_exists_forall_lt.2 ⟨a, mem_erase.2 ⟨hma.ne', (hw hwa).1 ha⟩,
      notMem_erase _ _, fun b hbs hbt ↦ ?_⟩).le
    change b ∉ t.erase m at hbt
    rw [mem_erase, not_and_or, not_ne_iff] at hbt
    obtain rfl | hbt := hbt
    · assumption
    · by_contra! hab
      exact hbt <| (hw <| hwa.trans_le hab).1 <| mem_of_mem_erase hbs
  -- If `a < w`, case on whether `m < w` or `m = w`
  obtain rfl | hmw : m = w ∨ m < w := (min'_le _ _ hwt).eq_or_lt
  -- If `m = w`, then `s \ {a} = t \ {m}`
  · have : erase t m ⊆ erase s a := by
      rintro b hb
      rw [mem_erase] at hb ⊢
      exact ⟨(haw.trans_le <| min'_le _ _ hb.2).ne',
        (hw <| hb.1.lt_of_le' <| min'_le _ _ hb.2).2 hb.2⟩
    rw [eq_of_subset_of_card_le this]
    rw [card_erase_of_mem ha, card_erase_of_mem (min'_mem _ _)]
    exact tsub_le_tsub_right hcard _
  -- If `m < w`, then `w` works as the colex witness for  `s \ {a} < t \ {m}`
  · refine (lt_iff_exists_forall_lt.2 ⟨w, mem_erase.2 ⟨hmw.ne', hwt⟩, mt mem_of_mem_erase hws,
      fun b hbs hbt ↦ ?_⟩).le
    change b ∉ t.erase m at hbt
    rw [mem_erase, not_and_or, not_ne_iff] at hbt
    obtain rfl | hbt := hbt
    · assumption
    · by_contra! hwb
      exact hbt <| (hw <| hwb.lt_of_ne <| ne_of_mem_of_not_mem hwt hbt).1 <| mem_of_mem_erase hbs

/-- Strictly monotone functions preserve the colex ordering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant23c6bb7f604d92888678fd20942dd5adb0e4d1b702099a574e8f3f726a6beb3d.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3c6fab8350b0cca7f7d4a8559ce80581d086b59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
