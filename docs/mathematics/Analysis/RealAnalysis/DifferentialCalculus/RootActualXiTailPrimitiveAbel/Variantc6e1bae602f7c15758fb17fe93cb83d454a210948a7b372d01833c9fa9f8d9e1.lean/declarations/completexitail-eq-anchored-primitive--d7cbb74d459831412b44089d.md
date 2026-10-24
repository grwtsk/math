# completeXiTail_eq_anchored_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3fc88f1-d84f-7001-3f02-313082d89832",
  "kind": "theorem",
  "lexical_name": "completeXiTail_eq_anchored_primitive",
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
  "slug": "completexitail-eq-anchored-primitive--d7cbb74d459831412b44089d",
  "source": {
    "blob": "c4271a428ef2966cbeaaaa748cd5a416e7addc65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variantc6e1bae602f7c15758fb17fe93cb83d454a210948a7b372d01833c9fa9f8d9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7cbb74d459831412b44089df2d0742dfcc96c8844768bf822d8d97ab30ac344",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variantc6e1bae602f7c15758fb17fe93cb83d454a210948a7b372d01833c9fa9f8d9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fc88f1-d84f-7001-3f02-313082d89832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_eq_anchored_primitive {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = -(∫ t in Real.log 7..2 * A,
      actualAnchoredXiTailPrimitive t *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
  have hAp : 0 < A := by linarith
  have hlb : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hG := actualAnchoredXiTailPrimitive_absolutelyContinuous hlb
  have hF : AbsolutelyContinuousOnInterval (actualXiTailSourceTest A) (Real.log 7) (2 * A) :=
    (sourceTest_contDiff hAp).contDiffOn.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun t => actualXiTailTimeDensity t * actualXiTailSourceTest A t)
      volume (Real.log 7) (2 * A) :=
    (actualXiTailTimeDensity_intervalIntegrable hlb).mul_continuousOn hF.continuousOn
  have hi2 : IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t *
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) := by
    have hi := hF.intervalIntegrable_deriv.continuousOn_mul hG.continuousOn
    have he : deriv (actualXiTailSourceTest A) = (fun t =>
        iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2) :=
      funext (fun t => (sourceTest_hasDerivAt hAp t).deriv)
    rwa [he] at hi
  have he : (∫ t in Real.log 7..2 * A,
      deriv actualAnchoredXiTailPrimitive t * actualXiTailSourceTest A t +
        actualAnchoredXiTailPrimitive t * deriv (actualXiTailSourceTest A) t) =
      (∫ t in Real.log 7..2 * A, actualXiTailTimeDensity t * actualXiTailSourceTest A t) +
        ∫ t in Real.log 7..2 * A, actualAnchoredXiTailPrimitive t *
          (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2) := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hlb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv, (sourceTest_hasDerivAt hAp t).deriv]
  have hh := hG.integral_deriv_mul_eq_sub hF
  rw [he, sourceTest_zero_upper hAp, actualAnchoredXiTailPrimitive_at_lower,
    mul_zero, zero_mul, sub_self] at hh
  rw [completeXiTail_eq_log_pairing]
  linarith

/-- The actual sharp curvature and first-derivative bounds control the full primitive pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variantc6e1bae602f7c15758fb17fe93cb83d454a210948a7b372d01833c9fa9f8d9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiTailPrimitiveAbel/Variantc6e1bae602f7c15758fb17fe93cb83d454a210948a7b372d01833c9fa9f8d9e1.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4271a428ef2966cbeaaaa748cd5a416e7addc65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
