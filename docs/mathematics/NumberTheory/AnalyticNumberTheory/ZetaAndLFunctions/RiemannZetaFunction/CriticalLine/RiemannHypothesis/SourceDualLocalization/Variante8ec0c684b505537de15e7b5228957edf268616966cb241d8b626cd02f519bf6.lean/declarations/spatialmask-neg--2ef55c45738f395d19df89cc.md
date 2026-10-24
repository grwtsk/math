# spatialMask_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efe8d1ca-47fd-a961-d99d-166f42d716dc",
  "kind": "theorem",
  "lexical_name": "spatialMask_neg",
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
  "slug": "spatialmask-neg--2ef55c45738f395d19df89cc",
  "source": {
    "blob": "74b731be13829ed1d68dd4ded996bef3051e60c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Variante8ec0c684b505537de15e7b5228957edf268616966cb241d8b626cd02f519bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ef55c45738f395d19df89cc07a4b740a2558bc26151b0ef0da1701078c09f6e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Variante8ec0c684b505537de15e7b5228957edf268616966cb241d8b626cd02f519bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efe8d1ca-47fd-a961-d99d-166f42d716dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialMask_neg (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    spatialMask s hs (-f) = -spatialMask s hs f := by
  apply Lp.ext
  filter_upwards [spatialMask_coe_ae s hs (-f), spatialMask_coe_ae s hs f,
    Lp.coeFn_neg (spatialMask s hs f), Lp.coeFn_neg f] with x h1 h2 h3 h4
  rw [h1, h3]
  simp only [Pi.neg_apply]
  rw [h2]
  by_cases hx : x ∈ s
  · rw [indicator_of_mem hx, indicator_of_mem hx, h4]
    rfl
  · rw [indicator_of_notMem hx, indicator_of_notMem hx, neg_zero]

/-- Empty overlap produces the zero state without an endpoint hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Variante8ec0c684b505537de15e7b5228957edf268616966cb241d8b626cd02f519bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Variante8ec0c684b505537de15e7b5228957edf268616966cb241d8b626cd02f519bf6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b731be13829ed1d68dd4ded996bef3051e60c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
