# ftaylorSeriesWithin_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e427b24dfd5c0a28a45b1423b4ea47793ea3a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 590,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c3fd3ab-15f1-b240-d579-0a6268f62f32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f806881-f1b4-9851-e2cc-70cf2a952814",
  "kind": "theorem",
  "lexical_name": "ftaylorSeriesWithin_insert",
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
  "slug": "ftaylorserieswithin-insert--461dc786f5ba62120f6aa673",
  "source": {
    "blob": "9e427b24dfd5c0a28a45b1423b4ea47793ea3a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 590,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461dc786f5ba62120f6aa6736aa85caee468eed5607f3b4fb600501ba9ca2eab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f806881-f1b4-9851-e2cc-70cf2a952814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ftaylorSeriesWithin_insert :
    ftaylorSeriesWithin 𝕜 f (insert x s) = ftaylorSeriesWithin 𝕜 f s := by
  ext y n : 2
  apply iteratedFDerivWithin_insert

/-- The iterated differential within a set `s` at a point `x` is not modified if one intersects
`s` with a neighborhood of `x` within `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantb72f7fe68cec3e6aa4df06640759561d82a6220ca48523eb7c4229477fbed72e.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e427b24dfd5c0a28a45b1423b4ea47793ea3a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
