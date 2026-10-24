# table_12_Cb_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ae20723-6c25-94da-3531-ecd8c53b2883",
  "kind": "lemma",
  "lexical_name": "table_12_Cb_bounds",
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
  "slug": "table-12-cb-bounds--d00d6baa30d9e6a43cf7fd63",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1930,
    "line": 1907,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d00d6baa30d9e6a43cf7fd633c1fd4e5a4e53ec82be414257bea55295fa69e0f",
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

Occurrence: `result:6ae20723-6c25-94da-3531-ecd8c53b2883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1907–1930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma table_12_Cb_bounds (b c C M : ℝ) (Cb : ℕ → ℝ)
    (h : (b, Cb 1, Cb 2, Cb 3, Cb 4, Cb 5, c, C, M) ∈ BKLNW.table_12)
    (k : ℕ) (hk : k ∈ Finset.Icc 1 5) :
    (M = 5 * 10 ^ 10 → bklnw_Cb_row6 k ≤ Cb k) ∧
    (M ≠ 10 ^ 19 → bklnw_Cb_row14 k ≤ Cb k) := by
  simp only [table_12, List.mem_cons, List.not_mem_nil, Prod.mk.injEq] at h
  casesm* _ ∨ _
  all_goals try contradiction
  all_goals try rcases h with ⟨rfl, hCb1, hCb2, hCb3, hCb4, hCb5, rfl, rfl, rfl⟩
  all_goals try refine ⟨?_, ?_⟩
  all_goals try (
    intro hM
    norm_num at hM
    try contradiction
  )
  all_goals try (
    refine le_of_le_of_mem_Icc_one_five Cb bklnw_Cb_row6 ?_ ?_ ?_ ?_ ?_ k hk <;>
      (unfold bklnw_Cb_row6 table_12_row_Cb; simp only [table_12, List.get, hCb1, hCb2, hCb3, hCb4, hCb5]; norm_num)
  )
  all_goals try (
    refine le_of_le_of_mem_Icc_one_five Cb bklnw_Cb_row14 ?_ ?_ ?_ ?_ ?_ k hk <;>
      (unfold bklnw_Cb_row14 table_12_row_Cb; simp only [table_12, List.get, hCb1, hCb2, hCb3, hCb4, hCb5]; norm_num)
  )

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L1907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
