# C_bk_le_Cb_of_M_eq_five_mul_ten_pow_ten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16c8e8f4-58fb-8d52-60cd-a572d9c7f6e7",
  "kind": "lemma",
  "lexical_name": "C_bk_le_Cb_of_M_eq_five_mul_ten_pow_ten",
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
  "slug": "c-bk-le-cb-of-m-eq-five-mul-ten-pow-ten--53937760b90d6bd2e29bfdd8",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1938,
    "line": 1931,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53937760b90d6bd2e29bfdd87c0131871db80b66868620cb8025111679c3161b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c8e8f4-58fb-8d52-60cd-a572d9c7f6e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1931–1938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma C_bk_le_Cb_of_M_eq_five_mul_ten_pow_ten (b c C M : ℝ) (Cb : ℕ → ℝ) (h : (b, Cb 1, Cb 2, Cb 3, Cb 4, Cb 5, c, C, M) ∈ BKLNW.table_12) (k : ℕ) (hk : k ∈ Finset.Icc 1 5) (hM5 : M = 5 * 10 ^ 10) :
  C_bk bklnw_b_row6 bklnw_c_row6 bklnw_C_row6 RS_prime.c₀ k ≤ Cb k := by
  have h_row6_mem : (bklnw_b_row6, bklnw_Cb_row6 1, bklnw_Cb_row6 2, bklnw_Cb_row6 3, bklnw_Cb_row6 4, bklnw_Cb_row6 5, bklnw_c_row6, bklnw_C_row6, bklnw_M_row6) ∈ table_12 := by
    simp only [table_12, List.mem_cons, List.not_mem_nil, Prod.mk.injEq]
    eval_table_12; norm_num
  have h_ver := bklnw_table_12_verification bklnw_b_row6 bklnw_c_row6 bklnw_C_row6 bklnw_M_row6 bklnw_Cb_row6 h_row6_mem k hk
  exact le_trans h_ver ((table_12_Cb_bounds b c C M Cb h k hk).1 hM5)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L1931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
