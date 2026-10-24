# aemeasurable_uIoc_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "638833aedec92d04bed42563f925922e09dcf524",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fce6cf8-211b-8a4a-5a51-496ff39e116f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ec57f5c-22b3-9cc1-0f9f-f25737ff5c1c",
  "kind": "theorem",
  "lexical_name": "aemeasurable_uIoc_iff",
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
  "slug": "aemeasurable-uioc-iff--49b73a35f4d726593f984a4d",
  "source": {
    "blob": "638833aedec92d04bed42563f925922e09dcf524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 241,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49b73a35f4d726593f984a4d5282c5323590273f943b884152326541e0d193a7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec57f5c-22b3-9cc1-0f9f-f25737ff5c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_uIoc_iff [LinearOrder α] {f : α → β} {a b : α} :
    (AEMeasurable f <| μ.restrict <| Ι a b) ↔
      (AEMeasurable f <| μ.restrict <| Ioc a b) ∧ (AEMeasurable f <| μ.restrict <| Ioc b a) := by
  rw [uIoc_eq_union, aemeasurable_union_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638833aedec92d04bed42563f925922e09dcf524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
