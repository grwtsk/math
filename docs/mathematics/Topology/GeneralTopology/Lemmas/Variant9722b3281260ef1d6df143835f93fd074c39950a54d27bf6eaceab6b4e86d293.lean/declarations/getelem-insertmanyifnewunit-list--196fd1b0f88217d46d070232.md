# getElem?_insertManyIfNewUnit_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2112aeb5-d2bb-8d90-b52b-f21fe3bacc6b",
  "kind": "theorem",
  "lexical_name": "getElem?_insertManyIfNewUnit_list",
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
  "slug": "getelem-insertmanyifnewunit-list--196fd1b0f88217d46d070232",
  "source": {
    "blob": "c08122314c9c40da6677a75b9c69d16e6b54572f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 992,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:196fd1b0f88217d46d07023219290a7b37c38c75677c1429b4452180f94a6aee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2112aeb5-d2bb-8d90-b52b-f21fe3bacc6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 992–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem?_insertManyIfNewUnit_list [EquivBEq α] [LawfulHashable α]
    {l : List α} {k : α} :
    (insertManyIfNewUnit m l)[k]? =
      if k ∈ m ∨ l.contains k then some () else none :=
  ExtDHashMap.Const.get?_insertManyIfNewUnit_list

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean#L992).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08122314c9c40da6677a75b9c69d16e6b54572f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
