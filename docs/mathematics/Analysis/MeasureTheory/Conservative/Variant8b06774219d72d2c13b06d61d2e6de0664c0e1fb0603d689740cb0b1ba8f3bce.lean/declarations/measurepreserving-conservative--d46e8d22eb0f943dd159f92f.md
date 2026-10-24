# MeasurePreserving.conservative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afbae1cda770943e280ecd4c3d7c776077f7392a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39e08b51-dd3a-ca6c-e944-d71c12098fe7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7257b261-63d1-e561-f6e3-7a9fad1ec90d",
  "kind": "theorem",
  "lexical_name": "MeasurePreserving.conservative",
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
  "slug": "measurepreserving-conservative--d46e8d22eb0f943dd159f92f",
  "source": {
    "blob": "afbae1cda770943e280ecd4c3d7c776077f7392a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d46e8d22eb0f943dd159f92fb7a0d9e7d36df55963f4de9a6c8a55c5a5303938",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7257b261-63d1-e561-f6e3-7a9fad1ec90d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem MeasurePreserving.conservative [IsFiniteMeasure μ] (h : MeasurePreserving f μ μ) :
    Conservative f μ :=
  ⟨h.quasiMeasurePreserving, fun _ hsm h0 => h.exists_mem_image_mem hsm h0⟩
#align measure_theory.measure_preserving.conservative MeasureTheory.MeasurePreserving.conservative

namespace Conservative

/-- The identity map is conservative w.r.t. any measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant8b06774219d72d2c13b06d61d2e6de0664c0e1fb0603d689740cb0b1ba8f3bce.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbae1cda770943e280ecd4c3d7c776077f7392a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
