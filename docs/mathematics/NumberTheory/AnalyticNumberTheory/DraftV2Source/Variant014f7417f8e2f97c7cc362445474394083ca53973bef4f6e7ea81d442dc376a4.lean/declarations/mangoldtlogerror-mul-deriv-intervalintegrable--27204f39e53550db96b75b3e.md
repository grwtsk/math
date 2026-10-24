# mangoldtLogError_mul_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50ed17ece7cdfa802be65a62f73d0d32eb3c9192",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23fd0e52-0d38-7705-ea26-f547130dd9f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e41ea21b-1753-b776-66f2-a59c156a8d66",
  "kind": "theorem",
  "lexical_name": "mangoldtLogError_mul_deriv_intervalIntegrable",
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
  "slug": "mangoldtlogerror-mul-deriv-intervalintegrable--27204f39e53550db96b75b3e",
  "source": {
    "blob": "50ed17ece7cdfa802be65a62f73d0d32eb3c9192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 194,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27204f39e53550db96b75b3ebd080d56a338b2bcadfa52d94eaec88236ff1f30",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e41ea21b-1753-b776-66f2-a59c156a8d66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogError_mul_deriv_intervalIntegrable
    (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun t => mangoldtLogError t * deriv F t) volume a b := by
  have hi := (mangoldtLogPrefix_mul_deriv_intervalIntegrable a b hab F hF).sub
    ((continuous_id.mul hF.continuous_deriv_one).intervalIntegrable a b)
  simpa only [mangoldtLogError, sub_mul, Pi.sub_apply, Pi.mul_apply, id_eq] using hi

/-- Exact replacement by Lebesgue integration, retaining the signed remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ed17ece7cdfa802be65a62f73d0d32eb3c9192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
