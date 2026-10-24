# actualSourceCoupling_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a2fee30-c41d-406e-8c63-212122314186",
  "kind": "theorem",
  "lexical_name": "actualSourceCoupling_inner",
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
  "slug": "actualsourcecoupling-inner--6be088746407ad2b00a04375",
  "source": {
    "blob": "5a8c9b15c11f169910b64f9cd5c94c1c7ef6ce22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6be088746407ad2b00a04375c60a700ac59fdda07bd9fc1aa255c7eb081e41ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a2fee30-c41d-406e-8c63-212122314186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceCoupling_inner :
    ⟪translation (Real.log 5) (originalSourceState 2),
      translation (Real.log 8) (originalSourceState 2)⟫_ℂ = (actualSourceCoupling : ℂ) := by
  rw [translation_inner_stationary]
  let s : ℝ := Real.log 8 - Real.log 5
  have ht : translation s (originalSourceState 2) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative 2 (x - s) : ℂ) := by
    filter_upwards [translation_coe_ae s (originalSourceState 2),
      (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae (A := 2) (by norm_num))] with x hx hy
    exact hx.trans hy
  have he : ⟪originalSourceState 2, translation s (originalSourceState 2)⟫_ℂ =
      ((sourceCorrelation explicitSecondDerivative 2 s : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative 2 x *
          normalizedTest explicitSecondDerivative 2 (x - s) : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [originalSourceState_coe_ae (A := 2) (by norm_num), ht] with x hx hy
        rw [hx, hy, RCLike.inner_apply']
        simp
      _ = _ := integral_complex_ofReal
  rw [he]
  congr 2
  exact (Real.log_div (by norm_num : (8 : ℝ) ≠ 0) (by norm_num : (5 : ℝ) ≠ 0)).symm

/-- The corresponding retained labels inside canonical four-channel synthesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant38465555ba5fb571f097fa7d0b39888335e95e5c0c8b06a5733eb265edcc5e13.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8c9b15c11f169910b64f9cd5c94c1c7ef6ce22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
