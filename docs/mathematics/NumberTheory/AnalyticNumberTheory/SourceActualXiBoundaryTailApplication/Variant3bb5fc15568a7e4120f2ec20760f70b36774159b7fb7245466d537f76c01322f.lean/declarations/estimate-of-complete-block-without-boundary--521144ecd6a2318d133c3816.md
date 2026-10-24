# estimate_of_complete_block_without_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:779e6255-5387-0a7d-8fcb-08c566dfbccf",
  "kind": "theorem",
  "lexical_name": "estimate_of_complete_block_without_boundary",
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
  "slug": "estimate-of-complete-block-without-boundary--521144ecd6a2318d133c3816",
  "source": {
    "blob": "7f06d69b84e55a920d10e6d75a288ac4ecb6f1e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant3bb5fc15568a7e4120f2ec20760f70b36774159b7fb7245466d537f76c01322f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521144ecd6a2318d133c3816bebbb48aa8e513b3fb7d2b95048f6a6760fdddc0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant3bb5fc15568a7e4120f2ec20760f70b36774159b7fb7245466d537f76c01322f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:779e6255-5387-0a7d-8fcb-08c566dfbccf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_complete_block_without_boundary (DX R : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_block DX R wholeHeadBudget gammaTraceBudget hb
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    simpa only [completeXiHead_eq_actualWholeXiHead] using
      actualWholeXiHead_upper A (by linarith)
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact actual_gamma_trace_upper A (by linarith)

end RH16ActualXiBoundaryApplication
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant3bb5fc15568a7e4120f2ec20760f70b36774159b7fb7245466d537f76c01322f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiBoundaryTailApplication/Variant3bb5fc15568a7e4120f2ec20760f70b36774159b7fb7245466d537f76c01322f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f06d69b84e55a920d10e6d75a288ac4ecb6f1e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
