# continuous_input_complete_error_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feac2eb7-db8f-7648-9c2d-a4b17a91bb5f",
  "kind": "theorem",
  "lexical_name": "continuous_input_complete_error_payment",
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
  "slug": "continuous-input-complete-error-payment--0bc07cdb8b226e312a81e090",
  "source": {
    "blob": "66d6cf455e1b57ff4d0c316f99bc47b64c705483",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variant8fed8fab9ce7fdc7ae996c8aa2ca959056125a6ddcf3813268286f885f5fb0f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bc07cdb8b226e312a81e090ecc15e4167ea19d0f43bdb1a451410b0613b4bea",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variant8fed8fab9ce7fdc7ae996c8aa2ca959056125a6ddcf3813268286f885f5fb0f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feac2eb7-db8f-7648-9c2d-a4b17a91bb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_input_complete_error_payment {A a ε : ℝ}
    (hA : 1 ≤ A) (hε : 0 < ε) :
    normPrice A (a + 3 / 16) - transform A (continuousInput A a ε) ≤
      ε * exponentialWindowMass A (a + 3 / 16) := by
  unfold normPrice transform
  rw [← intervalIntegral.integral_sub
    (full_weighted_norm_integrand_intervalIntegrable hA _)
    (continuous_comparison_product_intervalIntegrable hA hε)]
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hg : Continuous (fun u ↦ |C A u| * Real.exp ((a + 3 / 16) * u) -
      C A u * Real.exp (3 * u / 16) * continuousInput A a ε (Real.exp u)) := by
    simp_rw [exact_continuous_comparison_integrand]
    exact (hc.abs.mul (Real.continuous_exp.comp (continuous_const.mul continuous_id))).sub
      (((hc.pow 2).div (hc.abs.add continuous_const) (fun u ↦ (add_pos_of_nonneg_of_pos (abs_nonneg (C A u)) hε).ne')).mul
        (Real.continuous_exp.comp (continuous_const.mul continuous_id)))
  have hb := intervalIntegral.integral_mono_on (μ := volume) (by linarith : -2 * A ≤ 2 * A)
    (hg.intervalIntegrable _ _)
    (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).const_mul ε).intervalIntegrable _ _)
    (fun u _ ↦ by
      rw [exact_continuous_comparison_integrand, ← sub_mul]
      exact mul_le_mul_of_nonneg_right (complete_regularized_sign_error (C A u) hε).2
        (Real.exp_pos _).le)
  rw [intervalIntegral.integral_const_mul] at hb
  exact hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variant8fed8fab9ce7fdc7ae996c8aa2ca959056125a6ddcf3813268286f885f5fb0f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformInput/Variant8fed8fab9ce7fdc7ae996c8aa2ca959056125a6ddcf3813268286f885f5fb0f2.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d6cf455e1b57ff4d0c316f99bc47b64c705483` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
