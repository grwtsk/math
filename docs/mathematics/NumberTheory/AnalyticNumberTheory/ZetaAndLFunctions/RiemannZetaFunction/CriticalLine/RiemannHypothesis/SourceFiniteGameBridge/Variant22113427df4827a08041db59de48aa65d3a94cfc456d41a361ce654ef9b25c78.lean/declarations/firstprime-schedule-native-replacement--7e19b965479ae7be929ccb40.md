# firstPrime_schedule_native_replacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6db3b754-1016-bd3f-8133-e406c917bf58",
  "kind": "theorem",
  "lexical_name": "firstPrime_schedule_native_replacement",
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
  "slug": "firstprime-schedule-native-replacement--7e19b965479ae7be929ccb40",
  "source": {
    "blob": "1e618b228797a1eac334ad20325af07240711800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 294,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant22113427df4827a08041db59de48aa65d3a94cfc456d41a361ce654ef9b25c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e19b965479ae7be929ccb400185def00bf78c15d2fe2d384d2cf41083c0b01b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant22113427df4827a08041db59de48aa65d3a94cfc456d41a361ce654ef9b25c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6db3b754-1016-bd3f-8133-e406c917bf58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrime_schedule_native_replacement :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      |sourceQuadraticValue explicitSecondDerivative A -
        (archimedeanValue explicitSecondDerivative A +
          ∑ n ∈ Finset.range (sourceEventCount A), firstPrimeEventGain A n)| ≤ 2 * E := by
  obtain ⟨E, hE, he⟩ :=
    SourcePrimePowerPartition.residual_firstPrime_uniform_replacement_error
  refine ⟨E, hE, ?_⟩
  intro A hA
  rw [sum_firstPrimeEventGain]
  have hq := sourceQuadraticValue_eq_event_sum A hA
  rw [sum_sourceEventGain A hA] at hq
  have hid : sourceQuadraticValue explicitSecondDerivative A -
      (archimedeanValue explicitSecondDerivative A +
        -2 * (SourcePrimePowerPartition.firstPrimeMoment A + diagonalMainCoefficient A * A)) =
      -2 * (mertensResidual A -
        (SourcePrimePowerPartition.firstPrimeMoment A + diagonalMainCoefficient A * A)) := by
    rw [hq]
    ring
  rw [hid, abs_mul]
  norm_num only [abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  exact mul_le_mul_of_nonneg_left (he A hA) (by norm_num)

/-- One-sided lifting to the literal complete residual. The source decoder is
proved above; only the supplied edge checks and terminal debt remain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant22113427df4827a08041db59de48aa65d3a94cfc456d41a361ce654ef9b25c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiniteGameBridge/Variant22113427df4827a08041db59de48aa65d3a94cfc456d41a361ce654ef9b25c78.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e618b228797a1eac334ad20325af07240711800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
