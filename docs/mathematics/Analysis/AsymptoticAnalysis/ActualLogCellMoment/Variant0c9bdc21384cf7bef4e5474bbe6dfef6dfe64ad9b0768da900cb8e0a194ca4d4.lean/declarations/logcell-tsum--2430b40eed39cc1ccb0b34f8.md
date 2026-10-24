# logCell_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a19a31f-9339-c329-c18d-41972cfc9d03",
  "kind": "theorem",
  "lexical_name": "logCell_tsum",
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
  "slug": "logcell-tsum--2430b40eed39cc1ccb0b34f8",
  "source": {
    "blob": "52119f3dbf0014e6f88c536414e35ab8191b14e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 111,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2430b40eed39cc1ccb0b34f89c209b666b0085451dd06c448193b69abddb190a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a19a31f-9339-c329-c18d-41972cfc9d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logCell_tsum :
    ∑' n : ℕ, logCell (n+1) = 1-Real.eulerMascheroniConstant-firstStieltjesConstant :=
  logCell_hasSum.tsum_eq

end ContinuousResearch.ActualLogCellMoment

#check ContinuousResearch.ActualLogCellMoment.logCell
#print axioms ContinuousResearch.ActualLogCellMoment.logCell
#print ContinuousResearch.ActualLogCellMoment.logCell

#check ContinuousResearch.ActualLogCellMoment.logCellSum
#print axioms ContinuousResearch.ActualLogCellMoment.logCellSum
#print ContinuousResearch.ActualLogCellMoment.logCellSum

#check ContinuousResearch.ActualLogCellMoment.logCell_integrable
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_integrable
#print ContinuousResearch.ActualLogCellMoment.logCell_integrable

#check ContinuousResearch.ActualLogCellMoment.logCell_eval
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_eval
#print ContinuousResearch.ActualLogCellMoment.logCell_eval

#check ContinuousResearch.ActualLogCellMoment.logCell_nonneg
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_nonneg
#print ContinuousResearch.ActualLogCellMoment.logCell_nonneg

#check ContinuousResearch.ActualLogCellMoment.logCellSum_eval
#print axioms ContinuousResearch.ActualLogCellMoment.logCellSum_eval
#print ContinuousResearch.ActualLogCellMoment.logCellSum_eval

#check ContinuousResearch.ActualLogCellMoment.logCellSum_tendsto
#print axioms ContinuousResearch.ActualLogCellMoment.logCellSum_tendsto
#print ContinuousResearch.ActualLogCellMoment.logCellSum_tendsto

#check ContinuousResearch.ActualLogCellMoment.logCell_hasSum
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_hasSum
#print ContinuousResearch.ActualLogCellMoment.logCell_hasSum

#check ContinuousResearch.ActualLogCellMoment.logCell_summable
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_summable
#print ContinuousResearch.ActualLogCellMoment.logCell_summable

#check ContinuousResearch.ActualLogCellMoment.logCell_tsum
#print axioms ContinuousResearch.ActualLogCellMoment.logCell_tsum
#print ContinuousResearch.ActualLogCellMoment.logCell_tsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52119f3dbf0014e6f88c536414e35ab8191b14e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
