# endpoint_product_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1f396ac-ae3f-a840-22ca-d94ec45570ea",
  "kind": "theorem",
  "lexical_name": "endpoint_product_signs",
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
  "slug": "endpoint-product-signs--1aba4ec6102452317cf2aca0",
  "source": {
    "blob": "665d7d03535646164c39ebe4579068ea75c5debd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aba4ec6102452317cf2aca06b2ece2d5be30b3a221b16c560af1256cc71a8b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1f396ac-ae3f-a840-22ca-d94ec45570ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_product_signs (A t x : ℝ) (hA : 3 ≤ A) (ht : 2 * A - 3 / 4 ≤ t) :
    0 ≤ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t) ∧
    deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - t) ≤ 0 := by
  have hA1 : 1 ≤ A := by linarith
  by_cases hx : x ≤ A
  · by_cases hxt : t - A ≤ x
    · have hm : x ∈ Icc (A - 3 / 4) A := ⟨by linarith, hx⟩
      have hn : t - x ∈ Icc (A - 3 / 4) A := ⟨by linarith, by linarith⟩
      have he : normalizedTest explicitSecondDerivative A (x - t) =
          normalizedTest explicitSecondDerivative A (t - x) := by
        rw [show x - t = -(t - x) by ring]
        exact CorrelationSecondMoment.normalizedTest_even A hA1 _
      rw [he]
      exact ⟨mul_nonneg (normalizedTest_endpoint_nonneg A x hA hm)
          (normalizedTest_endpoint_nonneg A (t - x) hA hn),
        mul_nonpos_of_nonpos_of_nonneg (normalizedTest_derivative_endpoint_nonpos A x hA hm)
          (normalizedTest_endpoint_nonneg A (t - x) hA hn)⟩
    · have hz : normalizedTest explicitSecondDerivative A (x - t) = 0 := by
        apply normalizedTest_zero_of_le_abs A _ (by linarith)
        rw [abs_of_nonpos (by linarith : x - t ≤ 0)]
        linarith
      simp only [hz, mul_zero, le_refl, and_self]
  · have hz : normalizedTest explicitSecondDerivative A x = 0 := by
      apply normalizedTest_zero_of_le_abs A _ (by linarith)
      exact (by linarith : A ≤ x).trans (le_abs_self _)
    have hd : deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
      rw [normalized_derivative_eq_indicator A hA1]
      exact indicator_of_notMem (show x ∉ Icc (-A) A by intro hm; exact hx hm.2) _
    simp only [hz, hd, zero_mul, le_refl, and_self]

/-- Genuine source integrability transports endpoint positivity to the original correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant747bdd94b09377030b4a1b156c08d205dd640068936c50b3a91044238d0473ee.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665d7d03535646164c39ebe4579068ea75c5debd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
