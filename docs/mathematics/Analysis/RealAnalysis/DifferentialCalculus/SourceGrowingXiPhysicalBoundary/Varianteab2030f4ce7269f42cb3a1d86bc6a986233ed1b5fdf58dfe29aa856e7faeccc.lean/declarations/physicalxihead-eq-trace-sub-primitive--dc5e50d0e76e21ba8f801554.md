# physicalXiHead_eq_trace_sub_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:774ce240-4100-a27a-e514-996eabfb65d1",
  "kind": "theorem",
  "lexical_name": "physicalXiHead_eq_trace_sub_primitive",
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
  "slug": "physicalxihead-eq-trace-sub-primitive--dc5e50d0e76e21ba8f801554",
  "source": {
    "blob": "614b3a307d846bc01681b89dc61e8bc2ec343f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5e50d0e76e21ba8f8015549c9ea376f373f1891faa99027af9badd606d333f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:774ce240-4100-a27a-e514-996eabfb65d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalXiHead_eq_trace_sub_primitive {A H : ℝ} (hA : 0 < A)
    (hH : Real.log 7 ≤ H) :
    (∫ y in 7..Real.exp H, actualTransformedXiBlockDensity A y) =
      actualF7 H * minusCorrelationWeight A H -
        ∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t := by
  have hF := actualF7_absolutelyContinuous H hH
  have hparts := hF.integral_mul_deriv_eq_deriv_mul
    (minusCorrelationWeight_contDiff A hA).contDiffOn.absolutelyContinuousOnInterval
  rw [actualF7_at_log_seven] at hparts
  simp only [zero_mul, sub_zero] at hparts
  have he : (∫ t in Real.log 7..H, deriv actualF7 t * minusCorrelationWeight A t) =
      ∫ t in Real.log 7..H, timeXiDensity t * minusCorrelationWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualF7_ae_hasDerivAt H hH] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
  rw [he] at hparts
  have hd : (∫ t in Real.log 7..H, actualF7 t * deriv (minusCorrelationWeight A) t) =
      ∫ t in Real.log 7..H, actualF7 t * actualXiCurvature A t := by
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [(minusCorrelationWeight_hasDerivAt A t hA).deriv]
    rfl
  rw [hd] at hparts
  have hx := intervalIntegral.integral_comp_mul_deriv_of_deriv_nonneg
    (a := Real.log 7) (b := H) (f := Real.exp) (f' := Real.exp)
    (g := actualTransformedXiBlockDensity A) Real.continuous_exp.continuousOn
    (fun t _ => Real.hasDerivAt_exp t) (fun t _ => (Real.exp_pos t).le)
  simp only [Function.comp_apply, actual_transformed_density_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at hx
  rw [← hx]
  linarith only [hparts]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceGrowingXiPhysicalBoundary/Varianteab2030f4ce7269f42cb3a1d86bc6a986233ed1b5fdf58dfe29aa856e7faeccc.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `614b3a307d846bc01681b89dc61e8bc2ec343f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
