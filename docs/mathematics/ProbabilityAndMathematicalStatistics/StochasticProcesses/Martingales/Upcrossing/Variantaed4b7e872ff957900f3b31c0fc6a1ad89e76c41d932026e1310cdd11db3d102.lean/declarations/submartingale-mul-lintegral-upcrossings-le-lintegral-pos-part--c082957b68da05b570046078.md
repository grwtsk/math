# Submartingale.mul_lintegral_upcrossings_le_lintegral_pos_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae516409-af31-47b2-7e37-5ed348f3fe69",
  "kind": "theorem",
  "lexical_name": "Submartingale.mul_lintegral_upcrossings_le_lintegral_pos_part",
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
  "slug": "submartingale-mul-lintegral-upcrossings-le-lintegral-pos-part--c082957b68da05b570046078",
  "source": {
    "blob": "5615b3cb71bcf38481e47a143a068ecc1cc27231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 835,
    "line": 807,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c082957b68da05b570046078a147e948ad63f8dc632790879afe1fd210482f8e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae516409-af31-47b2-7e37-5ed348f3fe69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–835.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.mul_lintegral_upcrossings_le_lintegral_pos_part [IsFiniteMeasure μ] (a b : ℝ)
    (hf : Submartingale f ℱ μ) : ENNReal.ofReal (b - a) * ∫⁻ ω, upcrossings a b f ω ∂μ ≤
      ⨆ N, ∫⁻ ω, ENNReal.ofReal ((f N ω - a)⁺) ∂μ := by
  by_cases! hab : a < b
  · simp_rw [upcrossings]
    have : ∀ N, ∫⁻ ω, ENNReal.ofReal ((f N ω - a)⁺) ∂μ = ENNReal.ofReal (∫ ω, (f N ω - a)⁺ ∂μ) := by
      intro N
      rw [ofReal_integral_eq_lintegral_ofReal]
      · exact (hf.sub_martingale (martingale_const _ _ _)).pos.integrable _
      · exact Eventually.of_forall fun ω => posPart_nonneg _
    rw [lintegral_iSup']
    · simp_rw [this, ENNReal.mul_iSup, iSup_le_iff]
      intro N
      rw [(by simp :
          ∫⁻ ω, upcrossingsBefore a b f N ω ∂μ = ∫⁻ ω, ↑(upcrossingsBefore a b f N ω : ℝ≥0) ∂μ),
        lintegral_coe_eq_integral, ← ENNReal.ofReal_mul (sub_pos.2 hab).le]
      · simp_rw [NNReal.coe_natCast]
        grw [hf.mul_integral_upcrossingsBefore_le_integral_pos_part a b N, ← le_iSup _ N]
      · simp only [NNReal.coe_natCast, hf.stronglyAdapted.integrable_upcrossingsBefore hab]
    · exact fun n => measurable_from_top.comp_aemeasurable
        (hf.stronglyAdapted.measurable_upcrossingsBefore hab).aemeasurable
    · filter_upwards with ω N M hNM
      rw [Nat.cast_le]
      exact upcrossingsBefore_mono hab hNM ω
  · rw [← sub_nonpos] at hab
    rw [ENNReal.ofReal_of_nonpos hab, zero_mul]
    exact zero_le

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variantaed4b7e872ff957900f3b31c0fc6a1ad89e76c41d932026e1310cdd11db3d102.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5615b3cb71bcf38481e47a143a068ecc1cc27231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
