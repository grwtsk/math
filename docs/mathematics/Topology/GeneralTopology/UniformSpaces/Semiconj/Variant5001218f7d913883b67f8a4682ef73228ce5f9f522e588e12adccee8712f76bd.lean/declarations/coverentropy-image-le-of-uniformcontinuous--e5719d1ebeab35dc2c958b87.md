# coverEntropy_image_le_of_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fae2bf600934e7da7a04edcb421864af1429676c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:074c0d09-2fd2-2b0f-c57d-9f0ab913f160",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:831f925d-00da-51c7-a9f0-f617de3b322f",
  "kind": "theorem",
  "lexical_name": "coverEntropy_image_le_of_uniformContinuous",
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
  "slug": "coverentropy-image-le-of-uniformcontinuous--e5719d1ebeab35dc2c958b87",
  "source": {
    "blob": "fae2bf600934e7da7a04edcb421864af1429676c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5719d1ebeab35dc2c958b8728cc6a4a7017e4a495021976bb56aec16dfb3c81",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:831f925d-00da-51c7-a9f0-f617de3b322f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coverEntropy_image_le_of_uniformContinuous [UniformSpace X] [UniformSpace Y] {S : X → X}
    {T : Y → Y} {φ : X → Y} (h : Semiconj φ S T) (h' : UniformContinuous φ) (F : Set X) :
    coverEntropy T (φ '' F) ≤ coverEntropy S F := by
  rw [coverEntropy_image_of_comap _ h F]
  exact coverEntropy_antitone S F (uniformContinuous_iff_le_comap.1 h')

/-- The entropy of `φ '' F` is at most the entropy of `F` if `φ` is uniformly continuous. This
  version uses a `liminf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant5001218f7d913883b67f8a4682ef73228ce5f9f522e588e12adccee8712f76bd.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae2bf600934e7da7a04edcb421864af1429676c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
