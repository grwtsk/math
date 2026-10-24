# sourceCorrelation_endpoint_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:108cac3e-51ba-f0a7-c0de-6fe17d0f1411",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_endpoint_pos",
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
  "slug": "sourcecorrelation-endpoint-pos--db0c606827232ce2f309dd96",
  "source": {
    "blob": "d9f0f374e95c200c608632e046263e9438bf98c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0c606827232ce2f309dd966bc71bf5c1abb336c34c90fecb88a733afbb0b7e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:108cac3e-51ba-f0a7-c0de-6fe17d0f1411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_endpoint_pos (A t : ℝ) (hA : 3 ≤ A)
    (ht : t ∈ Ico (2 * A - 3 / 4) (2 * A)) :
    0 < sourceCorrelation explicitSecondDerivative A t := by
  have hA1 : 1 ≤ A := by linarith
  have hc := (normalizedTest_contDiff A (by linarith)).continuous
  have hcprod : Continuous (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t)) :=
    hc.mul (hc.comp (continuous_id.sub continuous_const))
  have hp : 0 < normalizedTest explicitSecondDerivative A (t / 2) :=
    normalizedTest_endpoint_pos A (t / 2) hA ⟨by linarith [ht.1], by linarith [ht.2]⟩
  have hp0 : normalizedTest explicitSecondDerivative A (t / 2) *
      normalizedTest explicitSecondDerivative A (t / 2 - t) ≠ 0 := by
    rw [show t / 2 - t = -(t / 2) by ring,
      CorrelationSecondMoment.normalizedTest_even A hA1]
    exact (mul_pos hp hp).ne'
  exact integral_pos_of_integrable_nonneg_nonzero hcprod
    (correlation_product_integrable A t (by linarith))
    (fun x ↦ (endpoint_product_signs A t x hA ht.1).1) hp0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f0f374e95c200c608632e046263e9438bf98c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
