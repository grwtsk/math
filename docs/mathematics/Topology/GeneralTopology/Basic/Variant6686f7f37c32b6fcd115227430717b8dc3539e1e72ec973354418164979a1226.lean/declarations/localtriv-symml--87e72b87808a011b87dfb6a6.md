# localTriv_symmL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 782,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0da737e-bd22-0fe8-f336-614d53ab5a9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31a41d7d-993f-93f2-9927-23d827353784",
  "kind": "theorem",
  "lexical_name": "localTriv_symmL",
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
  "slug": "localtriv-symml--87e72b87808a011b87dfb6a6",
  "source": {
    "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 782,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e72b87808a011b87dfb6a6c9924ae8702c8062f7bec9b899ea433cf5f70ac2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31a41d7d-993f-93f2-9927-23d827353784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localTriv_symmL {b : B} (hb : b ∈ (Z.localTriv i).baseSet) :
    (Z.localTriv i).symmL R b = Z.coordChange i (Z.indexAt b) b := by
  ext1 v
  rw [(Z.localTriv i).symmL_apply hb, (Z.localTriv i).symm_apply]
  exacts [rfl, hb]

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da578940fc9a46d454b8e5d1bd13861e293fa597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
