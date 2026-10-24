# actualRawArithmeticSquaredMass_primePowerDilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a38f517-da34-ddc4-8aa5-58a3274b1f1d",
  "kind": "theorem",
  "lexical_name": "actualRawArithmeticSquaredMass_primePowerDilation",
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
  "slug": "actualrawarithmeticsquaredmass-primepowerdilation--344b770a1cb934b93fb38a10",
  "source": {
    "blob": "9a6e4ed86e5da0bf2e839e154fe7f05919cebcd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344b770a1cb934b93fb38a10fa64aa983ce2f9d7c7de1f04ff33792b9b778bc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a38f517-da34-ddc4-8aa5-58a3274b1f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRawArithmeticSquaredMass_primePowerDilation (j : ℕ) (hj : 1 ≤ j) :
    1 + ((j : ℝ) * Real.log 2)^2 ≤
      actualRawArithmeticSquaredMass ((j : ℝ) * Real.log 2) := by
  apply actualPrimePower_rawMass_lower _ j hj
  have hp : 0 ≤ (j : ℝ) * Real.log 2 := mul_nonneg (Nat.cast_nonneg _)
    (Real.log_nonneg (by norm_num))
  linarith

/-- The selected rows are genuine prime powers with their unchanged Mangoldt weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant1b968ca2f2705b200b7c4ce8c006eae4ced085b6d8cf4f183d19a7f32ac073e7.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a6e4ed86e5da0bf2e839e154fe7f05919cebcd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
