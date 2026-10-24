# get!_insertMany_list_of_mem

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
      "line": 966,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1449ddae-c3ae-b5cd-fdac-4887b5f90a1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f20eaf9-4945-62d1-7acd-891e334fb65b",
  "kind": "theorem",
  "lexical_name": "get!_insertMany_list_of_mem",
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
  "slug": "get-insertmany-list-of-mem--d20a3734a6e064b8c3b4b7c9",
  "source": {
    "blob": "ea5bb1fd4c8ee24d4df754bb9fe108105d7fd473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 970,
    "line": 966,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20a3734a6e064b8c3b4b7c964a64d73573ddb9a39d3efee4e7d2544b14a553f",
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

Occurrence: `result:2f20eaf9-4945-62d1-7acd-891e334fb65b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 966–970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get!_insertMany_list_of_mem [TransCmp cmp]
    [Inhabited α] {l : List α} {k : α} (mem : k ∈ t):
    get! (insertMany t l) k = get! t k :=
  ExtTreeMap.getKey!_insertManyIfNewUnit_list_of_mem mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Varianta13ae8305971e7f740c1d928f5193d22db4ab631de61a27a80f866d3909af063.lean#L966).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5bb1fd4c8ee24d4df754bb9fe108105d7fd473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
