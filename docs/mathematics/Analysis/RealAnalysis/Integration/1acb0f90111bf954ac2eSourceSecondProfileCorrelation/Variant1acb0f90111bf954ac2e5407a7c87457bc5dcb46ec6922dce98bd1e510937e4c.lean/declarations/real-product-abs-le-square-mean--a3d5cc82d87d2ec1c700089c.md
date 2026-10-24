# real_product_abs_le_square_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dea494c939dc59376b6049766ce0f60a278841ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:751740c0-159c-9567-4dcc-2256a5fab703",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad1aacc9-446b-f39f-51b4-b908cbaaf1e3",
  "kind": "theorem",
  "lexical_name": "real_product_abs_le_square_mean",
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
  "slug": "real-product-abs-le-square-mean--a3d5cc82d87d2ec1c700089c",
  "source": {
    "blob": "dea494c939dc59376b6049766ce0f60a278841ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3d5cc82d87d2ec1c700089c0ef1ca3314e2e35d4e48913854a39a5deb96d3eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1aacc9-446b-f39f-51b4-b908cbaaf1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem real_product_abs_le_square_mean (x y : ℝ) :
    |x * y| ≤ (x ^ 2 + y ^ 2) / 2 := by
  apply abs_le.mpr
  constructor <;> nlinarith [sq_nonneg (x - y), sq_nonneg (x + y)]

/-- The actual discontinuous second profile has integrable translated products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dea494c939dc59376b6049766ce0f60a278841ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
