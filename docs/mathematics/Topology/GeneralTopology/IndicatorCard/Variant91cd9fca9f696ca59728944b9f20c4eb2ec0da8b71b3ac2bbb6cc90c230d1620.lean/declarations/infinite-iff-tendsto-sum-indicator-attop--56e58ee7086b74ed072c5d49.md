# infinite_iff_tendsto_sum_indicator_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9affe3d2a27e45ebe5d22e061bd03bbfe261b38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad0a710b-939c-bff9-1bc4-aeb76577e67a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d7c16d7-fe6e-5ae6-f7c2-4291760ef077",
  "kind": "lemma",
  "lexical_name": "infinite_iff_tendsto_sum_indicator_atTop",
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
  "slug": "infinite-iff-tendsto-sum-indicator-attop--56e58ee7086b74ed072c5d49",
  "source": {
    "blob": "b9affe3d2a27e45ebe5d22e061bd03bbfe261b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e58ee7086b74ed072c5d49c9fc70c3c64b86a7d187f46f49197ed2367ff7a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d7c16d7-fe6e-5ae6-f7c2-4291760ef077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma infinite_iff_tendsto_sum_indicator_atTop {R : Type*}
    [AddCommMonoid R] [PartialOrder R] [IsOrderedAddMonoid R]
    [AddLeftStrictMono R] [Archimedean R] {r : R} (h : 0 < r) {s : Set ℕ} :
    s.Infinite ↔ atTop.Tendsto (fun n ↦ ∑ k ∈ Finset.range n, s.indicator (fun _ ↦ r) k) atTop := by
  constructor
  · have h_mono : Monotone fun n ↦ ∑ k ∈ Finset.range n, s.indicator (fun _ ↦ r) k := by
      refine (sum_mono_set_of_nonneg ?_).comp range_mono
      exact (fun _ ↦ indicator_nonneg (fun _ _ ↦ h.le) _)
    rw [h_mono.tendsto_atTop_atTop_iff]
    intro hs n
    obtain ⟨n', hn'⟩ := exists_lt_nsmul h n
    obtain ⟨t, t_s, t_card⟩ := hs.exists_subset_card_eq n'
    obtain ⟨m, hm⟩ := t.bddAbove
    refine ⟨m + 1, hn'.le.trans ?_⟩
    apply (sum_le_sum fun i _ ↦ (indicator_le_indicator_of_subset t_s (fun _ ↦ h.le)) i).trans_eq'
    have h : t ⊆ Finset.range (m + 1) := by
      intro i i_t
      rw [Finset.mem_range]
      exact (hm i_t).trans_lt (lt_add_one m)
    rw [sum_indicator_subset (fun _ ↦ r) h, sum_eq_card_nsmul (fun _ _ ↦ rfl), t_card]
  · contrapose
    intro hs
    rw [not_infinite] at hs
    rw [tendsto_congr' (sum_indicator_eventually_eq_card r hs), tendsto_atTop_atTop]
    push_neg
    obtain ⟨m, hm⟩ := exists_lt_nsmul h (Nat.card s • r)
    exact ⟨m • r, fun n ↦ ⟨n, le_refl n, not_le_of_lt hm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9affe3d2a27e45ebe5d22e061bd03bbfe261b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
