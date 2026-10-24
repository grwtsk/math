# tendsto_stieltjesOfMeasurableRat_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eda2c257-65d6-24b5-1ce3-f29de1540525",
  "kind": "lemma",
  "lexical_name": "tendsto_stieltjesOfMeasurableRat_atBot",
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
  "slug": "tendsto-stieltjesofmeasurablerat-atbot--496568f326093cfecc3d2571",
  "source": {
    "blob": "f98e2baed6cca7c73b9785b97e113d27decf38cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 474,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496568f326093cfecc3d2571adcb190ec38fc90eaa257d212a9a9812a88018df",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda2c257-65d6-24b5-1ce3-f29de1540525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_stieltjesOfMeasurableRat_atBot (hf : Measurable f) (a : α) :
    Tendsto (stieltjesOfMeasurableRat f hf a) atBot (𝓝 0) :=
  IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot _ a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98e2baed6cca7c73b9785b97e113d27decf38cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
