# mangoldtLogWindow_eq_filter

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
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98927226-da78-f391-e573-5cea6f463562",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba266148-7430-a699-3eea-835d999ed33b",
  "kind": "theorem",
  "lexical_name": "mangoldtLogWindow_eq_filter",
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
  "slug": "mangoldtlogwindow-eq-filter--3512709fe491f69239429519",
  "source": {
    "blob": "50ed17ece7cdfa802be65a62f73d0d32eb3c9192",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3512709fe491f69239429519ad8e02d18cc0f76b9f506a7e02fd3d8d8dbc533e",
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

Occurrence: `result:ba266148-7430-a699-3eea-835d999ed33b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogWindow_eq_filter (a b : ℝ) (hab : a ≤ b) (F : ℝ → ℝ) :
    mangoldtLogWindow a b F = ∑ p ∈ (primePowerInventory b).filter (fun p : ℕ => a < Real.log p),
      ArithmeticFunction.vonMangoldt p / (p : ℝ) * F (Real.log p) := by
  classical
  have hs := Finset.sum_filter_add_sum_filter_not (primePowerInventory b)
    (fun p : ℕ => Real.log p ≤ a)
    (fun p : ℕ => ArithmeticFunction.vonMangoldt p / (p : ℝ) * F (Real.log p))
  rw [primePowerInventory_filter_log b a hab] at hs
  simp only [not_le] at hs
  unfold mangoldtLogWindow mangoldtLogSum
  linarith

/-- Positive logarithmic windows have the literal half-open natural inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variant014f7417f8e2f97c7cc362445474394083ca53973bef4f6e7ea81d442dc376a4.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ed17ece7cdfa802be65a62f73d0d32eb3c9192` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
