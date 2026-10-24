# NullMeasurableSet.measurable_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "093d65b73a744a094182289d1e3573a3995b8d4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 463,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7964612-3be9-d8e7-a5de-ebb4a9a0d67b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc931fc5-5ee8-a050-6620-bae102476bf0",
  "kind": "theorem",
  "lexical_name": "NullMeasurableSet.measurable_of_complete",
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
  "slug": "nullmeasurableset-measurable-of-complete--7996c9319f2090f5dcb4882b",
  "source": {
    "blob": "093d65b73a744a094182289d1e3573a3995b8d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 463,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7996c9319f2090f5dcb4882b830611f72aac04743da95ec1281376a34700e734",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc931fc5-5ee8-a050-6620-bae102476bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NullMeasurableSet.measurable_of_complete (hs : NullMeasurableSet s μ) [μ.IsComplete] :
    MeasurableSet s :=
  diff_diff_cancel_left (subset_toMeasurable μ s) ▸
    (measurableSet_toMeasurable _ _).diff
      (measurableSet_of_null (ae_le_set.1 <|
        EventuallyEq.le (NullMeasurableSet.toMeasurable_ae_eq hs)))
#align measure_theory.null_measurable_set.measurable_of_complete MeasureTheory.NullMeasurableSet.measurable_of_complete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `093d65b73a744a094182289d1e3573a3995b8d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
