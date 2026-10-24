# logHalfDensity_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6335d36-73c5-438b-cb51-491722f9702a",
  "kind": "theorem",
  "lexical_name": "logHalfDensity_integral",
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
  "slug": "loghalfdensity-integral--13ba4f21e4c7db0c9319ace9",
  "source": {
    "blob": "863df8875532dc674778c02d469904cff6fe8bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ba4f21e4c7db0c9319ace92a023d13cf19c247429e93c6d19267a12992a713",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6335d36-73c5-438b-cb51-491722f9702a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logHalfDensity_integral :
    (∫ u in Ioi (1 : ℝ), logHalfDensity u) = 4 := by
  have hsub :=
    integral_comp_exp_Ioi logHalfDensity (0 : ℝ)
  have hsub' :
      (∫ r in Ioi (0 : ℝ),
        Real.exp r * logHalfDensity (Real.exp r)) =
        ∫ u in Ioi (1 : ℝ), logHalfDensity u := by
    simpa [smul_eq_mul] using hsub
  rw [← hsub']
  calc
    (∫ r in Ioi (0 : ℝ),
      Real.exp r * logHalfDensity (Real.exp r)) =
        ∫ r in Ioi (0 : ℝ),
          r * Real.exp (-r / 2) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro r hr
      exact exp_mul_logHalfDensity r
    _ = 4 := exponential_half_first_moment

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `863df8875532dc674778c02d469904cff6fe8bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
