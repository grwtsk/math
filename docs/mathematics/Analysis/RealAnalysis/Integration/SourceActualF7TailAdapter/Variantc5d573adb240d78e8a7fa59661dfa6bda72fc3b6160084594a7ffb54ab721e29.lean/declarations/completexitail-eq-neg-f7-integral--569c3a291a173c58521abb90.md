# completeXiTail_eq_neg_F7_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb34cf74-482e-98d0-c5f0-042e779eaca4",
  "kind": "theorem",
  "lexical_name": "completeXiTail_eq_neg_F7_integral",
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
  "slug": "completexitail-eq-neg-f7-integral--569c3a291a173c58521abb90",
  "source": {
    "blob": "3a3641b8c05ea8e6ad20901fa4cd00a0a6b50cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variantc5d573adb240d78e8a7fa59661dfa6bda72fc3b6160084594a7ffb54ab721e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:569c3a291a173c58521abb90993253da0fe665186e59e80099a73d9b5a331135",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variantc5d573adb240d78e8a7fa59661dfa6bda72fc3b6160084594a7ffb54ab721e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb34cf74-482e-98d0-c5f0-042e779eaca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_eq_neg_F7_integral (A : ℝ) (hA : 40 ≤ A) :
    completeXiTail A = -(∫ t in Real.log 7..2 * A,
      actualF7 t * (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
  have hp : 0 < A := by linarith
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hparts := (actualF7_absolutelyContinuous (2 * A) hT).
    integral_mul_deriv_eq_deriv_mul
      (minusCorrelationWeight_contDiff A hp).contDiffOn.absolutelyContinuousOnInterval
  rw [actualF7_at_log_seven, minusCorrelationWeight_at_upper A hp] at hparts
  simp only [mul_zero, zero_mul, sub_self, zero_sub] at hparts
  have he : (∫ t in Real.log 7..2 * A,
      deriv actualF7 t * minusCorrelationWeight A t) =
        ∫ t in Real.log 7..2 * A,
          timeXiDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualF7_ae_hasDerivAt (2 * A) hT] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..2 * A,
      actualF7 t * deriv (minusCorrelationWeight A) t) =
        ∫ t in Real.log 7..2 * A,
          actualF7 t *
            (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
              deriv (sourceCorrelation explicitSecondDerivative A) t / 2) := by
    apply intervalIntegral.integral_congr
    intro t _
    rw [(minusCorrelationWeight_hasDerivAt A t hp).deriv]
  rw [hd] at hparts
  rw [completeXiTail_eq_time_integral]
  linarith only [hparts]

end RH16ActualF7
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variantc5d573adb240d78e8a7fa59661dfa6bda72fc3b6160084594a7ffb54ab721e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variantc5d573adb240d78e8a7fa59661dfa6bda72fc3b6160084594a7ffb54ab721e29.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3641b8c05ea8e6ad20901fa4cd00a0a6b50cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
