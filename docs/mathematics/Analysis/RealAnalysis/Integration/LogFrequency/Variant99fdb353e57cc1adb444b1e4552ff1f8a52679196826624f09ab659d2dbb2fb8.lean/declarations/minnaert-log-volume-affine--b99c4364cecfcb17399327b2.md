# minnaert_log_volume_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20be53100f54bd8393ee62620d428f458a5e1bdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3805e0d6-22c2-db54-8787-6a70d03a6f77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3111688a-cc01-67fc-5fdd-01c992b5334a",
  "kind": "theorem",
  "lexical_name": "minnaert_log_volume_affine",
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
  "slug": "minnaert-log-volume-affine--b99c4364cecfcb17399327b2",
  "source": {
    "blob": "20be53100f54bd8393ee62620d428f458a5e1bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b99c4364cecfcb17399327b25fa7a9928624eadaedf4f37087c37fe037f89100",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3111688a-cc01-67fc-5fdd-01c992b5334a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minnaert_log_volume_affine (parameters : Parameters) (reference coordinate : ℝ)
    (positive : 0 < reference) :
    Real.log (minnaertVolumeFromHertz parameters (frequencyFromLog reference coordinate) /
      minnaertVolumeFromHertz parameters reference) = -3 * coordinate := by
  rw [minnaert_log_volume_ratio parameters reference _ positive
    (frequencyFromLog_pos reference coordinate positive),
    logFrequency_fromLog reference coordinate positive]

/-- The negative-three slope is also the actual derivative in logarithmic coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20be53100f54bd8393ee62620d428f458a5e1bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
