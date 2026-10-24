# map_fst_le_of_subset_toEnumFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f82a5d-38c1-2bec-6697-82f5c19bd55f",
  "kind": "lemma",
  "lexical_name": "map_fst_le_of_subset_toEnumFinset",
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
  "slug": "map-fst-le-of-subset-toenumfinset--124fb377997736be3316e293",
  "source": {
    "blob": "ac6fb0ceeafa9ab559ebd568a2ffa898ad13b039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:124fb377997736be3316e293c1a11bede1666c967bf02419f09a72342048f70f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f82a5d-38c1-2bec-6697-82f5c19bd55f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_fst_le_of_subset_toEnumFinset {s : Finset (α × ℕ)} (hsm : s ⊆ m.toEnumFinset) :
    s.1.map Prod.fst ≤ m := by
  simp_rw [le_iff_count, count_map]
  rintro a
  obtain ha | ha := (s.1.filter fun x ↦ a = x.1).card.eq_zero_or_pos
  · rw [ha]
    exact Nat.zero_le _
  obtain ⟨n, han, hn⟩ : ∃ n ≥ card (s.1.filter fun x ↦ a = x.1) - 1, (a, n) ∈ s := by
    by_contra! h
    replace h : {x ∈ s | x.1 = a} ⊆ {a} ×ˢ .range (card (s.1.filter fun x ↦ a = x.1) - 1) := by
      simpa +contextual [forall_swap (β := _ = a), Finset.subset_iff,
        imp_not_comm, not_le, Nat.lt_sub_iff_add_lt] using h
    have : card (s.1.filter fun x ↦ a = x.1) ≤ card (s.1.filter fun x ↦ a = x.1) - 1 := by
      simpa [Finset.card, eq_comm] using Finset.card_mono h
    omega
  exact Nat.le_of_pred_lt (han.trans_lt <| by simpa using hsm hn)

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4e587d248efa464aeea66599c480c48f0712769c407006325fd97bdde0b6a43f.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6fb0ceeafa9ab559ebd568a2ffa898ad13b039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
