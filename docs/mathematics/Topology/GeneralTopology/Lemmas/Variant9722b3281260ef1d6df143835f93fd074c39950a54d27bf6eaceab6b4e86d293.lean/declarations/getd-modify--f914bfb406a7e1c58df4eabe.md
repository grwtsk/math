# getD_modify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37700197-f889-c196-d4c3-69a8c8ad72cb",
  "kind": "theorem",
  "lexical_name": "getD_modify",
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
  "slug": "getd-modify--f914bfb406a7e1c58df4eabe",
  "source": {
    "blob": "c08122314c9c40da6677a75b9c69d16e6b54572f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2371,
    "line": 2363,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f914bfb406a7e1c58df4eabe7b5f7e325dcd95949b669b3a45d7dee7c546971f",
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

Occurrence: `result:37700197-f889-c196-d4c3-69a8c8ad72cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2363–2371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem getD_modify [EquivBEq α] [LawfulHashable α] {k k' : α} {fallback : β} {f : β → β} :
    getD (modify m k f) k' fallback =
      if k == k' then
        m[k]?.map f |>.getD fallback
      else
        getD m k' fallback :=
  ExtDHashMap.Const.getD_modify

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9722b3281260ef1d6df143835f93fd074c39950a54d27bf6eaceab6b4e86d293.lean#L2363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08122314c9c40da6677a75b9c69d16e6b54572f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
