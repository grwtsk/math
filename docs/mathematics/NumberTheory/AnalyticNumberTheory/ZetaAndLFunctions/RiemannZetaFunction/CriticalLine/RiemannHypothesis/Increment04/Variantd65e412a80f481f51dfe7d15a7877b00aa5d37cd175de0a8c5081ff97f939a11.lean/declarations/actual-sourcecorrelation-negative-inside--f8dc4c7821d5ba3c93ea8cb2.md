# actual_sourceCorrelation_negative_inside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43202d13-cb41-1576-31b3-2a234be65737",
  "kind": "theorem",
  "lexical_name": "actual_sourceCorrelation_negative_inside",
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
  "slug": "actual-sourcecorrelation-negative-inside--f8dc4c7821d5ba3c93ea8cb2",
  "source": {
    "blob": "24682bc059db74b4f1c5d77453833760b0fe9a12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 667,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variantd65e412a80f481f51dfe7d15a7877b00aa5d37cd175de0a8c5081ff97f939a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8dc4c7821d5ba3c93ea8cb2f87307993801ee66036e1d15cd169c27621ab0c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variantd65e412a80f481f51dfe7d15a7877b00aa5d37cd175de0a8c5081ff97f939a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43202d13-cb41-1576-31b3-2a234be65737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sourceCorrelation_negative_inside {A : ℝ} (hA : 1 ≤ A) :
    ∃ s : ℝ, 0 < s ∧ s < 2 * A ∧
      sourceCorrelation Realization.explicitSecondDerivative A s < 0 := by
  obtain ⟨t, ht⟩ := actual_sourceCorrelation_negative hA
  have hne : t ≠ 0 := by
    intro he
    rw [he, EstimateCorrelation.actual_correlation_at_zero A hA] at ht
    norm_num at ht
  have he : sourceCorrelation Realization.explicitSecondDerivative A |t| =
      sourceCorrelation Realization.explicitSecondDerivative A t := by
    rcases le_total 0 t with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_nonpos h]
      exact CorrelationRegularity.sourceCorrelation_even A t
  have hupper : |t| < 2 * A := by
    by_contra h
    have hz := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith : 0 < A) (le_of_not_gt h)
    rw [hz] at ht
    exact (lt_irrefl (0 : ℝ)) ht
  exact ⟨|t|, abs_pos.mpr hne, hupper, he ▸ ht⟩

/-- The actual continuous plain source weight is negative at some x>1.
This is not an assertion that an integer arithmetic cell has that sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variantd65e412a80f481f51dfe7d15a7877b00aa5d37cd175de0a8c5081ff97f939a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variantd65e412a80f481f51dfe7d15a7877b00aa5d37cd175de0a8c5081ff97f939a11.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24682bc059db74b4f1c5d77453833760b0fe9a12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
