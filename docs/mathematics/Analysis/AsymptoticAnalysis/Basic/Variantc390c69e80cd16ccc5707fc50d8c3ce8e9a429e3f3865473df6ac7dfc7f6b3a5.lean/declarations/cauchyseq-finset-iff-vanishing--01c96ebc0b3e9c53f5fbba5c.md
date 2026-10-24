# cauchySeq_finset_iff_vanishing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c0a744f62cad68a5632f776658c9000dc08b3a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:362cef6e-00dd-91d0-a8a7-7c0ca1ece103",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:504051f6-d787-e3cd-f01e-200205c4a11a",
  "kind": "theorem",
  "lexical_name": "cauchySeq_finset_iff_vanishing",
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
  "slug": "cauchyseq-finset-iff-vanishing--01c96ebc0b3e9c53f5fbba5c",
  "source": {
    "blob": "1c0a744f62cad68a5632f776658c9000dc08b3a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1127,
    "line": 1102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01c96ebc0b3e9c53f5fbba5cad778e1cb318d74a3738dff2fa9521d74b0f6939",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantc390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:504051f6-d787-e3cd-f01e-200205c4a11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1102–1127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_finset_iff_vanishing :
    (CauchySeq fun s : Finset β => ∑ b in s, f b) ↔
      ∀ e ∈ 𝓝 (0 : α), ∃ s : Finset β, ∀ t, Disjoint t s → (∑ b in t, f b) ∈ e := by
  simp only [CauchySeq, cauchy_map_iff, and_iff_right atTop_neBot, prod_atTop_atTop_eq,
    uniformity_eq_comap_nhds_zero α, tendsto_comap_iff, (· ∘ ·), atTop_neBot, true_and]
  rw [tendsto_atTop']
  constructor
  · intro h e he
    obtain ⟨⟨s₁, s₂⟩, h⟩ := h e he
    use s₁ ∪ s₂
    intro t ht
    specialize h (s₁ ∪ s₂, s₁ ∪ s₂ ∪ t) ⟨le_sup_left, le_sup_of_le_left le_sup_right⟩
    simpa only [Finset.sum_union ht.symm, add_sub_cancel'] using h
  · rintro h e he
    rcases exists_nhds_half_neg he with ⟨d, hd, hde⟩
    rcases h d hd with ⟨s, h⟩
    use (s, s)
    rintro ⟨t₁, t₂⟩ ⟨ht₁, ht₂⟩
    have : ((∑ b in t₂, f b) - ∑ b in t₁, f b) = (∑ b in t₂ \ s, f b) - ∑ b in t₁ \ s, f b := by
      rw [← Finset.sum_sdiff ht₁, ← Finset.sum_sdiff ht₂, add_sub_add_right_eq_sub]
    simp only [this]
    exact hde _ (h _ Finset.sdiff_disjoint) _ (h _ Finset.sdiff_disjoint)
#align cauchy_seq_finset_iff_vanishing cauchySeq_finset_iff_vanishing

/-- The sum over the complement of a finset tends to `0` when the finset grows to cover the whole
space. This does not need a summability assumption, as otherwise all sums are zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantc390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean#L1102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c0a744f62cad68a5632f776658c9000dc08b3a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
