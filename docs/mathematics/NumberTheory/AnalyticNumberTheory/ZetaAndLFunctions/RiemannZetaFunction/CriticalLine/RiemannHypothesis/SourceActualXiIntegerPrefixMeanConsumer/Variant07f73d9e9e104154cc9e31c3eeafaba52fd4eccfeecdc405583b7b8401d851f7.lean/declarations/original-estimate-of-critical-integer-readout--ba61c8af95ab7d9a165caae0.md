# original_estimate_of_critical_integer_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:079dea20-b29a-874e-d97a-34dcff61ab5a",
  "kind": "theorem",
  "lexical_name": "original_estimate_of_critical_integer_readout",
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
  "slug": "original-estimate-of-critical-integer-readout--ba61c8af95ab7d9a165caae0",
  "source": {
    "blob": "4b712a32fe2df646e0d4fcf45c6c3d290fcbe18f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant07f73d9e9e104154cc9e31c3eeafaba52fd4eccfeecdc405583b7b8401d851f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba61c8af95ab7d9a165caae0f87ba161f3e37684313ffe1d96ebf043f58c78b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant07f73d9e9e104154cc9e31c3eeafaba52fd4eccfeecdc405583b7b8401d851f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:079dea20-b29a-874e-d97a-34dcff61ab5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_estimate_of_critical_integer_readout (L : ℝ) (N₀ : ℕ)
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀)
    (hreadout : ∀ N : ℕ, N₀ ≤ N →
      (∑ n ∈ Finset.Icc 7 (N - 1), |actualXiIntegerCriticalReadout n| *
        Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ))) ≤ L * Real.log (N : ℝ)) :
    CorrelationAssembly.EstimateObligation := by
  apply original_estimate_of_integer_prefix_at_cutoff L N₀ hL hN₀
  intro N hN
  rw [actualXiWeightedIntegerPrefix_eq_critical_readout]
  exact hreadout N hN

end
end FormalResearch.RiemannHypothesis.SourceActualXiIntegerPrefixMeanConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant07f73d9e9e104154cc9e31c3eeafaba52fd4eccfeecdc405583b7b8401d851f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant07f73d9e9e104154cc9e31c3eeafaba52fd4eccfeecdc405583b7b8401d851f7.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b712a32fe2df646e0d4fcf45c6c3d290fcbe18f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
