# listTransvecCol_mul_last_col

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94a833d7617ebdd929a9f7c1680f2089a38431c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ee84bc8-397e-ad4b-b778-fc14dbc4702a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec0a7cc2-3402-ece9-d277-49e71c8abfa3",
  "kind": "theorem",
  "lexical_name": "listTransvecCol_mul_last_col",
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
  "slug": "listtransveccol-mul-last-col--bf63d91ac21409a1f9504921",
  "source": {
    "blob": "94a833d7617ebdd929a9f7c1680f2089a38431c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 384,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf63d91ac21409a1f95049215e4cfd2c618e75a67ae63fbe28d8220dd3c946fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0a7cc2-3402-ece9-d277-49e71c8abfa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem listTransvecCol_mul_last_col (hM : M (inr unit) (inr unit) ≠ 0) (i : Fin r) :
    ((listTransvecCol M).prod * M) (inl i) (inr unit) = 0 := by
  suffices H :
    ∀ k : ℕ,
      k ≤ r →
        (((listTransvecCol M).drop k).prod * M) (inl i) (inr unit) =
          if k ≤ i then 0 else M (inl i) (inr unit) by
    simpa [List.drop] using H 0
  intro k hk
  induction hk using Nat.decreasingInduction with
  | of_succ n hn IH =>
    have hn' : n < (listTransvecCol M).length := by simpa [listTransvecCol] using hn
    let n' : Fin r := ⟨n, hn⟩
    rw [List.drop_eq_getElem_cons hn']
    have A :
      (listTransvecCol M)[n] =
        transvection (inl n') (inr unit) (-M (inl n') (inr unit) / M (inr unit) (inr unit)) := by
      simp [n', listTransvecCol]
    simp only [Matrix.mul_assoc, A, List.prod_cons]
    by_cases h : n' = i
    · have hni : n = i := by
        cases i
        simp only [n', Fin.mk_eq_mk] at h
        simp [h]
      simp only [h, transvection_mul_apply_same, IH, ← hni, add_le_iff_nonpos_right,
          listTransvecCol_mul_last_row_drop _ _ hn]
      simp [field]
    · have hni : n ≠ i := by
        rintro rfl
        cases i
        simp [n'] at h
      simp only [ne_eq, inl.injEq, Ne.symm h, not_false_eq_true, transvection_mul_apply_of_ne]
      rw [IH]
      rcases le_or_gt (n + 1) i with (hi | hi)
      · simp only [hi, n.le_succ.trans hi, ite_true]
      · rw [ite_eq_right, ite_eq_right]
        · simpa only [hni.symm, not_le, or_false] using Nat.lt_succ_iff_lt_or_eq.1 hi
        · simpa only [not_le] using hi
  | self =>
    simp only [length_listTransvecCol, le_refl, List.drop_eq_nil_of_le, List.prod_nil,
      Matrix.one_mul]
    rw [ite_eq_right]
    simpa only [not_le] using i.2

/-- Multiplying by some of the matrices in `listTransvecRow M` does not change the last column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantbbccf75870906be1d90d309cacec6fb748d513fbc59a2a71b21fa526ef4a7286.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94a833d7617ebdd929a9f7c1680f2089a38431c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
