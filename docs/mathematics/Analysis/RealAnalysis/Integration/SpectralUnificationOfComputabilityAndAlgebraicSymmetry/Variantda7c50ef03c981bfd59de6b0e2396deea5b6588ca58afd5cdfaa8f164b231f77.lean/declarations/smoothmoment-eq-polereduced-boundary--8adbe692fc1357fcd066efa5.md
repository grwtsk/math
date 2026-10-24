# smoothMoment_eq_poleReduced_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d38cfdf-cb5a-aea8-7aa3-a6348d8d357c",
  "kind": "theorem",
  "lexical_name": "smoothMoment_eq_poleReduced_boundary",
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
  "slug": "smoothmoment-eq-polereduced-boundary--8adbe692fc1357fcd066efa5",
  "source": {
    "blob": "6d4d695f14a88974f33a6089b3869c45b44aa472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantda7c50ef03c981bfd59de6b0e2396deea5b6588ca58afd5cdfaa8f164b231f77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8adbe692fc1357fcd066efa5a5e998df7978578e584e50c383da7f5f8c5710e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantda7c50ef03c981bfd59de6b0e2396deea5b6588ca58afd5cdfaa8f164b231f77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d38cfdf-cb5a-aea8-7aa3-a6348d8d357c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothMoment_eq_poleReduced_boundary (A : ℝ) (hA : 1 ≤ A) :
    smoothMoment A = -2 * deriv (weightedPoleCorrelation A) lowerEndpoint := by
  have hA0 : 0 < A := by linarith
  have hc : Continuous (fun t ↦ Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t) := by
    exact ((Real.continuous_exp.comp (continuous_id.div_const 2)).mul
      (sourceCorrelation_contDiff A hA0).continuous)
  unfold smoothMoment
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ ↦ poleReduced_smooth_hasDerivAt A t hA0) (hc.intervalIntegrable _ _),
    (poleReduced_upper_endpoints A hA0).2.1, mul_zero,
    lowerEndpoint, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  ring

/-- The literal lower endpoint has the source-correct sign and constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantda7c50ef03c981bfd59de6b0e2396deea5b6588ca58afd5cdfaa8f164b231f77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantda7c50ef03c981bfd59de6b0e2396deea5b6588ca58afd5cdfaa8f164b231f77.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4d695f14a88974f33a6089b3869c45b44aa472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
