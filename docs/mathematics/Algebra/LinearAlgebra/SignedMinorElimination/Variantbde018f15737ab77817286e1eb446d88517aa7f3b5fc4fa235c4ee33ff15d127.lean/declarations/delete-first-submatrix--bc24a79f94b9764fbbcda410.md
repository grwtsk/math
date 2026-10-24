# delete_first_submatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52c26d64-994a-fc77-32aa-809309bf8134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6785989c-fc35-efba-b232-dc2af48c63dd",
  "kind": "theorem",
  "lexical_name": "delete_first_submatrix",
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
  "slug": "delete-first-submatrix--bc24a79f94b9764fbbcda410",
  "source": {
    "blob": "f2b57501d26aec3f258086dddf5d17632bd9d8e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 215,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc24a79f94b9764fbbcda4109127077eb8a0e854287620b7e6d8d2693191099a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6785989c-fc35-efba-b232-dc2af48c63dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delete_first_submatrix {n m : ℕ} (M : Matrix (Fin (n + 1)) (Fin m) ℝ)
    (S : Fin (n + 1) ↪o Fin ((n + 1) + m)) (h : (S 0).val < n + 1) :
    (columnSubmatrix (augment M) S).submatrix (firstPivot S h).succAbove Fin.succ =
      columnSubmatrix (augment (M.submatrix (firstPivot S h).succAbove id))
        (deleteFirstColumns S) := by
  ext i j
  have hs := S.strictMono (Fin.succ_pos j)
  change (S 0).val < (S j.succ).val at hs
  have hspos : 0 < (S j.succ).val := by omega
  by_cases hc : (S j.succ).val < n + 1
  · have hc' : (deleteFirstColumns S j).val < n := by
      change (S j.succ).val - 1 < n
      omega
    simp only [Matrix.submatrix_apply, columnSubmatrix, augment, dif_pos hc, dif_pos hc']
    by_cases hi : i.castSucc < firstPivot S h
    · rw [Fin.succAbove_of_castSucc_lt _ _ hi]
      have he : (⟨(S j.succ).val, hc⟩ : Fin (n + 1)) = i.castSucc.rev ↔
          (⟨(deleteFirstColumns S j).val, hc'⟩ : Fin n) = i.rev := by
        constructor <;> intro hh <;> apply Fin.ext
        · have hv := congrArg Fin.val hh
          dsimp [Fin.rev, deleteFirstColumns, OrderEmbedding.ofStrictMono] at hv ⊢
          omega
        · have hv := congrArg Fin.val hh
          dsimp [Fin.rev, deleteFirstColumns, OrderEmbedding.ofStrictMono] at hv
          dsimp [Fin.rev]
          omega
      simp only [antiReverse, Fin.val_castSucc, he]
    · have hip : (firstPivot S h).val ≤ i.val := by exact le_of_not_gt hi
      rw [Fin.succAbove_of_le_castSucc _ _ (le_of_not_gt hi)]
      have hleft : (⟨(S j.succ).val, hc⟩ : Fin (n + 1)) ≠ i.succ.rev := by
        intro hh
        have hv := congrArg Fin.val hh
        dsimp [Fin.rev, firstPivot] at hv hip
        omega
      have hright : (⟨(deleteFirstColumns S j).val, hc'⟩ : Fin n) ≠ i.rev := by
        intro hh
        have hv := congrArg Fin.val hh
        dsimp [Fin.rev, deleteFirstColumns, firstPivot, OrderEmbedding.ofStrictMono] at hv hip
        omega
      simp [antiReverse, hleft, hright]
  · have hc' : ¬ (deleteFirstColumns S j).val < n := by
      change ¬ (S j.succ).val - 1 < n
      omega
    simp only [Matrix.submatrix_apply, columnSubmatrix, augment, dif_neg hc, dif_neg hc']
    congr 1
    apply Fin.ext
    change (S j.succ).val - (n + 1) = (S j.succ).val - 1 - n
    omega

/-- Every maximal minor of the augmentation is an exact signed source minor, at arbitrary rank. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variantbde018f15737ab77817286e1eb446d88517aa7f3b5fc4fa235c4ee33ff15d127.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b57501d26aec3f258086dddf5d17632bd9d8e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
