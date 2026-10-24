# one_div_one_sub_sq_hasFPowerSeriesOnBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a775c5b-818b-4b7e-223d-c6d43ad8a1d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe7a45ec-c498-4138-613d-5671d2707d6a",
  "kind": "theorem",
  "lexical_name": "one_div_one_sub_sq_hasFPowerSeriesOnBall_zero",
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
  "slug": "one-div-one-sub-sq-hasfpowerseriesonball-zero--d6f46355ce1e6a97e3c51fa4",
  "source": {
    "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 202,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6f46355ce1e6a97e3c51fa404069ac4cfaec8722c13bf8b494fba501f8fc172",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe7a45ec-c498-4138-613d-5671d2707d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_div_one_sub_sq_hasFPowerSeriesOnBall_zero :
    HasFPowerSeriesOnBall (fun x ↦ 1 / (1 - x : ℂ) ^ 2) (.ofScalars ℂ fun n ↦ (n + 1 : ℂ)) 0 1 := by
  simpa using one_div_sub_sq_hasFPowerSeriesOnBall_zero (z := 1)

/-- `∑ (ai + b) zⁱ = (b - a) / (1 - z) + a / (1 - z)²` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde95f8f3d29f910c8a6fa05fe09da5b568e44a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
