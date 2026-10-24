# mangoldtLogError_centered_eq_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cbaaf09-9863-edf3-d3f4-5132ef6f58dc",
  "kind": "theorem",
  "lexical_name": "mangoldtLogError_centered_eq_interval",
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
  "slug": "mangoldtlogerror-centered-eq-interval--21ae8668e5910cd31d16c5d6",
  "source": {
    "blob": "8aa312019cf71d3d2a2bed9930e363d428f8e419",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21ae8668e5910cd31d16c5d6d2d202ad9110f1221e7e7ff03d786b1fb080a099",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbaaf09-9863-edf3-d3f4-5132ef6f58dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogError_centered_eq_interval {t : ℝ} (ht : 0 ≤ t) :
    mangoldtLogError t+Real.eulerMascheroniConstant =
      psiRelativeError t+(∫ u in (0:ℝ)..t, psiRelativeError u)+1+
        Real.eulerMascheroniConstant := by
  rw [intervalIntegral.integral_of_le ht]
  exact mangoldtLogError_centered_eq_psiRelativeError ht

end ContinuousResearch.ActualChebyshevAbel
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_sum_Icc
#print axioms ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_sum_Icc
#print ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_sum_Icc
#check ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_eq_psi_add_integral
#print axioms ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_eq_psi_add_integral
#print ContinuousResearch.ActualChebyshevAbel.weightedMangoldt_eq_psi_add_integral
#check ContinuousResearch.ActualChebyshevAbel.psi_integral_log_dictionary
#print axioms ContinuousResearch.ActualChebyshevAbel.psi_integral_log_dictionary
#print ContinuousResearch.ActualChebyshevAbel.psi_integral_log_dictionary
#check ContinuousResearch.ActualChebyshevAbel.mangoldtLogPrefix_eq_psiRelativeError_integral
#print axioms ContinuousResearch.ActualChebyshevAbel.mangoldtLogPrefix_eq_psiRelativeError_integral
#print ContinuousResearch.ActualChebyshevAbel.mangoldtLogPrefix_eq_psiRelativeError_integral
#check ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_psiRelativeError
#print axioms ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_psiRelativeError
#print ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_psiRelativeError
#check ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_interval
#print axioms ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_interval
#print ContinuousResearch.ActualChebyshevAbel.mangoldtLogError_centered_eq_interval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa312019cf71d3d2a2bed9930e363d428f8e419` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
