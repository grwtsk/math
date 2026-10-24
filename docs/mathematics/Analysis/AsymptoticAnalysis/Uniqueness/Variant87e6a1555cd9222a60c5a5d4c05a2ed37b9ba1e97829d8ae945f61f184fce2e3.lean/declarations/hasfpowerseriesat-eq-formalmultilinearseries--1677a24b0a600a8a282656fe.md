# HasFPowerSeriesAt.eq_formalMultilinearSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21e4d8592e1cf731850fea2bb638a074f6913ae7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad49b211-80a4-9c58-765a-0adc49f0a405",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e6aa4f7-7fdb-3d97-20be-97e45b96c2b8",
  "kind": "theorem",
  "lexical_name": "HasFPowerSeriesAt.eq_formalMultilinearSeries",
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
  "slug": "hasfpowerseriesat-eq-formalmultilinearseries--1677a24b0a600a8a282656fe",
  "source": {
    "blob": "21e4d8592e1cf731850fea2bb638a074f6913ae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 111,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1677a24b0a600a8a282656fe9d9e79e44d2807eb3ce6288ad33270db8d6bace2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e6aa4f7-7fdb-3d97-20be-97e45b96c2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFPowerSeriesAt.eq_formalMultilinearSeries {p₁ p₂ : FormalMultilinearSeries 𝕜 𝕜 E}
    {f : 𝕜 → E} {x : 𝕜} (h₁ : HasFPowerSeriesAt f p₁ x) (h₂ : HasFPowerSeriesAt f p₂ x) : p₁ = p₂ :=
  sub_eq_zero.mp (HasFPowerSeriesAt.eq_zero (x := x) (by simpa only [sub_self] using h₁.sub h₂))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e4d8592e1cf731850fea2bb638a074f6913ae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
