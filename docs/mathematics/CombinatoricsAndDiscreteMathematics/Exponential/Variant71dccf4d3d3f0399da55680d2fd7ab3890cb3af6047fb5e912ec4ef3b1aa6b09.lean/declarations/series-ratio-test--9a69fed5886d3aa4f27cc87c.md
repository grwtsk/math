# series_ratio_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6d4cdd6-37c4-c113-b525-90f837e21971",
  "kind": "theorem",
  "lexical_name": "series_ratio_test",
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
  "slug": "series-ratio-test--9a69fed5886d3aa4f27cc87c",
  "source": {
    "blob": "92c7b2fe6c8723001dd7872e2fcd2745f9039c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a69fed5886d3aa4f27cc87c3d4ffa7a79884c4916cf9866db18907b65eb3124",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d4cdd6-37c4-c113-b525-90f837e21971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem series_ratio_test {f : ℕ → β} (n : ℕ) (r : α) (hr0 : 0 ≤ r) (hr1 : r < 1)
    (h : ∀ m, n ≤ m → abv (f m.succ) ≤ r * abv (f m)) :
    IsCauSeq abv fun m => ∑ n in range m, f n := by
  have har1 : |r| < 1 := by rwa [abs_of_nonneg hr0]
  refine'
    isCauSeq_series_of_abv_le_of_isCauSeq n.succ _
      (isCauSeq_geo_series_const (abv (f n.succ) * r⁻¹ ^ n.succ) har1)
  intro m hmn
  cases' Classical.em (r = 0) with r_zero r_ne_zero
  · have m_pos := lt_of_lt_of_le (Nat.succ_pos n) hmn
    have := h m.pred (Nat.le_of_succ_le_succ (by rwa [Nat.succ_pred_eq_of_pos m_pos]))
    simpa [r_zero, Nat.succ_pred_eq_of_pos m_pos, pow_succ] using this
  generalize hk : m - n.succ = k
  have r_pos : 0 < r := lt_of_le_of_ne hr0 (Ne.symm r_ne_zero)
  replace hk : m = k + n.succ := (tsub_eq_iff_eq_add_of_le hmn).1 hk
  induction' k with k ih generalizing m n
  · rw [hk, Nat.zero_add, mul_right_comm, inv_pow _ _, ← div_eq_mul_inv, mul_div_cancel]
    exact (ne_of_lt (pow_pos r_pos _)).symm
  · have kn : k + n.succ ≥ n.succ := by
      rw [← zero_add n.succ]; exact add_le_add (Nat.zero_le _) (by simp)
    erw [hk, Nat.succ_add, pow_succ' r, ← mul_assoc]
    refine
      le_trans (by rw [mul_comm] <;> exact h _ (Nat.le_of_succ_le kn))
        (mul_le_mul_of_nonneg_right ?_ hr0)
    exact ih _ h _ (by simp) rfl
#align series_ratio_test series_ratio_test

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant71dccf4d3d3f0399da55680d2fd7ab3890cb3af6047fb5e912ec4ef3b1aa6b09.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92c7b2fe6c8723001dd7872e2fcd2745f9039c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
