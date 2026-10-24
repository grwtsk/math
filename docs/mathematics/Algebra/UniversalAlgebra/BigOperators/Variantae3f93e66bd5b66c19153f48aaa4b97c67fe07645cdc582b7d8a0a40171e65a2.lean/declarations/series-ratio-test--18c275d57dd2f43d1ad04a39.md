# series_ratio_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b999b15d3914f83bc8fa7adfbf63834a77474f93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be675fe6-b969-b70a-b07d-6d8c2be3ddfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a26fc17-59d7-80fe-6f21-f4b8d6901ac8",
  "kind": "lemma",
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
  "slug": "series-ratio-test--18c275d57dd2f43d1ad04a39",
  "source": {
    "blob": "b999b15d3914f83bc8fa7adfbf63834a77474f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 206,
    "path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18c275d57dd2f43d1ad04a3927166c1ce41b3ca4e2ce27c328a2cb237eec95f8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a26fc17-59d7-80fe-6f21-f4b8d6901ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma series_ratio_test {f : ℕ → β} (n : ℕ) (r : α) (hr0 : 0 ≤ r) (hr1 : r < 1)
    (h : ∀ m, n ≤ m → abv (f m.succ) ≤ r * abv (f m)) :
    IsCauSeq abv fun m ↦ ∑ n ∈ range m, f n := by
  have har1 : |r| < 1 := by rwa [abs_of_nonneg hr0]
  refine (geo_series_const (abv (f n.succ) * r⁻¹ ^ n.succ) har1).of_abv_le n.succ fun m hmn ↦ ?_
  obtain rfl | hr := hr0.eq_or_lt
  · have m_pos := lt_of_lt_of_le (Nat.succ_pos n) hmn
    have := h m.pred (Nat.le_of_succ_le_succ (by rwa [Nat.succ_pred_eq_of_pos m_pos]))
    simpa [Nat.sub_add_cancel m_pos, pow_succ] using this
  generalize hk : m - n.succ = k
  replace hk : m = k + n.succ := (tsub_eq_iff_eq_add_of_le hmn).1 hk
  induction k generalizing m n with
  | zero =>
    rw [hk, Nat.zero_add, mul_right_comm, inv_pow _ _, ← div_eq_mul_inv, mul_div_cancel_right₀]
    positivity
  | succ k ih =>
    have kn : k + n.succ ≥ n.succ := by
      rw [← zero_add n.succ]; exact add_le_add (Nat.zero_le _) (by simp)
    rw [hk, Nat.succ_add, pow_succ r, ← mul_assoc]
    refine
      le_trans (by rw [mul_comm] <;> exact h _ (Nat.le_of_succ_le kn))
        (mul_le_mul_of_nonneg_right ?_ hr0)
    exact ih _ h _ (by simp) rfl

end IsCauSeq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b999b15d3914f83bc8fa7adfbf63834a77474f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
