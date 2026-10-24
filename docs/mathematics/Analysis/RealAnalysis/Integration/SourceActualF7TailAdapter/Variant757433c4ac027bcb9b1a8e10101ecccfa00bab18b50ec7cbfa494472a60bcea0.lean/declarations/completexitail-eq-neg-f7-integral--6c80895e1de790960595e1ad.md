# completeXiTail_eq_neg_F7_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a560746-d8a3-1c30-cd65-aebfc50b4a59",
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
  "slug": "completexitail-eq-neg-f7-integral--6c80895e1de790960595e1ad",
  "source": {
    "blob": "c5ebf086e7f112f111d48f52289ab5509c81df9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c80895e1de790960595e1ad7dc1801b29d428186c92fd709802d26d7b44b394",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a560746-d8a3-1c30-cd65-aebfc50b4a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–198.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant757433c4ac027bcb9b1a8e10101ecccfa00bab18b50ec7cbfa494472a60bcea0.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ebf086e7f112f111d48f52289ab5509c81df9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
