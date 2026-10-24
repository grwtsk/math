# toList_succ_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc976d5553f3aa67ec79cec0d3bce3678eff4f28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86c4624b-283e-09c2-925d-42c880d6e4e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ee8eb3e-7c72-3572-add8-ad9c0056f745",
  "kind": "theorem",
  "lexical_name": "toList_succ_eq_map",
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
  "slug": "tolist-succ-eq-map--9ab8ab8174de3b036ca16309",
  "source": {
    "blob": "dc976d5553f3aa67ec79cec0d3bce3678eff4f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2200,
    "line": 2165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab8ab8174de3b036ca163090b0a78b758957bb5e0d5090b1e57c4b87dcf4138",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ee8eb3e-7c72-3572-add8-ad9c0056f745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2165–2200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_succ_eq_map [LE α] [DecidableLE α] [Least? α]
    [UpwardEnumerable α] [LinearlyUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [InfinitelyUpwardEnumerable α] [Rxc.IsAlwaysFinite α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLeast? α] {hi : α} :
    (*...=(succ hi)).toList = UpwardEnumerable.least (hn := ⟨hi⟩) :: (*...=hi).toList.map succ := by
  apply eq_of_pairwise_lt_of_mem_iff_mem (lt := UpwardEnumerable.LT)
  · exact pairwise_toList_upwardEnumerableLt
  · refine List.Pairwise.cons ?_ ?_
    · simp only [List.mem_map, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂,
        mem_toList_iff_mem]
      exact fun a _ => UpwardEnumerable.lt_of_le_of_lt (b := a)
        UpwardEnumerable.least_le UpwardEnumerable.lt_succ
    apply List.Pairwise.map (R := UpwardEnumerable.LT) (S := UpwardEnumerable.LT)
    · exact fun _ _ => UpwardEnumerable.succ_lt_succ_iff.mpr
    · exact pairwise_toList_upwardEnumerableLt
  · simp only [mem_toList_iff_mem, List.mem_cons, List.mem_map]
    simp only [Membership.mem, UpwardEnumerable.le_iff]
    intro a
    haveI : Nonempty α := ⟨hi⟩
    by_cases hle : UpwardEnumerable.LE (succ UpwardEnumerable.least) a
    · obtain ⟨b, rfl, hb⟩ := UpwardEnumerable.exists_of_succ_le hle
      have := UpwardEnumerable.least_le (a := b)
      replace := UpwardEnumerable.not_gt_of_le this
      simp only [UpwardEnumerable.succ_le_succ_iff, succ_inj, exists_eq_right, iff_or_self]
      intro h
      exact this.elim (h ▸ UpwardEnumerable.lt_succ)
    · obtain ⟨n, hn⟩ := UpwardEnumerable.least_le (a := a)
      match n with
      | 0 =>
        rw [succMany?_eq_some_iff_succMany, UpwardEnumerable.succMany_zero] at hn
        simp [← hn, UpwardEnumerable.least_le]
      | n + 1 =>
        rw [succMany?_eq_some_iff_succMany, UpwardEnumerable.succMany_add_one_eq_succMany_succ,
          ← succMany?_eq_some_iff_succMany] at hn
        exact hle.elim ⟨n, hn⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant69454bcb5d2eecfd1d211d3033942ffbc895954a52df62224e1b0927d57a87b8.lean#L2165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc976d5553f3aa67ec79cec0d3bce3678eff4f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
