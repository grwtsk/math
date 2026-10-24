# mul_listTransvecRow_last_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8695178-7f75-043e-10bd-8d47e9742495",
  "kind": "theorem",
  "lexical_name": "mul_listTransvecRow_last_row",
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
  "slug": "mul-listtransvecrow-last-row--68549d7b996428441fc42413",
  "source": {
    "blob": "988de09fad2e152432ddd4bf1e6f388f5e904ce2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 459,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68549d7b996428441fc42413a0e79f1b2448d4944be4726ba5398150fcd2ee20",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8695178-7f75-043e-10bd-8d47e9742495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_listTransvecRow_last_row (hM : M (inr unit) (inr unit) ≠ 0) (i : Fin r) :
    (M * (listTransvecRow M).prod) (inr unit) (inl i) = 0 := by
  suffices H :
    ∀ k : ℕ,
      k ≤ r →
        (M * ((listTransvecRow M).take k).prod) (inr unit) (inl i) =
          if k ≤ i then M (inr unit) (inl i) else 0
  · have A : (listTransvecRow M).length = r := by simp [listTransvecRow]
    rw [← List.take_length (listTransvecRow M), A]
    have : ¬r ≤ i := by simp
    simpa only [this, ite_eq_right_iff] using H r le_rfl
  intro k hk
  induction' k with n IH
  · simp only [if_true, Matrix.mul_one, List.take_zero, zero_le', List.prod_nil, Nat.zero_eq]
  · have hnr : n < r := hk
    let n' : Fin r := ⟨n, hnr⟩
    have A :
      (listTransvecRow M).get? n =
        ↑(transvection (inr unit) (inl n')
        (-M (inr unit) (inl n') / M (inr unit) (inr unit))) := by
      simp only [listTransvecRow, List.ofFnNthVal, hnr, dif_pos, List.get?_ofFn]
    simp only [List.take_succ, A, ← Matrix.mul_assoc, List.prod_append, Matrix.mul_one,
      List.prod_cons, List.prod_nil, Option.to_list_some]
    by_cases h : n' = i
    · have hni : n = i := by
        cases i
        simp only [Fin.mk_eq_mk] at h
        simp only [h]
      have : ¬n.succ ≤ i := by simp only [← hni, n.lt_succ_self, not_le]
      simp only [h, mul_transvection_apply_same, List.take, if_false,
        mul_listTransvecRow_last_col_take _ _ hnr.le, hni.le, this, if_true, IH hnr.le]
      field_simp [hM]
    · have hni : n ≠ i := by
        rintro rfl
        cases i
        tauto
      simp only [IH hnr.le, Ne.def, mul_transvection_apply_of_ne, Ne.symm h, inl.injEq]
      rcases le_or_lt (n + 1) i with (hi | hi)
      · simp [hi, n.le_succ.trans hi, if_true]
      · rw [if_neg, if_neg]
        · simpa only [not_le] using hi
        · simpa only [hni.symm, not_le, or_false_iff] using Nat.lt_succ_iff_lt_or_eq.1 hi
#align matrix.pivot.mul_list_transvec_row_last_row Matrix.Pivot.mul_listTransvecRow_last_row

/-- Multiplying by all the matrices either in `listTransvecCol M` and `listTransvecRow M` kills
all the coefficients in the last row but the last one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantc7e8a08a2c307551d8edbe24c06d4df583d2faf5aca16cf82b18b1d72f167b19.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `988de09fad2e152432ddd4bf1e6f388f5e904ce2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
