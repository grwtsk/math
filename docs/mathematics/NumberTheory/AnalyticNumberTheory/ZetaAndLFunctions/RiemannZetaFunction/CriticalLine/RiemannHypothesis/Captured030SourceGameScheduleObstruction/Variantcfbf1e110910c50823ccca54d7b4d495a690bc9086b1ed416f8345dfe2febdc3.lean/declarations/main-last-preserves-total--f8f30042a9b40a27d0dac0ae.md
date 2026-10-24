# main_last_preserves_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08852ccc-ceb8-e80f-afe8-4f5cf77f3a2c",
  "kind": "theorem",
  "lexical_name": "main_last_preserves_total",
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
  "slug": "main-last-preserves-total--f8f30042a9b40a27d0dac0ae",
  "source": {
    "blob": "dfac110ddd44162b6aa66ec944a7d51425593a66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8f30042a9b40a27d0dac0aee3d2097346e9411bcea56f2ce417ace956c84c0a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08852ccc-ceb8-e80f-afe8-4f5cf77f3a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem main_last_preserves_total (A : ℝ) :
    (∑ n ∈ Finset.range (sourceEventCount A), mainLastEventGain A n) =
      ∑ n ∈ Finset.range (sourceEventCount A), firstPrimeEventGain A n := by
  have hp : 0 < sourceEventCount A := by unfold sourceEventCount; omega
  have hl : sourceEventCount A - 1 < sourceEventCount A := by omega
  unfold mainLastEventGain
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  simp only [Finset.sum_ite_eq', Finset.mem_range, hp, hl, if_true]
  ring

/-- The total-preserving refinement is consumed by the same actual arithmetic owner.
It removes the demonstrated main-first obstruction, not the missing terminal cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfac110ddd44162b6aa66ec944a7d51425593a66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
