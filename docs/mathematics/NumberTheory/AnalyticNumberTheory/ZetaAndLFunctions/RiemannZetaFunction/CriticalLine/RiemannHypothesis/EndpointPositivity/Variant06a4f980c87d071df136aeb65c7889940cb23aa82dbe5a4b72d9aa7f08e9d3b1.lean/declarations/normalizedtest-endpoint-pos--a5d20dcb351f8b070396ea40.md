# normalizedTest_endpoint_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd65d2e9-a794-2f01-587b-da7f78a0f644",
  "kind": "theorem",
  "lexical_name": "normalizedTest_endpoint_pos",
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
  "slug": "normalizedtest-endpoint-pos--a5d20dcb351f8b070396ea40",
  "source": {
    "blob": "d9f0f374e95c200c608632e046263e9438bf98c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5d20dcb351f8b070396ea403e0c7887b599950bb47e825c37c9f66297e0f3c8",
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

Occurrence: `result:cd65d2e9-a794-2f01-587b-da7f78a0f644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTest_endpoint_pos (A x : ℝ) (hA : 3 ≤ A)
    (hx : x ∈ Ico (A - 3 / 4) A) :
    0 < normalizedTest explicitSecondDerivative A x := by
  have hA1 : 1 ≤ A := by linarith
  have hA0 : 0 < A := by linarith
  have hz : 0 < sourceNormalization A := source_normalization_pos A hA1
  rw [normalizedTest_eq_indicator A hA0,
    indicator_of_mem (show x ∈ Icc (-A) A from ⟨by linarith [hx.1], hx.2.le⟩),
    normalizedInterior_factor A x hA1]
  obtain ⟨hlow, _, hw⟩ := endpoint_scaled_bounds A x hA ⟨hx.1, hx.2.le⟩
  have hupp : x / A < 1 := (div_lt_one hA0).mpr hx.2
  have hs : 0 < 1 - (x / A) ^ 2 := by
    nlinarith [mul_pos (sub_pos.mpr hupp) (show 0 < 1 + x / A by linarith)]
  have hsq : (3 / 4 : ℝ) ^ 2 ≤ (x / A) ^ 2 := by
    nlinarith [sq_nonneg (x / A - 3 / 4)]
  have hb : 367 / 16 ≤ 8 * (7 * (x / A) ^ 2 - 1) -
      A ^ 2 * (1 - (x / A) ^ 2) ^ 2 / 4 := by nlinarith
  apply mul_pos
  · apply div_pos
    · exact sq_pos_of_pos hs
    · positivity
  · linarith

/-- A genuine integrable overlap with a positive interior point gives strict positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivity/Variant06a4f980c87d071df136aeb65c7889940cb23aa82dbe5a4b72d9aa7f08e9d3b1.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9f0f374e95c200c608632e046263e9438bf98c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
