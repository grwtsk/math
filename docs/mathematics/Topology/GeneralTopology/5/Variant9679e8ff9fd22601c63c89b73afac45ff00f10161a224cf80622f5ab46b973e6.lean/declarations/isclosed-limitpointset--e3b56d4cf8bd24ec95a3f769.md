# isClosed_limitPointSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b78586eeae346e6055129544b9018162dba9af7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1266bbbd-b209-8a00-c174-87b43b19aaad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6261c5ad-61bb-414b-b7e6-43653b70ce45",
  "kind": "theorem",
  "lexical_name": "isClosed_limitPointSet",
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
  "slug": "isclosed-limitpointset--e3b56d4cf8bd24ec95a3f769",
  "source": {
    "blob": "8b78586eeae346e6055129544b9018162dba9af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3b56d4cf8bd24ec95a3f769eea1021626ac5d37b677cd1530ee1dc8f1f6f6df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6261c5ad-61bb-414b-b7e6-43653b70ce45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_limitPointSet : IsClosed limitPointSet := isClosed_setOfPred_clusterPt

/--
Weisenberg's remark, as reported on [erdosproblems.com/5](https://www.erdosproblems.com/5):
since $S$ is closed, asking that $S$ be everywhere dense in $[0,\infty)$ is the same as asking
that $S=[0,\infty)$, so `erdos_5.variants.dense` and `erdos_5.variants.limit_point_set` pose the
same question.
-/
@[category test, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/5/Variant9679e8ff9fd22601c63c89b73afac45ff00f10161a224cf80622f5ab46b973e6.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b78586eeae346e6055129544b9018162dba9af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
