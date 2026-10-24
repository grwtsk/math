# weighted_source_sum_eq_occurrences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "859114b40f77d09e9082b29461ee8c68de251ddb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d05f11b7-21a3-a500-52cd-dc4db3eeaf05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3de4c055-69f6-edfc-63a4-5df2e0be80a8",
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
  "slug": "weighted-source-sum-eq-occurrences--6b15e8f3b81712e217d69a98",
  "source": {
    "blob": "859114b40f77d09e9082b29461ee8c68de251ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b15e8f3b81712e217d69a988eca8e3b22b53e6cd4434429db3c9da83daa9e1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de4c055-69f6-edfc-63a4-5df2e0be80a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Occurrences/Variantc2626ad59469e93b9ec0318526ef98cabd95424d21bdaed4f83923f1329a2c13.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `859114b40f77d09e9082b29461ee8c68de251ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
