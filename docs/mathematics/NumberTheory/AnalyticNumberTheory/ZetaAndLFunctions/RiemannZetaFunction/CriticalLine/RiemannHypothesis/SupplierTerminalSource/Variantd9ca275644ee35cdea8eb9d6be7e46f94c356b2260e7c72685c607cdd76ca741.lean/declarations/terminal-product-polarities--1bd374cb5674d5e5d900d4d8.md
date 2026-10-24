# terminal_product_polarities

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51b7e51b-2b83-4269-c673-e57237e66927",
  "kind": "theorem",
  "lexical_name": "terminal_product_polarities",
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
  "slug": "terminal-product-polarities--1bd374cb5674d5e5d900d4d8",
  "source": {
    "blob": "5e83e4b73a439e8d3aa048d9226b6862e319b56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bd374cb5674d5e5d900d4d84daf8521fe8ed7e3588497a93950ac8beeb5d88b",
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

Occurrence: `result:51b7e51b-2b83-4269-c673-e57237e66927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem terminal_product_polarities {A δ : ℝ} (hA : 1 ≤ A)
    (hδ0 : 0 < δ) (hδ8 : δ ≤ 1 / 8) (x : ℝ) :
    0 ≤ -deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - δ)) ∧
    0 ≤ -deriv (normalizedTest explicitSecondDerivative A) x *
      deriv (normalizedTest explicitSecondDerivative A) (x - (2 * A - δ)) := by
  have hp : 0 < A := by linarith
  by_cases hx : x ∈ Icc (-A) A
  · by_cases hz : x - (2 * A - δ) ∈ Icc (-A) A
    · have hy0 : 0 ≤ A - x := by linarith [hx.2]
      have hy8 : A - x ≤ 1 / 8 := by linarith [hz.1]
      have hw0 : 0 ≤ A + x - (2 * A - δ) := by linarith [hz.1]
      have hw8 : A + x - (2 * A - δ) ≤ 1 / 8 := by linarith [hx.2]
      have hdx : deriv (normalizedTest explicitSecondDerivative A) x ≤ 0 := by
        have h := normalizedTest_deriv_endpoint_nonpos hA hy0 hy8
        simpa only [sub_sub_cancel] using h
      have hqz : 0 ≤ normalizedTest explicitSecondDerivative A (x - (2 * A - δ)) := by
        have h := normalizedTest_endpoint_nonneg hA hw0 hw8
        have he : A - (A + x - (2 * A - δ)) = -(x - (2 * A - δ)) := by ring
        rw [he, normalizedTest_even hp] at h
        exact h
      have hdz : 0 ≤ deriv (normalizedTest explicitSecondDerivative A)
          (x - (2 * A - δ)) := by
        have h := normalizedTest_deriv_endpoint_nonpos hA hw0 hw8
        have he : A - (A + x - (2 * A - δ)) = -(x - (2 * A - δ)) := by ring
        rw [he, normalizedTest_deriv_odd hp] at h
        linarith
      exact ⟨mul_nonneg (neg_nonneg.mpr hdx) hqz,
        mul_nonneg (neg_nonneg.mpr hdx) hdz⟩
    · have hqz : normalizedTest explicitSecondDerivative A (x - (2 * A - δ)) = 0 := by
        rw [normalizedTest_eq_indicator A hp, indicator_of_notMem hz]
      have hdz : deriv (normalizedTest explicitSecondDerivative A)
          (x - (2 * A - δ)) = 0 := by
        rw [normalizedTest_deriv_eq_indicator hp, indicator_of_notMem hz]
      simp [hqz, hdz]
  · have hdx : deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
      rw [normalizedTest_deriv_eq_indicator hp, indicator_of_notMem hx]
    simp [hdx]

/-- The actual first correlation derivative is strictly negative immediately
inside the terminal support endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e83e4b73a439e8d3aa048d9226b6862e319b56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
