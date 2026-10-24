# odd_center_axisCarriers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12d82ed2af813090359f3c90581ce0c90f916569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ebc87c4-0373-6cfc-34ee-aee73e17b9bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bbac9d8-bffe-c1e6-73a5-a2abff6737c7",
  "kind": "theorem",
  "lexical_name": "odd_center_axisCarriers",
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
  "slug": "odd-center-axiscarriers--8365c870b3353d84cc85f9ac",
  "source": {
    "blob": "12d82ed2af813090359f3c90581ce0c90f916569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8365c870b3353d84cc85f9ace36a53f71fcf4054e006d69e5b40d1049ea9a32e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bbac9d8-bffe-c1e6-73a5-a2abff6737c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_center_axisCarriers (half : Nat) :
    axisCarriers (2 * half + 1) center = {oddCenterIndex half} := by
  apply axisCarriers_eq_singleton_of_cell
  · dsimp [center, oddCenterIndex]
    push_cast
    linarith
  · dsimp [center, oddCenterIndex]
    push_cast
    linarith

/-- A positive even grid has two exact center carriers on each axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant876f57ef4c56571a10626a74ddedf2ce6b5aef0f1cb544b4a4fe4725ded7c32c.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d82ed2af813090359f3c90581ce0c90f916569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
