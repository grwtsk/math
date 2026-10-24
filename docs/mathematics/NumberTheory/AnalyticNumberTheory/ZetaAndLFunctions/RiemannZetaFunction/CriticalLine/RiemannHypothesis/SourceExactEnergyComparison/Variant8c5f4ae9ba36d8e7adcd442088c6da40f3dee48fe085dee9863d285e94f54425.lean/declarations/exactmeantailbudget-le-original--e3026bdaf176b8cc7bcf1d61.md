# exactMeanTailBudget_le_original

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09f24bb8-0225-f9c2-4707-d7fbe09af7f3",
  "kind": "theorem",
  "lexical_name": "exactMeanTailBudget_le_original",
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
  "slug": "exactmeantailbudget-le-original--e3026bdaf176b8cc7bcf1d61",
  "source": {
    "blob": "518f3fa720721e298a65d805446889906ecc5a65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3026bdaf176b8cc7bcf1d61737e40d19555f0c068cccdddd2e281ec245d952a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f24bb8-0225-f9c2-4707-d7fbe09af7f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactMeanTailBudget_le_original (M1 R : ℝ) (hM1 : 0 ≤ M1) :
    exactMeanTailBudget M1 R ≤ meanTailBudget M1 R := by
  have hQ : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have he := tailEnergyCoefficient_le_five hQ
  have hs : Real.sqrt (tailEnergyCoefficient (calibratedRadius R)) ≤ 5 := by
    apply Real.sqrt_le_iff.mpr
    constructor
    · norm_num
    · linarith
  have hd : 2 * tailEnergyCoefficient (calibratedRadius R) / calibratedRadius R ≤
      2 * physicalCurvatureCoefficient / calibratedRadius R := by
    apply div_le_div_of_nonneg_right _ (calibratedRadius_pos R).le
    norm_num [physicalCurvatureCoefficient] at *
    linarith
  exact mul_le_mul_of_nonneg_right (add_le_add hs hd) hM1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `518f3fa720721e298a65d805446889906ecc5a65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
