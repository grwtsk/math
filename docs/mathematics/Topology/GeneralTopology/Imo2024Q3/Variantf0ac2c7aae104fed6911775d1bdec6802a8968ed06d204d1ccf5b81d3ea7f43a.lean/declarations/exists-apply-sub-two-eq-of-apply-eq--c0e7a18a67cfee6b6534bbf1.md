# exists_apply_sub_two_eq_of_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d349cfcdfff7f8054e50b2b68caf010e2677752e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 728,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e63f450-d7c7-2b8b-afbd-1c419144a497",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36aa44cc-a024-c15a-c488-c0f4641d6be8",
  "kind": "lemma",
  "lexical_name": "exists_apply_sub_two_eq_of_apply_eq",
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
  "slug": "exists-apply-sub-two-eq-of-apply-eq--c0e7a18a67cfee6b6534bbf1",
  "source": {
    "blob": "d349cfcdfff7f8054e50b2b68caf010e2677752e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 728,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0e7a18a67cfee6b6534bbf1f54840eb204aa4f3fe4ac7aa0e012084c2aa2ff4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36aa44cc-a024-c15a-c488-c0f4641d6be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_apply_sub_two_eq_of_apply_eq {i j : ℕ} (hi : N' a N + 2 < i) (hijlt : i < j)
    (his : Small a (a i)) (hijeq : a i = a j)
    (hij1 : ∀ t, Small a t → #{x ∈ Finset.Ico i j | a x = t} ≤ 1) :
    ∃ t, t ∈ Finset.Ico i j ∧ a (i - 2) = a t := by
  let I : Finset ℕ := {t ∈ Finset.range (k a + 1) | a (i - 1) ≤ #{u ∈ Finset.range i | a u = t}}
  let J : Finset ℕ := {t ∈ Finset.range (k a + 1) | a (j - 1) ≤ #{u ∈ Finset.range j | a u = t}}
  have hIc : a i = #I := hc.apply_eq_card_small_le_card_eq_of_small (by lia) his
  have hJc : a j = #J := hc.apply_eq_card_small_le_card_eq_of_small (by lia) (hijeq ▸ his)
  have hIJc : #I = #J := hIc ▸ hJc ▸ hijeq
  have := hc.N_lt_N'
  have hiju : Finset.range i ∪ Finset.Ico i j = Finset.range j := by
    rw [Finset.range_eq_Ico, Finset.Ico_union_Ico' (by lia) (by lia)]
    simp [hijlt.le]
  have hi2s : a (i - 2) < k a + 1 :=
    Nat.lt_add_one_iff.mpr (hc.apply_sub_two_small_of_apply_small_of_N'_lt his (by lia))
  have hiI : a (i - 2) ∈ I := by
    simp only [I, Finset.mem_filter, Finset.mem_range, hi2s, true_and]
    rw [hc.apply_eq_card (by lia), show i - 1 - 1 = i - 2 by lia]
    exact Finset.card_le_card (Finset.filter_subset_filter _ (by simp))
  have hj2s : a (j - 2) < k a + 1 :=
    Nat.lt_add_one_iff.mpr (hc.apply_sub_two_small_of_apply_small_of_N'_lt (hijeq ▸ his) (by lia))
  have hjJ : a (j - 2) ∈ J := by
    simp only [J, Finset.mem_filter, Finset.mem_range, hj2s, true_and]
    rw [hc.apply_eq_card (by lia), show j - 1 - 1 = j - 2 by lia]
    exact Finset.card_le_card (Finset.filter_subset_filter _ (by simp))
  have hjI : a (j - 2) ∈ I := by
    by_contra hjI
    have hjIf := hjI
    simp only [Finset.mem_filter, Finset.mem_range, hj2s, true_and, not_le, I,
      Nat.lt_iff_add_one_le] at hjIf
    have hjI' : a (j - 1) ≤ a (i - 1) := by
      calc a (j - 1) ≤ #{u ∈ Finset.range j | a u = a (j - 2)} :=
            (Finset.mem_filter.mp hjJ).2
        _ = #{u ∈ Finset.range i ∪ Finset.Ico i j | a u = a (j - 2)} := by rw [hiju]
        _ ≤ #{u ∈ Finset.range i | a u = a (j - 2)} + #{u ∈ Finset.Ico i j | a u = a (j - 2)} := by
            rw [Finset.filter_union]
            exact Finset.card_union_le _ _
        _ ≤ #{u ∈ Finset.range i | a u = a (j - 2)} + 1 := by
            gcongr
            exact hij1 _ (by rwa [Nat.lt_add_one_iff, ← Small] at hj2s)
        _ ≤ a (i - 1) := hjIf
    refine hjI (Finset.eq_of_subset_of_card_le (fun x hxI ↦ ?_) hIJc.symm.le ▸ hjJ)
    simp only [Finset.mem_filter, I, J] at *
    refine ⟨hxI.1, ?_⟩
    calc a (j - 1) ≤ a (i - 1) := hjI'
      _ ≤ #{u ∈ Finset.range i | a u = x} := hxI.2
      _ ≤ #{u ∈ Finset.range j | a u = x} :=
        Finset.card_le_card (Finset.filter_subset_filter _ (by simp [hijlt.le]))
  have hi1j1 : a (i - 1) + 1 ≤ a (j - 1) := by
    calc a (i - 1) + 1 ≤ #{u ∈ Finset.range i | a u = a (j - 2)} + 1 := by grind
      _ ≤ #{u ∈ Finset.range i | a u = a (j - 2)} + #{u ∈ Finset.Ico i j | a u = a (j - 2)} := by
          gcongr
          simp only [Finset.one_le_card]
          refine ⟨j - 2, ?_⟩
          simp only [Finset.mem_filter, Finset.mem_Ico, and_true]
          refine ⟨?_, by lia⟩
          by_contra hj
          have hj' : j = i + 1 := by lia
          subst hj'
          exact hc.not_small_of_big (hc.apply_add_one_big_of_apply_small_of_N'_le his (by lia))
            (hijeq ▸ his)
      _ = #({u ∈ Finset.range i | a u = a (j - 2)} ∪ {u ∈ Finset.Ico i j | a u = a (j - 2)}) := by
          refine (Finset.card_union_of_disjoint ?_).symm
          simp only [Finset.disjoint_iff_ne, Finset.mem_filter, Finset.mem_range, Finset.mem_Ico,
            and_imp]
          rintro t hti - u hiu - -
          lia
      _ = #{u ∈ Finset.range j | a u = a (j - 2)} := by
          rw [← Finset.filter_union, hiju]
      _ = a (j - 1) := by
          rw [hc.apply_eq_card (show N < j - 1 by lia)]
          congr 1
          ext t
          simp only [Finset.mem_filter, Finset.mem_range]
          refine ⟨fun ⟨htj, htj'⟩ ↦ ⟨?_, by convert! htj' using 1⟩,
            fun ⟨htj, htj'⟩ ↦ ⟨by lia, by convert! htj' using 1⟩⟩
          by_contra htj''
          have ht1 : t = j - 1 := by lia
          subst ht1
          exact hc.not_small_of_big (htj' ▸ hc.apply_sub_one_big_of_apply_small_of_N'_lt
            (hijeq ▸ his) (by lia)) (hc.apply_sub_two_small_of_apply_small_of_N'_lt
            (hijeq ▸ his) (by lia))
  have hIJ : I = J := by
    refine (Finset.eq_of_subset_of_card_le (Finset.subset_iff.mp fun x hxJ ↦ ?_) hIJc.le).symm
    simp only [Finset.mem_filter, Finset.mem_range, I, J, Nat.lt_add_one_iff] at *
    refine ⟨hxJ.1, (add_le_add_iff_right 1).mp ?_⟩
    calc a (i - 1) + 1 ≤ a (j - 1) := hi1j1
       _ ≤ #{u ∈ Finset.range j | a u = x} := hxJ.2
       _ = #({u ∈ Finset.range i | a u = x} ∪ {u ∈ Finset.Ico i j | a u = x}) := by
           rw [← Finset.filter_union, hiju]
       _ ≤ #{u ∈ Finset.range i | a u = x} + #{u ∈ Finset.Ico i j | a u = x} :=
           Finset.card_union_le _ _
       _ ≤ #{u ∈ Finset.range i | a u = x} + 1 := by
           gcongr
           exact hij1 _ hxJ.1
  simp only [hIJ, J, Finset.mem_filter] at hiI
  have hiI' := hi1j1.trans hiI.2
  rw [hc.apply_eq_card (by lia), show i - 1 - 1 = i - 2 by lia, Nat.add_one_le_iff,
     ← not_le] at hiI'
  rcases Finset.not_subset.mp (mt Finset.card_le_card hiI') with ⟨t, htj, hti⟩
  simp only [Finset.mem_filter, Finset.mem_range] at htj hti
  simp only [htj.2, and_true, not_lt, tsub_le_iff_right] at hti
  refine ⟨t, Finset.mem_Ico.mpr ⟨?_, htj.1⟩, htj.2.symm⟩
  by_contra
  have hti' : t = i - 1 := by lia
  subst hti'
  exact hc.not_small_of_big (hc.apply_sub_one_big_of_apply_small_of_N'_lt his (by lia)) (htj.2 ▸
    (hc.apply_sub_two_small_of_apply_small_of_N'_lt his (by lia)))

variable (a)

/-- The indices, minus `n`, of small numbers appearing for the second or subsequent time at or
after `a n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variantf0ac2c7aae104fed6911775d1bdec6802a8968ed06d204d1ccf5b81d3ea7f43a.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d349cfcdfff7f8054e50b2b68caf010e2677752e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
