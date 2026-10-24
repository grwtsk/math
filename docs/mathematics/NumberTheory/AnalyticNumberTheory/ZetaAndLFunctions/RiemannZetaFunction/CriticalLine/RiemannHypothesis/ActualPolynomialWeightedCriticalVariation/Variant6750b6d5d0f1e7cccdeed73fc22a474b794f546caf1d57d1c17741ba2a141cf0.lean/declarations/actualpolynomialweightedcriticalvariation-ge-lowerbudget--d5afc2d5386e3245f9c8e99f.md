# actualPolynomialWeightedCriticalVariation_ge_lowerBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab15c25e-cd1e-1c1b-0cc5-ebcf35110da7",
  "kind": "theorem",
  "lexical_name": "actualPolynomialWeightedCriticalVariation_ge_lowerBudget",
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
  "slug": "actualpolynomialweightedcriticalvariation-ge-lowerbudget--d5afc2d5386e3245f9c8e99f",
  "source": {
    "blob": "399caba43bb3b9cc3cb305743498e583b4edd6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant6750b6d5d0f1e7cccdeed73fc22a474b794f546caf1d57d1c17741ba2a141cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5afc2d5386e3245f9c8e99fa66f9a116b2522034dd7b44626a318542a14bb7f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant6750b6d5d0f1e7cccdeed73fc22a474b794f546caf1d57d1c17741ba2a141cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab15c25e-cd1e-1c1b-0cc5-ebcf35110da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPolynomialWeightedCriticalVariation_ge_lowerBudget
    {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalPolynomialVariationLowerBudget A ≤
      actualPolynomialWeightedCriticalVariation A := by
  unfold actualCriticalPolynomialVariationLowerBudget
  have he : 1 ≤ Real.exp (A / 80) := Real.one_le_exp_iff.mpr (by linarith)
  have h := div_le_div_of_nonneg_left
    (by linarith : 0 ≤ (7 / 4 : ℝ) * Real.exp (A / 80) - 1)
    (by positivity : 0 < (1 + 2 * A) ^ 2)
    (by nlinarith : (1 + 2 * A) ^ 2 ≤ 9 * A ^ 2)
  exact h.trans (actualPolynomialWeightedCriticalVariation_ge_exponential hA)

/-- The explicit method budget grows at every real scale, not only on integers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant6750b6d5d0f1e7cccdeed73fc22a474b794f546caf1d57d1c17741ba2a141cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant6750b6d5d0f1e7cccdeed73fc22a474b794f546caf1d57d1c17741ba2a141cf0.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `399caba43bb3b9cc3cb305743498e583b4edd6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
