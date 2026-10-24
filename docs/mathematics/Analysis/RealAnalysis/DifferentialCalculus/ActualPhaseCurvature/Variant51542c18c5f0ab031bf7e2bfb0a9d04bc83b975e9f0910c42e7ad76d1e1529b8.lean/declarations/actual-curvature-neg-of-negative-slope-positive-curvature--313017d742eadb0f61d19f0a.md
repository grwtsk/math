# actual_curvature_neg_of_negative_slope_positive_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50c2c8a1-dad8-d137-003e-4d4dc3a115ae",
  "kind": "theorem",
  "lexical_name": "actual_curvature_neg_of_negative_slope_positive_curvature",
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
  "slug": "actual-curvature-neg-of-negative-slope-positive-curvature--313017d742eadb0f61d19f0a",
  "source": {
    "blob": "bc0bb77a732bb42de65236174c32116756ddfaea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvature/Variant51542c18c5f0ab031bf7e2bfb0a9d04bc83b975e9f0910c42e7ad76d1e1529b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313017d742eadb0f61d19f0a031dac2699e8983ce50a0231dffc194ba415c1c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvature/Variant51542c18c5f0ab031bf7e2bfb0a9d04bc83b975e9f0910c42e7ad76d1e1529b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50c2c8a1-dad8-d137-003e-4d4dc3a115ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_curvature_neg_of_negative_slope_positive_curvature {A u : ℝ}
    (hA : 1≤A) (hu : deriv (criticalPrimeTest A) u<0)
    (hc : 0<deriv (deriv (criticalPrimeTest A)) u) : pairedTailCurvature A u<0 := by
  rw [actual_negative_phase_curvature hA hu]
  exact mul_neg_of_neg_of_pos (neg_neg_of_pos (actual_massRatio_pos hA)) hc

end ContinuousResearch.ActualPhaseCurvature

-- Full frozen public declaration closure audits.

#check ContinuousResearch.ActualPhaseCurvature.actual_positiveMass_pos
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_positiveMass_pos
#print ContinuousResearch.ActualPhaseCurvature.actual_positiveMass_pos

#check ContinuousResearch.ActualPhaseCurvature.actual_massRatio_pos
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_massRatio_pos
#print ContinuousResearch.ActualPhaseCurvature.actual_massRatio_pos

#check ContinuousResearch.ActualPhaseCurvature.actual_massRatio_lt_one
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_massRatio_lt_one
#print ContinuousResearch.ActualPhaseCurvature.actual_massRatio_lt_one

#check ContinuousResearch.ActualPhaseCurvature.actual_massRatio_deficit
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_massRatio_deficit
#print ContinuousResearch.ActualPhaseCurvature.actual_massRatio_deficit

#check ContinuousResearch.ActualPhaseCurvature.actual_excursion_le_positiveMass
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_excursion_le_positiveMass
#print ContinuousResearch.ActualPhaseCurvature.actual_excursion_le_positiveMass

#check ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_hasDerivAt
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_hasDerivAt
#print ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_hasDerivAt

#check ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_curvature
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_curvature
#print ContinuousResearch.ActualPhaseCurvature.actual_negative_phase_curvature

#check ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_hasDerivAt
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_hasDerivAt
#print ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_hasDerivAt

#check ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_curvature
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_curvature
#print ContinuousResearch.ActualPhaseCurvature.actual_positive_phase_curvature

#check ContinuousResearch.ActualPhaseCurvature.actual_curvature_neg_of_negative_slope_positive_curvature
#print axioms ContinuousResearch.ActualPhaseCurvature.actual_curvature_neg_of_negative_slope_positive_curvature
#print ContinuousResearch.ActualPhaseCurvature.actual_curvature_neg_of_negative_slope_positive_curvature
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvature/Variant51542c18c5f0ab031bf7e2bfb0a9d04bc83b975e9f0910c42e7ad76d1e1529b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvature/Variant51542c18c5f0ab031bf7e2bfb0a9d04bc83b975e9f0910c42e7ad76d1e1529b8.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0bb77a732bb42de65236174c32116756ddfaea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
