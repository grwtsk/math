# actual_standard_second_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d061b1b-a911-a6af-3137-d27e472c45e4",
  "kind": "theorem",
  "lexical_name": "actual_standard_second_moment_integrable",
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
  "slug": "actual-standard-second-moment-integrable--7f79e0b1aa63174896f0930c",
  "source": {
    "blob": "ebd230d1556f32aa7c44d5bb0adedd2da1893fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant263862462111b17f96ab666674cb029f6152d9ce291296f8672503d4c43996fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f79e0b1aa63174896f0930c946e8168369c9717ab9b706cfaa7de1bc25ec3c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant263862462111b17f96ab666674cb029f6152d9ce291296f8672503d4c43996fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d061b1b-a911-a6af-3137-d27e472c45e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_standard_second_moment_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ : ℝ => ξ^2 * Complex.normSq
      (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) := by
  have hr := Complex.reCLM.integrable_comp (actualSecondCorrelation_fourier_integrable hA)
  have heq : (fun ξ : ℝ =>
      (𝓕 (deriv (deriv (fun t =>
        (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ).re) =
      (fun ξ : ℝ => (-4 * Real.pi^2) * (ξ^2 * Complex.normSq
        (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ))) := by
    funext ξ
    rw [actualSecondCorrelation_fourier_eq hA ξ]
    rw [← Complex.ofReal_mul]
    exact Complex.ofReal_re _
  change Integrable (fun ξ : ℝ =>
    (𝓕 (deriv (deriv (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ).re) at hr
  rw [heq] at hr
  exact (integrable_const_mul_iff
    (isUnit_iff_ne_zero.mpr (by positivity : (-4 * Real.pi^2 : ℝ) ≠ 0)) _).mp hr

/-- Complexification preserves the actual twice differentiated correlation at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant263862462111b17f96ab666674cb029f6152d9ce291296f8672503d4c43996fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant263862462111b17f96ab666674cb029f6152d9ce291296f8672503d4c43996fc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd230d1556f32aa7c44d5bb0adedd2da1893fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
