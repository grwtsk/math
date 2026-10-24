# isClosed_right_of_isClosed_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37b8c1e46dbcf3ae72c37ccb3a3750d47563086c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:064076f5-6975-fd54-6a7c-1e966344d94e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5257846-1e19-5ac2-0fac-2b99b3297f79",
  "kind": "lemma",
  "lexical_name": "isClosed_right_of_isClosed_union",
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
  "slug": "isclosed-right-of-isclosed-union--57afe99b80f46b4e61a09643",
  "source": {
    "blob": "37b8c1e46dbcf3ae72c37ccb3a3750d47563086c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57afe99b80f46b4e61a09643ae400148fe3f4cd79ef0e31af3f3e92f5c62144c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5257846-1e19-5ac2-0fac-2b99b3297f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_right_of_isClosed_union (hst : SeparatedNhds s t) (hst' : IsClosed (s ∪ t)) :
    IsClosed t :=
  hst.symm.isClosed_left_of_isClosed_union (union_comm _ _ ▸ hst')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant7dacfeb4638974042822ced1e423db45923eeb3253bd35727a64ae6abb026022.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b8c1e46dbcf3ae72c37ccb3a3750d47563086c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
