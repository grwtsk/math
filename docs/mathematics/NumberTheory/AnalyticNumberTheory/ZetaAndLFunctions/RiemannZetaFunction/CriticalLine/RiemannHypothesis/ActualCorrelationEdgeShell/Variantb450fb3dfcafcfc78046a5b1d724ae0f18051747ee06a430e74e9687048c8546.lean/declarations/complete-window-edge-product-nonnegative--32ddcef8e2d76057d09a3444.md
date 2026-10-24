# complete_window_edge_product_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:871acb2e-2c0b-34d3-8c33-65c951e81261",
  "kind": "theorem",
  "lexical_name": "complete_window_edge_product_nonnegative",
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
  "slug": "complete-window-edge-product-nonnegative--32ddcef8e2d76057d09a3444",
  "source": {
    "blob": "60e9fb419b1af20120c0d0b6a20723cd202fdb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ddcef8e2d76057d09a3444d1f6334a84d76d779c261635d7821755024bfff0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:871acb2e-2c0b-34d3-8c33-65c951e81261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_window_edge_product_nonnegative {A y : ℝ} (hA : 8 ≤ A)
    (hy2 : y ≤ 2) (x : ℝ) :
    0 ≤ v A x * v A (x - (2 * A - y)) := by
  have hpos : 0 < A := by linarith
  by_cases hx : x ∈ Icc (-A) A
  · by_cases ht : x - (2 * A - y) ∈ Icc (-A) A
    · have hs0 : 0 ≤ A - x := by linarith [hx.2]
      have hs2 : A - x ≤ 2 := by linarith [ht.1]
      have hr0 : 0 ≤ y - (A - x) := by linarith [ht.1]
      have hr2 : y - (A - x) ≤ 2 := by linarith
      have hl := actual_normalized_edge_lower hA hs0 hs2
      have hr := actual_normalized_edge_lower hA hr0 hr2
      have heq : x - (2 * A - y) = -(A - (y - (A - x))) := by ring
      rw [heq, actual_normalized_test_even hpos]
      have hl0 : 0 ≤ v A x := by
        have h : 0 ≤ (A - x) ^ 2 / (A ^ 4 * Real.sqrt A) := by positivity
        simpa using h.trans hl
      exact mul_nonneg hl0 ((by positivity :
        0 ≤ (y - (A - x)) ^ 2 / (A ^ 4 * Real.sqrt A)).trans hr)
    · have hz : v A (x - (2 * A - y)) = 0 := by
        rw [normalizedTest_eq_indicator A hpos]
        exact indicator_of_notMem ht _
      simp [hz]
  · have hz : v A x = 0 := by
      rw [normalizedTest_eq_indicator A hpos]
      exact indicator_of_notMem hx _
    simp [hz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e9fb419b1af20120c0d0b6a20723cd202fdb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
