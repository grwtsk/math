# weighted_source_sum_eq_occurrences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1fb5b07-947b-5bcb-d3b2-0ab67b2c526b",
  "kind": "theorem",
  "lexical_name": "weighted_source_sum_eq_occurrences",
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
  "slug": "weighted-source-sum-eq-occurrences--371199cde561da04de3a48f3",
  "source": {
    "blob": "7f75e77ee65405a0febecd2591d2db15c2efe184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:371199cde561da04de3a48f339081c49a7be944b4b52af067e85c9324924a6b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1fb5b07-947b-5bcb-d3b2-0ab67b2c526b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_source_sum_eq_occurrences (A : ℝ) (hA : 1 ≤ A) :
    (∑' p : Zeta23.zetaZeroConfig.carrier,
      (Zeta23.zetaZeroConfig.mult p : ℂ) * bilateralTransform A ((p : ℂ) - 1 / 2) ^ 2) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 := by
  change (∑' p : ZeroPoint,
    (multiplicity p : ℂ) * bilateralTransform A (p.val - 1 / 2) ^ 2) = _
  exact (occurrence_tsum_eq_weighted
    (fun p ↦ bilateralTransform A (p.val - 1 / 2) ^ 2)
    (SourceZeroSummability.source_transform_squares_summable A hA)).symm

end
end FormalResearch.RiemannHypothesis.WeilSource
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variant2ef3d0c1011d777729035436ffcc165fe12e5633e8df0ff5e9bc22dd6ca71b58.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f75e77ee65405a0febecd2591d2db15c2efe184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
