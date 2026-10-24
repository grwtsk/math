# complex_weighted_actual_correlation_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3199e565-6c4b-dab3-e633-9d53c71a6841",
  "kind": "theorem",
  "lexical_name": "complex_weighted_actual_correlation_convolution",
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
  "slug": "complex-weighted-actual-correlation-convolution--7a389749abda0b686167c562",
  "source": {
    "blob": "9360da3f6f7a03220a403c8092c99adaf44a17bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a389749abda0b686167c562c8048e97ebec2ac650f20549704cd0f16d28aad0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3199e565-6c4b-dab3-e633-9d53c71a6841`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_actual_correlation_convolution (A t : ℝ) (z : ℂ) :
    Complex.exp (z * (t : ℂ)) * (C A t : ℂ) =
      ((fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) ⋆[ContinuousLinearMap.lsmul ℂ ℂ]
        (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ))) t := by
  have hcast : (∫ x : ℝ, ((v A x * v A (x - t) : ℝ) : ℂ)) =
      ((∫ x : ℝ, v A x * v A (x - t) : ℝ) : ℂ) := by
    simpa using! (_root_.integral_ofReal (𝕜 := ℂ)
      (f := fun x : ℝ ↦ v A x * v A (x - t)) (μ := volume))
  rw [sourceCorrelation, ← hcast, ← integral_const_mul, convolution_lsmul]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [smul_eq_mul]
  simp only [Complex.ofReal_mul, Complex.ofReal_sub]
  rw [neg_sub]
  have he : Complex.exp (z * (t : ℂ)) =
      Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t - x) : ℂ)) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9360da3f6f7a03220a403c8092c99adaf44a17bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
