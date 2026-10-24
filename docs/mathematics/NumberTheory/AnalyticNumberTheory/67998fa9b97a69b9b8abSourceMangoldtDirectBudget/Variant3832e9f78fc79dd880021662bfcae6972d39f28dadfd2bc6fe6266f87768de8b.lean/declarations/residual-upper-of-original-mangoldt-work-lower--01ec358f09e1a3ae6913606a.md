# residual_upper_of_original_Mangoldt_work_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c611809-3af6-1c08-e352-7cc273eb9f3b",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_original_Mangoldt_work_lower",
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
  "slug": "residual-upper-of-original-mangoldt-work-lower--01ec358f09e1a3ae6913606a",
  "source": {
    "blob": "e168972a7b95587ac415083813b1e70ff6581e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant3832e9f78fc79dd880021662bfcae6972d39f28dadfd2bc6fe6266f87768de8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ec358f09e1a3ae6913606af31b48502c47babaccefff5b82c0f46d9c7ba61e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant3832e9f78fc79dd880021662bfcae6972d39f28dadfd2bc6fe6266f87768de8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c611809-3af6-1c08-e352-7cc273eb9f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_original_Mangoldt_work_lower (C R A : ℝ) (hR : 1 ≤ R)
    (hRA : R ≤ A) (hwork : -C ≤ criticalMangoldtWork A) :
    mertensResidual A ≤ C - 1 + criticalBaselineCorrection R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hw := mertensResidual_eq_continuous_sub_Mangoldt_work A hA
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  rw [criticalBaselineCorrection_eq_actual A hA] at hb
  linarith only [hw, hb, hwork]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant3832e9f78fc79dd880021662bfcae6972d39f28dadfd2bc6fe6266f87768de8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/67998fa9b97a69b9b8abSourceMangoldtDirectBudget/Variant3832e9f78fc79dd880021662bfcae6972d39f28dadfd2bc6fe6266f87768de8b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e168972a7b95587ac415083813b1e70ff6581e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
