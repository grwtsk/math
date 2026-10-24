# apply_add_p_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834e8634-8785-aba0-dfdc-be7f17bec11a",
  "kind": "lemma",
  "lexical_name": "apply_add_p_eq",
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
  "slug": "apply-add-p-eq--358f485d639a30dcb5008bea",
  "source": {
    "blob": "dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 912,
    "line": 890,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:358f485d639a30dcb5008bea38dde641a433920157d09baaf5f3572865e92c07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834e8634-8785-aba0-dfdc-be7f17bec11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_add_p_eq {n : ℕ} (hn : N' a N + 2 < n) (hs : Small a (a n)) : a (n + p a n) = a n := by
  rcases hc.exists_mem_Ico_small_and_apply_add_p_eq n with ⟨i, hiIco, his, hin⟩
  suffices i = n by rw [hin, this]
  simp only [Finset.mem_Ico] at hiIco
  by_contra hin'
  have hf (t : ℕ) (hts : Small a t) : #{x ∈ Finset.Ico i (n + p a n) | a x = t} ≤ 1 :=
    calc #{x ∈ Finset.Ico i (n + p a n) | a x = t} ≤ #{x ∈ Finset.Ico n (n + p a n) | a x = t} :=
        Finset.card_le_card (Finset.filter_subset_filter _ (Finset.Ico_subset_Ico hiIco.1 le_rfl))
      _ ≤ 1 := hc.card_filter_apply_eq_Ico_add_p_le_one _ hts
  obtain ⟨t, hti, hi2t⟩ := hc.exists_apply_sub_two_eq_of_apply_eq (j := n + p a n) (by lia)
    (by lia) his hin.symm hf
  have h1 := hc.card_filter_apply_eq_Ico_add_p_le_one n
    (hi2t ▸ hc.apply_sub_two_small_of_apply_small_of_N'_lt his (by lia))
  revert h1
  simp only [imp_false, not_le, Finset.one_lt_card_iff, Finset.mem_filter, Finset.mem_Ico, ne_eq,
    exists_and_left]
  simp only [Finset.mem_Ico] at hti
  refine ⟨i - 2, ⟨⟨?_, by lia⟩, hi2t⟩, t, by lia⟩
  by_contra hi2
  have hi1 : n = i - 1 := by lia
  subst hi1
  exact hc.not_small_of_big (hc.apply_sub_one_big_of_apply_small_of_N'_lt his (by lia)) hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantfa8689cd277ceee6fd5ed9e09b262e8facbca3af2af22396187211e6dd90bfb3.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcfc388977fe3f58d9fe5ac7e12e762cd7650e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
