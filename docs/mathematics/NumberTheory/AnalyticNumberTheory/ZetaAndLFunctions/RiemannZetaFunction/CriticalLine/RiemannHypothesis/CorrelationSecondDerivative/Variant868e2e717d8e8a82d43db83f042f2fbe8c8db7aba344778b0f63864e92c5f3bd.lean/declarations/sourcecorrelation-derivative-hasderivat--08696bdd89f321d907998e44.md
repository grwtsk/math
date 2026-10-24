# sourceCorrelation_derivative_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80fc2dbe-8b77-8c7e-de34-318ddf96aed7",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_derivative_hasDerivAt",
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
  "slug": "sourcecorrelation-derivative-hasderivat--08696bdd89f321d907998e44",
  "source": {
    "blob": "1bc3cba85472c191f42e577ee36bc861713d4df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08696bdd89f321d907998e44e42764758a9bdf87241ec9a887fb828e736e9893",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80fc2dbe-8b77-8c7e-de34-318ddf96aed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_derivative_hasDerivAt (A t : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (-(∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t))) t := by
  have h := (reflectedTest_hasCompactSupport A (by linarith)).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalized_derivative_integrable A hA).locallyIntegrable
    ((normalizedTest_contDiff A (by linarith)).comp contDiff_neg) t
  rw [← sourceCorrelation_derivative_eq_convolution A hA, reflectedTest_derivative A hA] at h
  simpa only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub, mul_neg,
    integral_neg] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CorrelationSecondDerivative/Variant868e2e717d8e8a82d43db83f042f2fbe8c8db7aba344778b0f63864e92c5f3bd.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc3cba85472c191f42e577ee36bc861713d4df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
