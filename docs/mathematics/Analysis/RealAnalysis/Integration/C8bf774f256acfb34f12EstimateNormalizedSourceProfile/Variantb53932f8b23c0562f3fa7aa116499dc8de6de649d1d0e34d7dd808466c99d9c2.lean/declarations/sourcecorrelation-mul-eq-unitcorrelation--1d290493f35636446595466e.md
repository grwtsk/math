# sourceCorrelation_mul_eq_unitCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41d4d832-029a-be2f-7709-f8e03a8e994e",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_mul_eq_unitCorrelation",
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
  "slug": "sourcecorrelation-mul-eq-unitcorrelation--1d290493f35636446595466e",
  "source": {
    "blob": "ee2f8651758d9cd780b60d8ca2fcca66cc6303cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d290493f35636446595466e552005f4c758c86da9661a284b2cf78673e4eda1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41d4d832-029a-be2f-7709-f8e03a8e994e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_mul_eq_unitCorrelation (A y : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A (A*y) = unitCorrelation A y := by
  have heq : (fun s ↦ unitProfile A s * unitProfile A (s-y)) =
      (fun s ↦ A * (normalizedTest explicitSecondDerivative A (A*s) *
        normalizedTest explicitSecondDerivative A (A*s-A*y))) := by
    funext s
    simp only [unitProfile]
    rw [show A * (s-y) = A*s-A*y by ring]
    calc
      _ = (Real.sqrt A * Real.sqrt A) *
          (normalizedTest explicitSecondDerivative A (A*s) *
            normalizedTest explicitSecondDerivative A (A*s-A*y)) := by ring
      _ = _ := by rw [Real.mul_self_sqrt hA.le]
  unfold unitCorrelation
  rw [heq, integral_const_mul]
  have hchange := Measure.integral_comp_mul_left
    (fun u ↦ normalizedTest explicitSecondDerivative A u *
      normalizedTest explicitSecondDerivative A (u-A*y)) A
  simp only [abs_of_pos (inv_pos.mpr hA), smul_eq_mul] at hchange
  rw [hchange]
  simp only [sourceCorrelation]
  rw [← mul_assoc, mul_inv_cancel₀ hA.ne', one_mul]

/-- The inverse displacement change is valid for every real argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/C8bf774f256acfb34f12EstimateNormalizedSourceProfile/Variantb53932f8b23c0562f3fa7aa116499dc8de6de649d1d0e34d7dd808466c99d9c2.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2f8651758d9cd780b60d8ca2fcca66cc6303cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
