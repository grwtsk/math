# compensatedSourceSum_smoothed_tangent_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bce56f3a-ecb4-6d00-1d7c-e9f0fde37fab",
  "kind": "theorem",
  "lexical_name": "compensatedSourceSum_smoothed_tangent_error",
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
  "slug": "compensatedsourcesum-smoothed-tangent-error--92ac44e389b3108c437c6b2d",
  "source": {
    "blob": "cb8c9a46c675e1c6530c1320cce21708b33de40f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Variant08fd11e65b990ea8ba433fb6eb785f4e40dae8e4b8893f334516b168ab25eae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ac44e389b3108c437c6b2d4fea00e7eb58a2177512e9009305d054e388ab88",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Variant08fd11e65b990ea8ba433fb6eb785f4e40dae8e4b8893f334516b168ab25eae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce56f3a-ecb4-6d00-1d7c-e9f0fde37fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedSourceSum_smoothed_tangent_error {A : ℝ} (hA : 200 ≤ A)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |compensatedSourceSum A - smoothedTangentReadout μ A ⌊Real.exp (2 * A)⌋₊| ≤
      smoothedTangentPrice μ A ⌊Real.exp (2 * A)⌋₊ := by
  rw [compensatedSourceSum_eq_finiteCompensatedReadout]
  exact finite_tangent_smoothed_error μ hA _ hy hmean hy2

/-- Attempting the unchanged next arithmetic consumer exposes its remaining signed cap.
No bound for this premise follows from the analytic smoothing prices alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Variant08fd11e65b990ea8ba433fb6eb785f4e40dae8e4b8893f334516b168ab25eae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceConsumer/Variant08fd11e65b990ea8ba433fb6eb785f4e40dae8e4b8893f334516b168ab25eae7.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb8c9a46c675e1c6530c1320cce21708b33de40f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
