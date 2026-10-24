# actual_correlation_third_edge_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cabd2b7-fe66-cd56-a419-17b364232f52",
  "kind": "theorem",
  "lexical_name": "actual_correlation_third_edge_abs_le",
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
  "slug": "actual-correlation-third-edge-abs-le--41b8d11d0f56cdaf46e1e6f7",
  "source": {
    "blob": "cbb695be79ece7155df22dbfbc32821774779223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Varianteabb26edb416ecfd35b0dad2bc7b7fd65a354b8b1a081894aaaa3808879d2a19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41b8d11d0f56cdaf46e1e6f75d70de251e88e4e13eb49a00e365e598bed7f8ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Varianteabb26edb416ecfd35b0dad2bc7b7fd65a354b8b1a081894aaaa3808879d2a19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cabd2b7-fe66-cd56-a419-17b364232f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_third_edge_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : z ≤ 2 * A) :
    |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z| ≤
      67 / A ^ 4 * (2 * A - z) := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have hd := hc.differentiable_iteratedDeriv 3 (by norm_num)
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := univ) (f := iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => hd x)
    (fun x _ => by simpa only [Real.norm_eq_abs, ← iteratedDeriv_succ] using
      actual_correlation_iterated_fourth_abs_le_sixty_seven A x hA)
    convex_univ (mem_univ (2 * A)) (mem_univ z)
  rw [edge_jet_zero A (by linarith) 3] at he
  simp only [Real.norm_eq_abs, sub_zero, abs_of_nonpos (by linarith : z - 2 * A ≤ 0)] at he
  simpa only [show -(z - 2 * A) = 2 * A - z by ring] using he

/-- The actual second jet has the exact quadratic support-edge budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Varianteabb26edb416ecfd35b0dad2bc7b7fd65a354b8b1a081894aaaa3808879d2a19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Varianteabb26edb416ecfd35b0dad2bc7b7fd65a354b8b1a081894aaaa3808879d2a19.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb695be79ece7155df22dbfbc32821774779223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
