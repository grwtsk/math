# compensatedSourceSum_eq_abelIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4ac1ced-8322-19d2-2b92-c4f43c02692f",
  "kind": "theorem",
  "lexical_name": "compensatedSourceSum_eq_abelIntegral",
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
  "slug": "compensatedsourcesum-eq-abelintegral--c9c35f1b3ee90d4072dbb9ae",
  "source": {
    "blob": "9b9131602905029d67b5926c129e76f07a0b4d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c35f1b3ee90d4072dbb9ae8c3f904ac025c7d4a3435f2f1d16ba3d2daf6031",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4ac1ced-8322-19d2-2b92-c4f43c02692f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedSourceSum_eq_abelIntegral {A : ℝ} (hA : 0 < A) :
    compensatedSourceSum A = ∫ s in 0..2 * A,
      compensatedPrefix (Real.exp s) * Real.exp (-s / 2) * kapitzaKernel A s := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hu : F (2 * A) = 0 := by
    dsimp [F, exponentialTest, C]
    rw [sourceCorrelation_upper_endpoint A hA, mul_zero]
  have hd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  have ht := compensatedPrefix_abel (2 * A) (by linarith) F hf
  rw [hu, mul_zero, zero_sub] at ht
  change (∫ s in 0..2 * A, compensatedPrefix (Real.exp s) * deriv F s) =
    -compensatedSourceSum A at ht
  rw [hd] at ht
  have he : (∫ s in 0..2 * A, compensatedPrefix (Real.exp s) *
      (-Real.exp (-s / 2) * kapitzaKernel A s)) =
      -(∫ s in 0..2 * A, compensatedPrefix (Real.exp s) *
        Real.exp (-s / 2) * kapitzaKernel A s) := by
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro s _
    ring
  rw [he] at ht
  linarith

/-- The Abel readout is a genuinely integrable finite-step pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9131602905029d67b5926c129e76f07a0b4d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
