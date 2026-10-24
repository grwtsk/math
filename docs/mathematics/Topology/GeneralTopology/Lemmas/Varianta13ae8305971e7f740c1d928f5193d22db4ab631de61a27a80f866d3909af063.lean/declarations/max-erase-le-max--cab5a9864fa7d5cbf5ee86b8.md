# max?_erase_le_max?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea5bb1fd4c8ee24d4df754bb9fe108105d7fd473",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1678,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4aca40e7-c12d-0a8f-9dfe-eb97cfe8609d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4999ea35-3040-578d-e556-d4df5a7ce118",
  "kind": "theorem",
  "lexical_name": "max?_erase_le_max?",
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
  "slug": "max-erase-le-max--cab5a9864fa7d5cbf5ee86b8",
  "source": {
    "blob": "ea5bb1fd4c8ee24d4df754bb9fe108105d7fd473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1684,
    "line": 1678,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cab5a9864fa7d5cbf5ee86b8bff72aeb76fc40bd69837ed743181e4e156abf92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4999ea35-3040-578d-e556-d4df5a7ce118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1678–1684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem max?_erase_le_max? [TransCmp cmp] {k km kme} :
    (hkme : (t.erase k |>.max?) = some kme) →
    (hkm : (t.max?.get <|
      isSome_max?_of_isSome_max?_erase <| hkme ▸ Option.isSome_some) = km) →
    cmp kme km |>.isLE :=
  ExtTreeMap.maxKey?_erase_le_maxKey?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean#L1678).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5bb1fd4c8ee24d4df754bb9fe108105d7fd473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
