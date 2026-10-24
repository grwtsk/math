# reflected_real_shift_sum_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb8e35e0-8499-1064-7e03-2f6b4d35cc97",
  "kind": "theorem",
  "lexical_name": "reflected_real_shift_sum_identity",
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
  "slug": "reflected-real-shift-sum-identity--61b1bbe64f50d0a13b62c0ba",
  "source": {
    "blob": "5b803a5d05b29acaebabcbce8b5ebd6c866bef05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureCrossFixtures/Variantd71ba8586f0bb9042e72c35859a7f76450e872fade2cb9399956f19f0ec4dcdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b1bbe64f50d0a13b62c0ba8a5c90e66a59be0775f19881e7a597825d3cc313",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureCrossFixtures/Variantd71ba8586f0bb9042e72c35859a7f76450e872fade2cb9399956f19f0ec4dcdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb8e35e0-8499-1064-7e03-2f6b4d35cc97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflected_real_shift_sum_identity {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (a x b z : ℕ → ℝ) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j * mixedBracket A (x i + z j)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
        (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v - z j))) -
      (1 / 4 : ℝ) * (∫ v : ℝ,
        (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
        (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v - z j))) := by
  simpa only [mixedBracket, sub_neg_eq_add, ← sub_eq_add_neg] using
    actual_mixed_curvature_finite_cross_eq_neg_products s t a x b (fun j => -z j) hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureCrossFixtures/Variantd71ba8586f0bb9042e72c35859a7f76450e872fade2cb9399956f19f0ec4dcdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMixedCurvatureCrossFixtures/Variantd71ba8586f0bb9042e72c35859a7f76450e872fade2cb9399956f19f0ec4dcdf.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b803a5d05b29acaebabcbce8b5ebd6c866bef05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
