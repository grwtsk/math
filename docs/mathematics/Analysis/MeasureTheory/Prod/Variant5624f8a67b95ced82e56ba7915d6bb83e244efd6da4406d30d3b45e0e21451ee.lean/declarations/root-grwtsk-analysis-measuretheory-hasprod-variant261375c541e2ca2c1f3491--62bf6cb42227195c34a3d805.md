# _root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.Integrable.prod_vectorMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2237850-da1d-eb0a-3630-882b269ccd97",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.Integrable.prod_vectorMeasure",
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
  "slug": "root-grwtsk-analysis-measuretheory-hasprod-variant261375c541e2ca2c1f3491--62bf6cb42227195c34a3d805",
  "source": {
    "blob": "ccbd4a15c5845619bac6d506fe64148062840dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 219,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62bf6cb42227195c34a3d8052977de4532fb7b171398f700f36aa443791c1a2a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2237850-da1d-eb0a-3630-882b269ccd97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.HasProd.Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.MeasureTheory.Integrable.prod_vectorMeasure
    [CompleteSpace G] [IsFiniteMeasure μ.variation] [IsFiniteMeasure ν.variation]
    {f : X × Y → H} (hf : Integrable f (μ.variation.prod ν.variation)) :
    (μ.prod ν B).Integrable f :=
  Integrable.of_measure_le_smul (by simp) variation_prod_le hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant5624f8a67b95ced82e56ba7915d6bb83e244efd6da4406d30d3b45e0e21451ee.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccbd4a15c5845619bac6d506fe64148062840dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
