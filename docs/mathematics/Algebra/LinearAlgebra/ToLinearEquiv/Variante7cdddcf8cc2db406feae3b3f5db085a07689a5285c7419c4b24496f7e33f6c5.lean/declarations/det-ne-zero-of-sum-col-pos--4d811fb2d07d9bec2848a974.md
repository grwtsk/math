# det_ne_zero_of_sum_col_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40285048-79e5-28ed-f773-6117e7abb8e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c72e391-7cf0-78df-5f7a-3b46c649d9c0",
  "kind": "lemma",
  "lexical_name": "det_ne_zero_of_sum_col_pos",
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
  "slug": "det-ne-zero-of-sum-col-pos--4d811fb2d07d9bec2848a974",
  "source": {
    "blob": "9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d811fb2d07d9bec2848a974ad5ab21d011ca82da7ffbc1828d527898b446063",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c72e391-7cf0-78df-5f7a-3b46c649d9c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma det_ne_zero_of_sum_col_pos [DecidableEq n]
    {S : Type*} [CommRing S] [LinearOrder S] [IsStrictOrderedRing S]
    {A : Matrix n n S} (h1 : Pairwise fun i j => A i j < 0) (h2 : ∀ j, 0 < ∑ i, A i j) :
    A.det ≠ 0 := by
  cases isEmpty_or_nonempty n
  · simp
  · contrapose! h2
    obtain ⟨v, ⟨h_vnz, h_vA⟩⟩ := Matrix.exists_vecMul_eq_zero_iff.mpr h2
    wlog h_sup : 0 < Finset.sup' Finset.univ Finset.univ_nonempty v
    · refine this h1 inferInstance h2 (-1 • v) ?_ ?_ ?_
      · exact smul_ne_zero (by norm_num) h_vnz
      · rw [Matrix.vecMul_smul, h_vA, smul_zero]
      · obtain ⟨i, hi⟩ := Function.ne_iff.mp h_vnz
        simp_rw [Finset.lt_sup'_iff, Finset.mem_univ, true_and] at h_sup ⊢
        simp_rw [not_exists, not_lt] at h_sup
        refine ⟨i, ?_⟩
        rw [Pi.smul_apply, neg_smul, one_smul, Left.neg_pos_iff]
        exact Ne.lt_of_le hi (h_sup i)
    · obtain ⟨j₀, -, h_j₀⟩ := Finset.exists_mem_eq_sup' Finset.univ_nonempty v
      refine ⟨j₀, ?_⟩
      rw [← mul_le_mul_left (h_j₀ ▸ h_sup), Finset.mul_sum, mul_zero]
      rw [show 0 = ∑ i, v i * A i j₀ from (congrFun h_vA j₀).symm]
      refine Finset.sum_le_sum (fun i hi => ?_)
      by_cases h : i = j₀
      · rw [h]
      · exact (mul_le_mul_right_of_neg (h1 h)).mpr (h_j₀ ▸ Finset.le_sup' v hi)

/-- A matrix whose nondiagonal entries are negative with the sum of the entries of each
row positive has nonzero determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLinearEquiv/Variante7cdddcf8cc2db406feae3b3f5db085a07689a5285c7419c4b24496f7e33f6c5.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f37a3984764deded8c8dbe6a5bb4b4bbd3f5cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
