# C_bk_le_Cb_of_M_ne_ten_pow_nineteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82e1f840-aaa4-0370-4946-5dd4f1e027ff",
  "kind": "lemma",
  "lexical_name": "C_bk_le_Cb_of_M_ne_ten_pow_nineteen",
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
  "slug": "c-bk-le-cb-of-m-ne-ten-pow-nineteen--620838ea446470c493e94d2e",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1954,
    "line": 1939,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:620838ea446470c493e94d2e23dac767d2a6eca2c939cedf0e9dd7ea7c89da73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82e1f840-aaa4-0370-4946-5dd4f1e027ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1939–1954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma C_bk_le_Cb_of_M_ne_ten_pow_nineteen (b c C M : ℝ) (Cb : ℕ → ℝ)
    (h : (b, Cb 1, Cb 2, Cb 3, Cb 4, Cb 5, c, C, M) ∈ BKLNW.table_12)
    (k : ℕ) (hk : k ∈ Finset.Icc 1 5) (hM : M ≠ 10 ^ 19) :
    C_bk bklnw_b_row14 bklnw_c_row14 bklnw_C_row14 RS_prime.c₀ k ≤ Cb k := by
  have h_row14_mem : (bklnw_b_row14, bklnw_Cb_row14 1, bklnw_Cb_row14 2, bklnw_Cb_row14 3, bklnw_Cb_row14 4, bklnw_Cb_row14 5, bklnw_c_row14, bklnw_C_row14, bklnw_M_row14) ∈ table_12 := by
    simp only [table_12, List.mem_cons, List.not_mem_nil, Prod.mk.injEq]
    eval_table_12; norm_num
  have h_ver := bklnw_table_12_verification bklnw_b_row14 bklnw_c_row14 bklnw_C_row14 bklnw_M_row14 bklnw_Cb_row14 h_row14_mem k hk
  exact le_trans h_ver ((table_12_Cb_bounds b c C M Cb h k hk).2 hM)

@[blueprint
  "bklnw-corollary-9-1-explicit"
  (title := "BKLNW Corollary 9.1 explicit version")
  (statement := /--  We have $\theta(x) - x \geq - C_{b,k} x / \log k$ for all $k=1,\dots, 5$, $e^b \leq x < 10^{19}$, and $C_{b,k}$ from Table 12. -/)
  (proof := /-- Insert the above table into the previous corollary. -/)
  (latexEnv := "corollary")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L1939).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
