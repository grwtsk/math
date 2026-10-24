# subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74353554-84bb-f7d6-48ac-5a3ba4f1a310",
  "kind": "theorem",
  "lexical_name": "subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram",
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
  "slug": "subpolynomialcoregrowingshiftquarticmultiplicityweightedboxbudget-iff-pa--dba139df25023ee1dcdca127",
  "source": {
    "blob": "2900466330bd9dc4213f1ed7ed0b8f88865cf4d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 249,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba139df25023ee1dcdca1277c438f809fd704ce7a5d6fcc176e4795f1145883",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74353554-84bb-f7d6-48ac-5a3ba4f1a310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget_iff_parallelogram :
    SubpolynomialCoreGrowingShiftQuarticMultiplicityWeightedBoxBudget ↔
      SubpolynomialCoreGrowingShiftQuarticParallelogramBudget := by
  constructor
  · intro hBox δ hδ
    obtain ⟨C, hC, hbound⟩ := hBox δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox]
    exact hbound j
  · intro hPara δ hδ
    obtain ⟨C, hC, hbound⟩ := hPara δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← coreGrowingShiftQuarticParallelogramEnergy_eq_multiplicityBox]
    exact hbound j

/-- Centered squarefree collision-line compensation plus the exact
multiplicity-weighted box budget retain the conditional endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticMultiplicityBox.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2900466330bd9dc4213f1ed7ed0b8f88865cf4d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
