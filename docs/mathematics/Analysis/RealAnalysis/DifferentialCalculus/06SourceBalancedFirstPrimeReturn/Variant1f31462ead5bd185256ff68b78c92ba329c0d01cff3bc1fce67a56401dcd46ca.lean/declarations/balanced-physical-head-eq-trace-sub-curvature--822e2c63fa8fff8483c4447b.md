# balanced_physical_head_eq_trace_sub_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:044dafdc-3b3b-6ebb-3422-43665c52495c",
  "kind": "theorem",
  "lexical_name": "balanced_physical_head_eq_trace_sub_curvature",
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
  "slug": "balanced-physical-head-eq-trace-sub-curvature--822e2c63fa8fff8483c4447b",
  "source": {
    "blob": "633b83a0ae3d7ba28474f267a16673561bc2b130",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822e2c63fa8fff8483c4447b2e76a4c1eda585938422d1475b616123a71d9c4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:044dafdc-3b3b-6ebb-3422-43665c52495c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_physical_head_eq_trace_sub_curvature (A H : ℝ) (hA : 0 < A) :
    (∫ t in Real.log 7..H, balancedFirstPrimeDensity t * minusCorrelationWeight A t) =
      balancedFirstPrimePrimitive H * minusCorrelationWeight A H -
        ∫ t in Real.log 7..H, balancedFirstPrimePrimitive t * actualXiCurvature A t := by
  have hF := balancedFirstPrimePrimitive_absolutelyContinuous H
  have hparts := hF.integral_mul_deriv_eq_deriv_mul
    (minusCorrelationWeight_contDiff A hA).contDiffOn.absolutelyContinuousOnInterval
  rw [balancedFirstPrimePrimitive_at_lower] at hparts
  simp only [zero_mul, sub_zero] at hparts
  have he : (∫ t in Real.log 7..H,
      deriv balancedFirstPrimePrimitive t * minusCorrelationWeight A t) =
        ∫ t in Real.log 7..H,
          balancedFirstPrimeDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [balancedFirstPrimePrimitive_ae_hasDerivAt H] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..H,
      balancedFirstPrimePrimitive t * deriv (minusCorrelationWeight A) t) =
        ∫ t in Real.log 7..H,
          balancedFirstPrimePrimitive t * actualXiCurvature A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [(minusCorrelationWeight_hasDerivAt A t hA).deriv]
    rfl
  rw [hd] at hparts
  linarith only [hparts]

/-- Both full source traces vanish, with no deletion of the zero-to-seven physical head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633b83a0ae3d7ba28474f267a16673561bc2b130` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
