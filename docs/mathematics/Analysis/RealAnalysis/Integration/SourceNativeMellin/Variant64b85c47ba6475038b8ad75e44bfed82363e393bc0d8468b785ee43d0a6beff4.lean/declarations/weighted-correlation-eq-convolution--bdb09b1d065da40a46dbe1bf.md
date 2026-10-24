# weighted_correlation_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72bf141a-17b8-fb0d-e30d-4beed0ae414e",
  "kind": "theorem",
  "lexical_name": "weighted_correlation_eq_convolution",
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
  "slug": "weighted-correlation-eq-convolution--bdb09b1d065da40a46dbe1bf",
  "source": {
    "blob": "9e5dd8285397fd7ce45b596744838535637c8e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variant64b85c47ba6475038b8ad75e44bfed82363e393bc0d8468b785ee43d0a6beff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdb09b1d065da40a46dbe1bfd2dac9ecfb04ea0a645f42e6ff2af2734ef3a6bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variant64b85c47ba6475038b8ad75e44bfed82363e393bc0d8468b785ee43d0a6beff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72bf141a-17b8-fb0d-e30d-4beed0ae414e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_correlation_eq_convolution (A : ℝ) (hA : 0 < A)
    (z : ℂ) (t : ℝ) :
    (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ)) =
      ((fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ, volume]
        (fun x : ℝ ↦ (normalizedTest explicitSecondDerivative A x : ℂ) *
          Complex.exp (z * (x : ℂ)))) t := by
  rw [sourceCorrelation, ← integral_complex_ofReal, ← integral_mul_const, convolution_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, normalizedTest_even A hA]
    push_cast
    have hexp : Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ))) =
        Complex.exp (z * (t : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    calc
      _ = (normalizedTest explicitSecondDerivative A x : ℂ) *
          (normalizedTest explicitSecondDerivative A (t - x) : ℂ) *
          (Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ)))) := by
        rw [hexp]
      _ = _ := by ring

/-- The source Mellin transform is an ordinary complex square, with its exact orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variant64b85c47ba6475038b8ad75e44bfed82363e393bc0d8468b785ee43d0a6beff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeMellin/Variant64b85c47ba6475038b8ad75e44bfed82363e393bc0d8468b785ee43d0a6beff4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e5dd8285397fd7ce45b596744838535637c8e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
