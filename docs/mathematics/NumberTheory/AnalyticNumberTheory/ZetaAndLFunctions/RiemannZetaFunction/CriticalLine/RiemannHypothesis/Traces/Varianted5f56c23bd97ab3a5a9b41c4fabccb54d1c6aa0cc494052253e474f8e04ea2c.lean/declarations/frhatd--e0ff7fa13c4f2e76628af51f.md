# frhatD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13643a04-f369-1d28-629d-ddeff4f6dfb6",
  "kind": "lemma",
  "lexical_name": "frhatD",
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
  "slug": "frhatd--e0ff7fa13c4f2e76628af51f",
  "source": {
    "blob": "15aa4c5de07689c968869fc295f4df7408125780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 641,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0ff7fa13c4f2e76628af51f2ddf7ac0442e175083bdeeaf9f840b181d84830f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13643a04-f369-1d28-629d-ddeff4f6dfb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma frhatD {D : DataD P} (h : FactsD D) : EvBound
    (fun T => max (D.trG2 T / (D.aT T * P.L T) ^ 2
        - (cRatio (P.lam1 T) (D.aT T) (D.bT T) (D.JT T))⁻¹ * D.Ncnt T) 0)
    (fun T => P.calE T * ((cRatio (P.lam1 T) (D.aT T) (D.bT T) (D.JT T))⁻¹ * D.Ncnt T)) := by
  have hlam := h.lam_pos
  have hw : 0 ≤ P.w := by linarith [h.one_le_w]
  obtain ⟨C₂, hC₂, h2⟩ := (tr2D h).eventually_le
  obtain ⟨A, hA, hN⟩ := h.rvm.eventually_le
  refine EvBound.of_eventually_le (c := 4 * π * A + 2 * C₂) (by positivity) ?_
  filter_upwards [h2, hN, regimeD h, h.ab_range, PaperParams.calE_ge_rpow hlam hw,
    PaperParams.calE_nonneg_eventually hlam hw, NcntD_pos h,
    Filter.eventually_ge_atTop (4 * π * A)]
    with T h2 hN hreg hab hEr hE0 hN0 hTA
  obtain ⟨hT, hl, hlog, hL, hX, hLl, hXT⟩ := hreg
  obtain ⟨hb2, hba, -, hJ0, -⟩ := hab
  have hET : 1 / T ≤ P.calE T := by
    refine le_trans ?_ hEr
    rw [one_div, ← Real.rpow_neg_one]
    exact Real.rpow_le_rpow_of_exponent_le hT (by linarith)
  refine le_trans (le_of_eq (abs_of_nonneg (le_max_right _ _))) ?_
  exact frhatD_pointwise T (P.L T) (ell1 T) (l T) (P.calE T) (D.Ncnt T) (D.trG2 T)
    A (D.aT T) (D.bT T) (D.JT T) C₂ hT (by linarith) (hl.trans (PaperParams.l_le_ell1 T))
    (PaperParams.l_le_ell1 T) hN0 hE0 hET hA.le hC₂.le (le_trans hb2 hba) hb2 hJ0 hTA h2 hN

/-- **[eq:ratio-general] assembly**: the D-interface traces bounds with ratio constant
cRatio λ₁ a b J. The body mirrors Zeta23.PrimeSide.tracesBounds_of_facts with b, J
symbolic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Varianted5f56c23bd97ab3a5a9b41c4fabccb54d1c6aa0cc494052253e474f8e04ea2c.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15aa4c5de07689c968869fc295f4df7408125780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
