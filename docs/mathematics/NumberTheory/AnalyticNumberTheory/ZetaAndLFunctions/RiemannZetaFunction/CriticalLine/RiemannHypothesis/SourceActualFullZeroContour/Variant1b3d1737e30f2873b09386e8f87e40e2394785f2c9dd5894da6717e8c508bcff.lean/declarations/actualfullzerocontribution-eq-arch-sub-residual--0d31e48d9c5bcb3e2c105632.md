# actualFullZeroContribution_eq_arch_sub_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4aa0c79-00d8-f178-f027-bcf1898d1c30",
  "kind": "theorem",
  "lexical_name": "actualFullZeroContribution_eq_arch_sub_residual",
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
  "slug": "actualfullzerocontribution-eq-arch-sub-residual--0d31e48d9c5bcb3e2c105632",
  "source": {
    "blob": "ac6e6c9417789c3eebc619b33a8c356f9a32810a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContour/Variant1b3d1737e30f2873b09386e8f87e40e2394785f2c9dd5894da6717e8c508bcff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d31e48d9c5bcb3e2c1056321aa3fd6f34c356a4d882da65c83cb44a43392c6a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContour/Variant1b3d1737e30f2873b09386e8f87e40e2394785f2c9dd5894da6717e8c508bcff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4aa0c79-00d8-f178-f027-bcf1898d1c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullZeroContribution_eq_arch_sub_residual (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    actualFullZeroContribution A = 2 * actualArchimedeanLine A c -
      2 * (mertensResidual A : ℂ) := by
  have hfull := WeilEF.full_line_identity zetaSeam
    (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
    hc hc2
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hfull
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1, hzero.2, sub_zero, sub_zero] at hfull
  have hg := actualArchimedeanLine_integrable A c hA hc hc2
  have hz := actualInitialPrimeDensity_integrable A c hA hc
  have heq : (fun t : ℝ =>
      (actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) +
        actualInitialPrimeMellin A (1 - c - (t : ℂ) * Complex.I)) *
          logDeriv completedRiemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
      (fun t : ℝ => 2 * (actualInitialPrimeMellin A
        ((c : ℂ) + (t : ℂ) * Complex.I) *
          logDeriv Complex.Gammaℝ ((c : ℂ) + (t : ℂ) * Complex.I)) -
        2 * actualInitialPrimeDensity A c t) := by
    funext t
    rw [show (1 : ℂ) - c - (t : ℂ) * Complex.I =
      1 - ((c : ℂ) + (t : ℂ) * Complex.I) by ring,
      actualInitialPrimeMellin_one_sub A hA,
      WeilEF.logDeriv_completedZeta_line hc]
    unfold actualInitialPrimeDensity
    simp only [logDeriv_apply]
    ring
  rw [heq, integral_sub (hg.const_mul 2) (hz.const_mul 2),
    integral_const_mul, integral_const_mul] at hfull
  have hr := actualInitialPrimeContour_eq_mertensResidual A c hA hc
  change (1 / (2 * Real.pi) : ℂ) * (2 * _ - 2 * _) = actualFullZeroContribution A at hfull
  unfold actualArchimedeanLine
  rw [← hr]
  linear_combination -hfull

/-- The unchanged original residual equals the full gamma correction minus half the zero sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContour/Variant1b3d1737e30f2873b09386e8f87e40e2394785f2c9dd5894da6717e8c508bcff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContour/Variant1b3d1737e30f2873b09386e8f87e40e2394785f2c9dd5894da6717e8c508bcff.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6e6c9417789c3eebc619b33a8c356f9a32810a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
