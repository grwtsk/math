# actualCenteredMangoldtLogError_small_after

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ade1a0f-304e-dfb3-7ecb-4407eafee403",
  "kind": "theorem",
  "lexical_name": "actualCenteredMangoldtLogError_small_after",
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
  "slug": "actualcenteredmangoldtlogerror-small-after--b687df96b15f3a48e83b95b0",
  "source": {
    "blob": "2a76ca98dbb73ecf50117b59c0947533ecda4804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b687df96b15f3a48e83b95b0f1e35d472c076800335b894b34b9d669d35282a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ade1a0f-304e-dfb3-7ecb-4407eafee403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredMangoldtLogError_small_after {eta : ℝ} (heta : 0 < eta) :
    ∃ T : ℝ, Real.log 7 ≤ T ∧
      ∀ t, T ≤ t → |actualCenteredMangoldtLogError t| ≤ eta := by
  have he := (tendsto_order.mp actualCenteredMangoldtLogError_tendsto_zero).2 eta heta
  have hl := (tendsto_order.mp actualCenteredMangoldtLogError_tendsto_zero).1 (-eta)
    (by linarith)
  obtain ⟨T, hT⟩ := eventually_atTop.1 (he.and hl)
  refine ⟨max T (Real.log 7), le_max_right _ _, fun t ht => ?_⟩
  exact abs_le.mpr ⟨le_of_lt (hT t ((le_max_left _ _).trans ht)).2,
    le_of_lt (hT t ((le_max_left _ _).trans ht)).1⟩

/-- The exact early center and directional late cost remain visible before any triangle loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalCovarianceOrdinarySplit/Variantc774a585b7a4368e95032191208ee6b84c870b2bd46310def4b1f3cbb69835b0.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a76ca98dbb73ecf50117b59c0947533ecda4804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
