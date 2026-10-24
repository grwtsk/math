# sourceSymbolBound_eq_coefficientVariation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4cc923b-4b93-047b-642c-ffb422daef66",
  "kind": "theorem",
  "lexical_name": "sourceSymbolBound_eq_coefficientVariation",
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
  "slug": "sourcesymbolbound-eq-coefficientvariation--9f72bc4f10eaf981d0630616",
  "source": {
    "blob": "713359410b20ea65daf40908ff260b90aac19816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f72bc4f10eaf981d0630616980d0f60406d739efa73e6bc55522f79a4cd8ea7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4cc923b-4b93-047b-642c-ffb422daef66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSymbolBound_eq_coefficientVariation (A : ℝ) :
    sourceSymbolBound A =
      SourceSignedPortControls.coefficientVariation ⌊Real.exp (2 * A)⌋₊ := by
  unfold sourceSymbolBound SourceSignedPortControls.coefficientVariation primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have he := exponentialTest_log (fun _ : ℝ => 1) n
    (by have := (Finset.mem_Icc.mp hn).1; omega)
  simp only [exponentialTest, mul_one, one_div] at he
  unfold SourceCompensatedFourier.compensatedCoefficient
    SourceSignedPortControls.compensatedCoefficient
  rw [he, div_eq_mul_inv]

/-- The complete signed source already contains this growing absolute-mass lower bound.
It is a boundary for the unsigned method, not a lower bound on the signed heat remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatBoundaries/Variant9d3cb0ea13451423f7a68151626deb2e696412a1b069a20ea8a03544383bca97.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713359410b20ea65daf40908ff260b90aac19816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
