# normalizeXYZV1_preserves_channelBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80906f34b81ce137f1e5e2b3e8723483c3b84f2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 488,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e76483c-02a0-7b3c-2702-80f6c36a90c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2681acb8-e2b1-a6d1-e696-68c85a717e5f",
  "kind": "theorem",
  "lexical_name": "normalizeXYZV1_preserves_channelBounds",
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
  "slug": "normalizexyzv1-preserves-channelbounds--f076edb922b3e8f761073f8f",
  "source": {
    "blob": "80906f34b81ce137f1e5e2b3e8723483c3b84f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 488,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f076edb922b3e8f761073f8f9e82e40974e27a032a0b89c25790fe7ad1064755",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2681acb8-e2b1-a6d1-e696-68c85a717e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizeXYZV1_preserves_channelBounds
    (raw : RawXYZ) (xyz : FixedXYZ xyzFormatV1)
    (_hnormalized : normalizeXYZV1 raw = some xyz) :
    InRawRange xyzFormatV1 xyz.x.raw ∧
      InRawRange xyzFormatV1 xyz.y.raw ∧
      InRawRange xyzFormatV1 xyz.z.raw := by
  exact ⟨xyz.x.inRange, xyz.y.inRange, xyz.z.inRange⟩

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80906f34b81ce137f1e5e2b3e8723483c3b84f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
