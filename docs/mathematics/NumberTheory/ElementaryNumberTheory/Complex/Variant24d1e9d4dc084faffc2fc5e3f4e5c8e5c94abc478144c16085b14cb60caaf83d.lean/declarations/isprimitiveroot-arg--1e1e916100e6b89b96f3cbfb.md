# IsPrimitiveRoot.arg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5daed2f-3fdd-43ff-8e17-abd3641a0837",
  "kind": "theorem",
  "lexical_name": "IsPrimitiveRoot.arg",
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
  "slug": "isprimitiveroot-arg--1e1e916100e6b89b96f3cbfb",
  "source": {
    "blob": "a9bba15ea9392f1efdf883c22bde5a2376fade3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 129,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e1e916100e6b89b96f3cbfb7c7cb16acdf5ae74df2f6325618562bfed746cc0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5daed2f-3fdd-43ff-8e17-abd3641a0837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPrimitiveRoot.arg {n : ℕ} {ζ : ℂ} (h : IsPrimitiveRoot ζ n) (hn : n ≠ 0) :
    ∃ i : ℤ, ζ.arg = i / n * (2 * Real.pi) ∧ IsCoprime i n ∧ i.natAbs < n := by
  rw [Complex.isPrimitiveRoot_iff _ _ hn] at h
  obtain ⟨i, h, hin, rfl⟩ := h
  rw [mul_comm, ← mul_assoc, Complex.exp_mul_I]
  refine ⟨if i * 2 ≤ n then i else i - n, ?_, ?isCoprime, by omega⟩
  case isCoprime =>
    replace hin := Nat.isCoprime_iff_coprime.mpr hin
    split_ifs
    · exact hin
    · convert hin.add_mul_left_left (-1) using 1
      rw [mul_neg_one, sub_eq_add_neg]
  split_ifs with h₂
  · convert Complex.arg_cos_add_sin_mul_I _
    · push_cast; rfl
    · push_cast; rfl
    field_simp [hn]
    refine ⟨(neg_lt_neg Real.pi_pos).trans_le ?_, ?_⟩
    · rw [neg_zero]
      exact mul_nonneg (mul_nonneg i.cast_nonneg <| by simp [Real.pi_pos.le])
        (by rw [inv_nonneg]; simp only [Nat.cast_nonneg])
    rw [← mul_rotate', mul_div_assoc]
    rw [← mul_one n] at h₂
    exact mul_le_of_le_one_right Real.pi_pos.le
      ((div_le_iff₀' <| mod_cast pos_of_gt h).mpr <| mod_cast h₂)
  rw [← Complex.cos_sub_two_pi, ← Complex.sin_sub_two_pi]
  convert Complex.arg_cos_add_sin_mul_I _
  · push_cast
    rw [← sub_one_mul, sub_div, div_self]
    exact mod_cast hn
  · push_cast
    rw [← sub_one_mul, sub_div, div_self]
    exact mod_cast hn
  field_simp [hn]
  refine ⟨?_, le_trans ?_ Real.pi_pos.le⟩
  on_goal 2 =>
    rw [mul_div_assoc]
    exact mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr <| mod_cast h.le)
      (div_nonneg (by simp [Real.pi_pos.le]) <| by simp)
  rw [← mul_rotate', mul_div_assoc, neg_lt, ← mul_neg, mul_lt_iff_lt_one_right Real.pi_pos, ←
    neg_div, ← neg_mul, neg_sub, div_lt_iff₀, one_mul, sub_mul, sub_lt_comm, ← mul_sub_one]
  · norm_num
    exact mod_cast not_le.mp h₂
  · exact Nat.cast_pos.mpr hn.bot_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bba15ea9392f1efdf883c22bde5a2376fade3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
