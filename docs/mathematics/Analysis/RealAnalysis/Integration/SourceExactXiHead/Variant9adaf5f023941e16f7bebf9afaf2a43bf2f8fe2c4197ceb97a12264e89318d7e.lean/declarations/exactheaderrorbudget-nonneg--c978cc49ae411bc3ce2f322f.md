# exactHeadErrorBudget_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea03042d-1c02-e3af-e4c7-055d2547c826",
  "kind": "theorem",
  "lexical_name": "exactHeadErrorBudget_nonneg",
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
  "slug": "exactheaderrorbudget-nonneg--c978cc49ae411bc3ce2f322f",
  "source": {
    "blob": "94353a802ad09e2907645432083d26c03406ef41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c978cc49ae411bc3ce2f322f560441fd2c6aa9b78b9d28a3b872f5d8eb86c497",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea03042d-1c02-e3af-e4c7-055d2547c826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactHeadErrorBudget_nonneg (Q : ℝ) : 0 ≤ exactHeadErrorBudget Q := by
  have hs : Real.sqrt (2 : ℝ) ≤ Real.sqrt 7 := Real.sqrt_le_sqrt (by norm_num)
  have h2 : 0 < Real.sqrt (2 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have h7 : 0 < Real.sqrt (7 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hd : 0 ≤ 1 / Real.sqrt 2 - 1 / Real.sqrt 7 := by
    exact sub_nonneg.mpr (one_div_le_one_div_of_le h2 hs)
  unfold exactHeadErrorBudget
  exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num) wholeHeadHeight_nonneg) hd) (sq_nonneg Q)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHead/Variant9adaf5f023941e16f7bebf9afaf2a43bf2f8fe2c4197ceb97a12264e89318d7e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94353a802ad09e2907645432083d26c03406ef41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
