# measure_stieltjesOfMeasurableRat_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a8b5327-ec0a-3743-806d-ef0cfdbf268c",
  "kind": "lemma",
  "lexical_name": "measure_stieltjesOfMeasurableRat_Iic",
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
  "slug": "measure-stieltjesofmeasurablerat-iic--e55f507ca979536dbb3e06f5",
  "source": {
    "blob": "4e73bd687c636dd9b9bed90056a339a400e2080d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 491,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e55f507ca979536dbb3e06f50a51ed81591b27691a2acab5925a93d9f41e2fc0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a8b5327-ec0a-3743-806d-ef0cfdbf268c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_stieltjesOfMeasurableRat_Iic (hf : Measurable f) (a : α) (x : ℝ) :
    (stieltjesOfMeasurableRat f hf a).measure (Iic x)
      = ENNReal.ofReal (stieltjesOfMeasurableRat f hf a x) :=
  IsMeasurableRatCDF.measure_stieltjesFunction_Iic _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e73bd687c636dd9b9bed90056a339a400e2080d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
