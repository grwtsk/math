# remainingAtomWork_abs_le_elementary_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58ce87a7-9b0f-ca30-0d1e-124aa8ccd26d",
  "kind": "theorem",
  "lexical_name": "remainingAtomWork_abs_le_elementary_budget",
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
  "slug": "remainingatomwork-abs-le-elementary-budget--6ec3fea845994d8cdc6d63c9",
  "source": {
    "blob": "c91bb18e73e56d82df37ad100552bb948c1119b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationConsumer/Variant233a78710cbaa491e4672124d69c3e7bed1e49d91b2b89192323bc1df89db95f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ec3fea845994d8cdc6d63c9603102b32d7b4d37ce26692fa95266ec9cf9be83",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationConsumer/Variant233a78710cbaa491e4672124d69c3e7bed1e49d91b2b89192323bc1df89db95f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58ce87a7-9b0f-ca30-0d1e-124aa8ccd26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingAtomWork_abs_le_elementary_budget {A : ℝ} (hA : 40 ≤ A) :
    |remainingAtomWork A| ≤
      (Real.log 4 + 4 + Real.log 2) * remainingDerivativeMass A := by
  have hp : 0 < A := by linarith
  have hb0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hb1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hab : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  have hg := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A) hab
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  have hm : (∫ t in Real.log 2..2 * A,
      |mangoldtLogError t * deriv (criticalPrimeTest A) t|) ≤
      ∫ t in Real.log 2..2 * A,
        (Real.log 4 + 4 + Real.log 2) * |deriv (criticalPrimeTest A) t| := by
    apply intervalIntegral.integral_mono_on hab hi.abs
      ((hg.abs.const_mul _).intervalIntegrable _ _)
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right
      (mangoldtLogError_abs_le t (hb0.trans ht.1)) (abs_nonneg _)
  unfold remainingAtomWork
  exact (intervalIntegral.abs_integral_le_integral_abs hab).trans
    (hm.trans_eq (by rw [intervalIntegral.integral_const_mul]; rfl))

/-- The obtained absolute budget itself has no eventual constant upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationConsumer/Variant233a78710cbaa491e4672124d69c3e7bed1e49d91b2b89192323bc1df89db95f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRemainingVariationConsumer/Variant233a78710cbaa491e4672124d69c3e7bed1e49d91b2b89192323bc1df89db95f.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c91bb18e73e56d82df37ad100552bb948c1119b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
