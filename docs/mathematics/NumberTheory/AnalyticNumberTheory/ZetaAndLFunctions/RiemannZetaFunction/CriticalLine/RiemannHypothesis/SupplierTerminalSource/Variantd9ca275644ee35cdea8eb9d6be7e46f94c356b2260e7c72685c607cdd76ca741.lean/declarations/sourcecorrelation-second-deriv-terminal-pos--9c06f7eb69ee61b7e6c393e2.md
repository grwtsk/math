# sourceCorrelation_second_deriv_terminal_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceb6b44d-bc81-371a-022d-00bfa444d5f6",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_second_deriv_terminal_pos",
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
  "slug": "sourcecorrelation-second-deriv-terminal-pos--9c06f7eb69ee61b7e6c393e2",
  "source": {
    "blob": "5e83e4b73a439e8d3aa048d9226b6862e319b56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 311,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c06f7eb69ee61b7e6c393e2d1a1929e192cc4b8e4aec006a63cb26edaef71ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceb6b44d-bc81-371a-022d-00bfa444d5f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_second_deriv_terminal_pos {A δ : ℝ} (hA : 1 ≤ A)
    (hδ0 : 0 < δ) (hδ8 : δ ≤ 1 / 8) :
    0 < deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A - δ) := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) x *
    deriv (normalizedTest explicitSecondDerivative A) (x - (2 * A - δ))
  have hc := (normalizedTest_contDiff A hp).continuous_deriv (by norm_num)
  have hfcont : Continuous f := hc.neg.mul (hc.comp (continuous_id.sub continuous_const))
  have hfint : Integrable f := hfcont.integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hp).deriv.neg.mul_right
  have hfnonneg : 0 ≤ f := fun x ↦ (terminal_product_polarities hA hδ0 hδ8 x).2
  have hy0 : 0 < δ / 2 := by linarith
  have hy8 : δ / 2 ≤ 1 / 8 := by linarith
  have hfirst := normalizedTest_inward_deriv_endpoint_pos hA hy0 hy8
  have hfpoint : 0 < f (A - δ / 2) := by
    dsimp [f]
    have he : A - δ / 2 - (2 * A - δ) = -(A - δ / 2) := by ring
    rw [he, normalizedTest_deriv_odd hp]
    exact mul_pos hfirst hfirst
  have hi := integral_pos_of_integrable_nonneg_nonzero hfcont hfint hfnonneg hfpoint.ne'
  have he : (∫ x : ℝ, f x) =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A - δ) := by
    rw [SourceCorrelationCurvature.sourceCorrelation_second_deriv_eq_integral hp]
    simp only [f, neg_mul, integral_neg]
  rwa [he] at hi

/-- Positivity of the literal derivative combination of the prescribed source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e83e4b73a439e8d3aa048d9226b6862e319b56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
