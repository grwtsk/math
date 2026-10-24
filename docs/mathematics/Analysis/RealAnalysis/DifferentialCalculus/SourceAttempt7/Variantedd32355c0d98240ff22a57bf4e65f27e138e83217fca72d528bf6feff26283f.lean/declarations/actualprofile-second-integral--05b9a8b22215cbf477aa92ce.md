# actualProfile_second_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c7baac49c660df86f5658e84a7850474b547616",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3791397c-166f-8546-6db2-53c21a073ba2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6f3a3d3-b1d0-f889-d18d-1635e3b618ed",
  "kind": "theorem",
  "lexical_name": "actualProfile_second_integral",
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
  "slug": "actualprofile-second-integral--05b9a8b22215cbf477aa92ce",
  "source": {
    "blob": "2c7baac49c660df86f5658e84a7850474b547616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 306,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b9a8b22215cbf477aa92ce6c090adb56437fe5ec8dca2767dd436ad1a8793d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6f3a3d3-b1d0-f889-d18d-1635e3b618ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_second_integral {x : ℝ} (hx : -2 < x) :
    IntegrableOn (fun t : ℝ ↦ t * Real.exp (-x * t) / (Real.exp (2 * t) - 1)) (Ioi 0) ∧
      deriv (deriv ContinuousResearch.CompensatedGammaProfile.actualProfile) x =
        ∫ t : ℝ in Ioi 0, t * Real.exp (-x * t) / (Real.exp (2 * t) - 1) :=
  ⟨curvatureKernel_integrable hx,
    (actualProfile_second_hasDerivAt hx).deriv.trans (secondSeries_eq_curvatureIntegral hx)⟩

end ContinuousResearch.ActualGammaSecond

#check ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_summable
#check ContinuousResearch.ActualGammaSecond.secondTerm_summable
#check ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#check ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#check ContinuousResearch.ActualGammaSecond.secondTerm_nonneg
#check ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integrable
#check ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integral
#check ContinuousResearch.ActualGammaSecond.momentTerm_nonneg
#check ContinuousResearch.ActualGammaSecond.momentTerm_integrable
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral
#check ContinuousResearch.ActualGammaSecond.momentTerm_hasSum
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_continuousOn
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm_summable
#check ContinuousResearch.ActualGammaSecond.momentTerm_lintegral_enorm_tsum_lt_top
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_integrable
#check ContinuousResearch.ActualGammaSecond.secondSeries_eq_curvatureIntegral
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_integral
#print axioms ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#print axioms ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_nonneg
#print axioms ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integrable
#print axioms ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integral
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_nonneg
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integrable
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_hasSum
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_continuousOn
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm_summable
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_lintegral_enorm_tsum_lt_top
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_integrable
#print axioms ContinuousResearch.ActualGammaSecond.secondSeries_eq_curvatureIntegral
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_integral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variantedd32355c0d98240ff22a57bf4e65f27e138e83217fca72d528bf6feff26283f.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7baac49c660df86f5658e84a7850474b547616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
