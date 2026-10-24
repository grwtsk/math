# continuousHalfScaleDerivative_lt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79bd476067db60146fde1d50824b7f603a733dad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a54527f5-4c6e-04ba-557d-eb5818b1a773",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbffe5fc-0e21-fc65-8ca2-26d57b596456",
  "kind": "theorem",
  "lexical_name": "continuousHalfScaleDerivative_lt_zero",
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
  "slug": "continuoushalfscalederivative-lt-zero--fcf1c499daeaed1c60234ba5",
  "source": {
    "blob": "79bd476067db60146fde1d50824b7f603a733dad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcf1c499daeaed1c60234ba50a7f9e67450cbc35fe8748fb2a992dfe246ae083",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbffe5fc-0e21-fc65-8ca2-26d57b596456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousHalfScaleDerivative_lt_zero {A : ℝ} (hA : 0 < A) :
    continuousHalfScaleDerivative A < 0 := by
  unfold continuousHalfScaleDerivative
  apply div_neg_of_neg_of_pos
  · have hp : 0 < 7 * A ^ 4 + 756 * A ^ 2 + 7344 := by positivity
    have hn : -544 * A < 0 := by nlinarith
    exact mul_neg_of_neg_of_pos hn hp
  · exact sq_pos_of_pos (continuousHalfDenominator_pos A)

end
end FormalResearch.RiemannHypothesis.SourceMangoldtWorkScale
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuotientV1Prebytes/Variantb1714b9348efce305f794b7581051d564a10588a1edc5b157923f43ad5c6cd50.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79bd476067db60146fde1d50824b7f603a733dad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
