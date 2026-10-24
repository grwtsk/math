# complex_weighted_actual_correlation_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26f52865-d44b-8e42-96ed-72d54782fd85",
  "kind": "theorem",
  "lexical_name": "complex_weighted_actual_correlation_integrable",
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
  "slug": "complex-weighted-actual-correlation-integrable--97a41152af530a7a1c147cb8",
  "source": {
    "blob": "9360da3f6f7a03220a403c8092c99adaf44a17bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a41152af530a7a1c147cb83552b1139327dd850fe418e12a6665ea95b0e86d",
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

Occurrence: `result:26f52865-d44b-8e42-96ed-72d54782fd85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_actual_correlation_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) volume := by
  have hi := (complex_weighted_normalized_source_integrable hA z).integrable_convolution
    (ContinuousLinearMap.lsmul ℂ ℂ) (complex_reflected_source_integrable hA z)
  have he : (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      ((fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) ⋆[ContinuousLinearMap.lsmul ℂ ℂ]
        (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ))) := by
    funext t
    exact complex_weighted_actual_correlation_convolution A t z
  rw [he]
  exact hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexCorrelationMoment/Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9360da3f6f7a03220a403c8092c99adaf44a17bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
