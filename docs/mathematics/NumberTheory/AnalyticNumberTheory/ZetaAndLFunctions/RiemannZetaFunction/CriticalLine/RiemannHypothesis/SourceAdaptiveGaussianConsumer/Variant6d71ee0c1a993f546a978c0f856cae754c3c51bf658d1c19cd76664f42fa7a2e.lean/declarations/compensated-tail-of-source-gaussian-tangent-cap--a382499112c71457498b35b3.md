# compensated_tail_of_source_gaussian_tangent_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbfa72a8-e520-f9ae-6d75-42d1c52425f2",
  "kind": "theorem",
  "lexical_name": "compensated_tail_of_source_gaussian_tangent_cap",
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
  "slug": "compensated-tail-of-source-gaussian-tangent-cap--a382499112c71457498b35b3",
  "source": {
    "blob": "382167db069c974b03cbfe38b8e01cd8e5591f88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a382499112c71457498b35b3a898f2784c912f7e384b458d3b70c82532ea6765",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbfa72a8-e520-f9ae-6d75-42d1c52425f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_tail_of_source_gaussian_tangent_cap
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      sourceGaussianTangent A ≤ B) : CompensatedTailUpperBound := by
  rcases hcap with ⟨R, hR, B, hB⟩
  refine ⟨R, by linarith, B + (tangentErrorConstant + 25 / 2), ?_⟩
  intro A hRA
  have hA : 200 ≤ A := hR.trans hRA
  have he := (abs_le.mp (paid_original_source_error hA)).2
  have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hC : 0 ≤ tangentErrorConstant + 25 / 2 := by
    unfold tangentErrorConstant SourceKapitzaStorage.quadraticConstant
    positivity
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hp := div_le_self hC hA2
  linarith [hB A hRA]

/-- Original EstimateObligation consumes the paid approximation and the explicit signed cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianConsumer/Variant6d71ee0c1a993f546a978c0f856cae754c3c51bf658d1c19cd76664f42fa7a2e.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382167db069c974b03cbfe38b8e01cd8e5591f88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
