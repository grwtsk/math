# norm_uncenteredCovarianceBilin_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:251a9aef-8b7f-2c13-eb33-65f51bacd9ef",
  "kind": "lemma",
  "lexical_name": "norm_uncenteredCovarianceBilin_le",
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
  "slug": "norm-uncenteredcovariancebilin-le--da4c992ecfc7f1b6ac5bb1f4",
  "source": {
    "blob": "7b165b0f38ca1f52d783469a98a2885f6182ec81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 190,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4c992ecfc7f1b6ac5bb1f4849ca744ef10ac112b1ec90ef1313c4353b7e953",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251a9aef-8b7f-2c13-eb33-65f51bacd9ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_uncenteredCovarianceBilin_le (L₁ L₂ : Dual ℝ E) :
    ‖uncenteredCovarianceBilin μ L₁ L₂‖ ≤ ‖L₁‖ * ‖L₂‖ * ∫ x, ‖x‖ ^ 2 ∂μ := by
  by_cases h : MemLp id 2 μ
  swap; · simp only [uncenteredCovarianceBilin_of_not_memLp h, norm_zero]; positivity
  calc ‖uncenteredCovarianceBilin μ L₁ L₂‖
  _ = ‖∫ x, L₁ x * L₂ x ∂μ‖ := by rw [uncenteredCovarianceBilin_apply h]
  _ ≤ ∫ x, ‖L₁ x‖ * ‖L₂ x‖ ∂μ := (norm_integral_le_integral_norm _).trans (by simp)
  _ ≤ ∫ x, ‖L₁‖ * ‖x‖ * ‖L₂‖ * ‖x‖ ∂μ := by
    refine integral_mono_ae ?_ ?_ (ae_of_all _ fun x ↦ ?_)
    · simp_rw [← norm_mul]
      exact (MemLp.integrable_mul (h.continuousLinearMap_comp L₁)
        (h.continuousLinearMap_comp L₂)).norm
    · simp_rw [mul_assoc]
      refine Integrable.const_mul ?_ _
      simp_rw [← mul_assoc, mul_comm _ (‖L₂‖), mul_assoc, ← pow_two]
      refine Integrable.const_mul ?_ _
      exact h.integrable_norm_pow (by simp)
    · simp only
      rw [mul_assoc]
      gcongr
      · exact ContinuousLinearMap.le_opNorm L₁ x
      · exact ContinuousLinearMap.le_opNorm L₂ x
  _ = ‖L₁‖ * ‖L₂‖ * ∫ x, ‖x‖ ^ 2 ∂μ := by
    rw [← integral_const_mul]
    congr with x
    ring

end Centered

section Covariance

variable [NormedSpace ℝ E] [BorelSpace E] [IsFiniteMeasure μ]

open Classical in
/-- Continuous bilinear form with value `∫ x, (L₁ x - μ[L₁]) * (L₂ x - μ[L₂]) ∂μ` on `(L₁, L₂)`
if `MemLp id 2 μ`. If not, we set it to zero. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CovarianceBilin/Variante60277056c73965c782ffe0b59e6645388bb6c61e1fb3c34ed6dada9e42263e6.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b165b0f38ca1f52d783469a98a2885f6182ec81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
