# actual_readout_upper_of_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b27f4c24-7f8e-f977-2e8e-a6125ebe43ab",
  "kind": "theorem",
  "lexical_name": "actual_readout_upper_of_overlap",
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
  "slug": "actual-readout-upper-of-overlap--d307c65282d5ebad201cc585",
  "source": {
    "blob": "026ef1a3a79c9441ae08ce3495366de990cc9633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpOverlapConsumer/Variant69f2fb9b7ff11dd12b2cd28d79e00d66042f6be218e5cf1922b681ae3cf7a0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d307c65282d5ebad201cc5851b9d318776567a0056c1a44f0a6961be7a44ead4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpOverlapConsumer/Variant69f2fb9b7ff11dd12b2cd28d79e00d66042f6be218e5cf1922b681ae3cf7a0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27f4c24-7f8e-f977-2e8e-a6125ebe43ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_readout_upper_of_overlap (D R : ℝ)
    (hover : ∀ A : ℝ, R ≤ A → remainingOverlapBalance A ≤ D) :
    ∀ A : ℝ, max 91 R ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤
        D + exactStripCost (max 91 R) := by
  intro A hQA
  have ho := hover A ((le_max_right _ _).trans hQA)
  have hs := actual_surplus_le_remainingOverlap_add_exact_strip
    (le_max_left (91 : ℝ) R) hQA
  unfold exactStripCost
  linarith

/-- The only supplied arithmetic witness is the unchanged full overlap balance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpOverlapConsumer/Variant69f2fb9b7ff11dd12b2cd28d79e00d66042f6be218e5cf1922b681ae3cf7a0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpOverlapConsumer/Variant69f2fb9b7ff11dd12b2cd28d79e00d66042f6be218e5cf1922b681ae3cf7a0a3.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `026ef1a3a79c9441ae08ce3495366de990cc9633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
