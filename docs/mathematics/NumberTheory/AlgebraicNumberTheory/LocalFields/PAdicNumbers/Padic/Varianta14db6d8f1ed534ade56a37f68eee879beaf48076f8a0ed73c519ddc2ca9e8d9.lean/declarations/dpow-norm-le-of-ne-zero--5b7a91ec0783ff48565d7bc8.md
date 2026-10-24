# dpow'_norm_le_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc50ed4e259707b881d6274e158ea756dffe484b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7f170e7-0e91-2a7a-ede9-73a6bb039e84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e621717a-7290-5009-cb53-334b07c1aaa8",
  "kind": "lemma",
  "lexical_name": "dpow'_norm_le_of_ne_zero",
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
  "slug": "dpow-norm-le-of-ne-zero--5b7a91ec0783ff48565d7bc8",
  "source": {
    "blob": "cc50ed4e259707b881d6274e158ea756dffe484b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7a91ec0783ff48565d7bc8c13523888898094ba4e8a0ef534d41b2cada29d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e621717a-7290-5009-cb53-334b07c1aaa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma dpow'_norm_le_of_ne_zero {n : ℕ} (hn : n ≠ 0) {x : ℤ_[p]}
    (hx : x ∈ Ideal.span {(p : ℤ_[p])}) : ‖dpow' p n x‖ ≤ (p : ℝ)⁻¹ := by
  unfold dpow'
  by_cases hx0 : x = 0
  · rw [hx0]
    simp [inverse_eq_inv', coe_zero, ne_eq, hn, not_false_eq_true, zero_pow, mul_zero,
      norm_zero, inv_nonneg, cast_nonneg]
  · have hlt : (padicValNat p n.factorial : ℤ) < n := by
      exact_mod_cast padicValNat_factorial_lt_of_ne_zero p hn
    have hnorm : 0 < ‖(n ! : ℚ_[p])‖ := by
      simp only [norm_pos_iff, ne_eq, cast_eq_zero]
      exact factorial_ne_zero n
    rw [← zpow_neg_one, ← Nat.cast_one (R := ℤ), Padic.norm_le_pow_iff_norm_lt_pow_add_one]
    simp only [inverse_eq_inv', Padic.padicNormE.mul, norm_inv, _root_.norm_pow,
      padic_norm_e_of_padicInt, cast_one, Int.reduceNeg, neg_add_cancel, zpow_zero]
    rw [norm_eq_zpow_neg_valuation hx0, inv_mul_lt_one₀ hnorm, Padic.norm_eq_zpow_neg_valuation
      (cast_ne_zero.mpr n.factorial_ne_zero), ← zpow_natCast, ← zpow_mul]
    gcongr
    · exact_mod_cast Nat.Prime.one_lt hp.elim
    · simp only [neg_mul, Padic.valuation_natCast, neg_lt_neg_iff]
      apply lt_of_lt_of_le hlt
      conv_lhs => rw [← one_mul (n : ℤ)]
      gcongr
      norm_cast
      rwa [← PadicInt.mem_span_pow_iff_le_valuation x hx0, pow_one]

set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Varianta14db6d8f1ed534ade56a37f68eee879beaf48076f8a0ed73c519ddc2ca9e8d9.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc50ed4e259707b881d6274e158ea756dffe484b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
