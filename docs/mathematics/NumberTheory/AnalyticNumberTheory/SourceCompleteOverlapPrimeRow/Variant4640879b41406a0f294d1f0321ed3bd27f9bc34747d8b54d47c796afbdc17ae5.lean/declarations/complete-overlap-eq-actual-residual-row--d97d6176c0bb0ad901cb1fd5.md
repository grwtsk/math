# complete_overlap_eq_actual_residual_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d701424-6718-637a-fab0-b8438f69afe3",
  "kind": "theorem",
  "lexical_name": "complete_overlap_eq_actual_residual_row",
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
  "slug": "complete-overlap-eq-actual-residual-row--d97d6176c0bb0ad901cb1fd5",
  "source": {
    "blob": "e4cb3fcece143fb72b538d8d2eb4b038aa3ac816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant4640879b41406a0f294d1f0321ed3bd27f9bc34747d8b54d47c796afbdc17ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d97d6176c0bb0ad901cb1fd536225a7023dd3b3e04f5e0bc99a3c8a0e26deb82",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant4640879b41406a0f294d1f0321ed3bd27f9bc34747d8b54d47c796afbdc17ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d701424-6718-637a-fab0-b8438f69afe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_overlap_eq_actual_residual_row (A : ℝ) (hA : 1 ≤ A) :
    remainingOverlapBalance A =
      mertensResidual A - finiteLedgerCorrection A + retainedSpatialStrip A := by
  have hs := actual_surplus_eq_remainingOverlap_sub_strip hA
  have hr := actual_residual_decomposition A hA
  unfold finiteLedgerCorrection retainedSpatialStrip
  linarith only [hs, hr]

/-- All closed prime powers survive the complete joint reconstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant4640879b41406a0f294d1f0321ed3bd27f9bc34747d8b54d47c796afbdc17ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteOverlapPrimeRow/Variant4640879b41406a0f294d1f0321ed3bd27f9bc34747d8b54d47c796afbdc17ae5.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cb3fcece143fb72b538d8d2eb4b038aa3ac816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
