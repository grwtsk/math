# stronglyMeasurable_stieltjesOfMeasurableRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8a1468d-d513-bd58-ee79-63c1c6f81c57",
  "kind": "lemma",
  "lexical_name": "stronglyMeasurable_stieltjesOfMeasurableRat",
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
  "slug": "stronglymeasurable-stieltjesofmeasurablerat--210431e0b6c75796a1c6ef90",
  "source": {
    "blob": "4e73bd687c636dd9b9bed90056a339a400e2080d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 485,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:210431e0b6c75796a1c6ef90fe8c550a576ddcd01110141c20a9c8cf876468ac",
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

Occurrence: `result:b8a1468d-d513-bd58-ee79-63c1c6f81c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stronglyMeasurable_stieltjesOfMeasurableRat (hf : Measurable f) (x : ℝ) :
    StronglyMeasurable fun a ↦ stieltjesOfMeasurableRat f hf a x :=
  IsMeasurableRatCDF.stronglyMeasurable_stieltjesFunction _ x

section Measure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e73bd687c636dd9b9bed90056a339a400e2080d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
