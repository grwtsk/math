# measure_preimage_of_map_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d00bab6ae84f5fc534ca45b0214f5d5c304fe918",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88ef9ff2-c3d9-7c40-a64a-526ef808dc34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57695b5d-fb56-ef67-cf9c-5539e8d81fd9",
  "kind": "lemma",
  "lexical_name": "measure_preimage_of_map_eq_self",
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
  "slug": "measure-preimage-of-map-eq-self--75f45548fcbc4d6a8071c3ac",
  "source": {
    "blob": "d00bab6ae84f5fc534ca45b0214f5d5c304fe918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f45548fcbc4d6a8071c3ac0a6a1030b8cd682203a01dee3d52c00f0b33d330",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57695b5d-fb56-ef67-cf9c-5539e8d81fd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_preimage_of_map_eq_self {f : α → α} (hf : map f μ = μ)
    {s : Set α} (hs : NullMeasurableSet s μ) : μ (f ⁻¹' s) = μ s := by
  if hfm : AEMeasurable f μ then
    rw [← map_apply₀ hfm, hf]
    rwa [hf]
  else
    rw [map_of_not_aemeasurable hfm] at hf
    simp [← hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Map/Variant3c7fb458eece85551c9b7bd28955a517e14f4bee77934b8b001440a57b6f7f71.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d00bab6ae84f5fc534ca45b0214f5d5c304fe918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
