# aemeasurable_restrict_iff_comap_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e39971a3f1c650fbdda45f1c71d567b539774219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58593181-6c7b-dd65-0290-79c1fbe5f6ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2864d18-5465-37bf-436e-675b5f78162c",
  "kind": "theorem",
  "lexical_name": "aemeasurable_restrict_iff_comap_subtype",
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
  "slug": "aemeasurable-restrict-iff-comap-subtype--1beda7689da7517bfb298b0f",
  "source": {
    "blob": "e39971a3f1c650fbdda45f1c71d567b539774219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 278,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1beda7689da7517bfb298b0ff0cc8bd07bfd6a90c978f2a4072542c53bc6da2e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2864d18-5465-37bf-436e-675b5f78162c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_restrict_iff_comap_subtype {s : Set α} (hs : MeasurableSet s) {μ : Measure α}
    {f : α → β} : AEMeasurable f (μ.restrict s) ↔ AEMeasurable (f ∘ (↑) : s → β) (comap (↑) μ) := by
  rw [← map_comap_subtype_coe hs, (MeasurableEmbedding.subtype_coe hs).aemeasurable_map_iff]
#align ae_measurable_restrict_iff_comap_subtype aemeasurable_restrict_iff_comap_subtype

@[to_additive] -- @[to_additive (attr := simp)] -- Porting note: simp can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39971a3f1c650fbdda45f1c71d567b539774219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
