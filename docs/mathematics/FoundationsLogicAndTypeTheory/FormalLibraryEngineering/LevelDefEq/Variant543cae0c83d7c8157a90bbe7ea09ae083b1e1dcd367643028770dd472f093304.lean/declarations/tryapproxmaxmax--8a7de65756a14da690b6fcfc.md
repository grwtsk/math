# tryApproxMaxMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59dc978f7e70e515e3ced21241897d4b193b23dbd97243015e6c0b93dcc524f5",
  "kind": "def",
  "lexical_name": "tryApproxMaxMax",
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
  "slug": "tryapproxmaxmax--8a7de65756a14da690b6fcfc",
  "source": {
    "blob": "a132a66f99f5b4590b5de5c3d7eca5dc970a577a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a7de65756a14da690b6fcfc4095441d4b7bb8fdece1968b56e883bb91a7bae2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59dc978f7e70e515e3ced21241897d4b193b23dbd97243015e6c0b93dcc524f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryApproxMaxMax (u v : Level) : MetaM Bool := do
  match u, v with
  | .max u₁ u₂, .max v' (.mvar mvarId) => solve u₁ u₂ v' mvarId
  | .max u₁ u₂, .max (.mvar mvarId) v' => solve u₁ u₂ v' mvarId
  | _, _ => return false
where
  solve (u₁ u₂ v' : Level) (mvarId : LMVarId) : MetaM Bool := do
    if u₁ == v' then
      trace[Meta.isLevelDefEq.step] "tryApproxMaxMax {mkLevelMVar mvarId} := {u₂}"
      assignLevelMVar mvarId u₂
      return true
    else if u₂ == v' then
      trace[Meta.isLevelDefEq.step] "tryApproxMaxMax {mkLevelMVar mvarId} := {u₁}"
      assignLevelMVar mvarId u₁
      return true
    else return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a132a66f99f5b4590b5de5c3d7eca5dc970a577a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
