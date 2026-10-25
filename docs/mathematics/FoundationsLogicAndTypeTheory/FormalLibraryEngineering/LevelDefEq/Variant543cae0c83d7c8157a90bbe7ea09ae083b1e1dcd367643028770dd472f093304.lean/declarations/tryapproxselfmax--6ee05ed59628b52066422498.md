# tryApproxSelfMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6468b5c19129a6328c7d14111c439f592298edbc0b3fa2ce98071eccdf24f80a",
  "kind": "def",
  "lexical_name": "tryApproxSelfMax",
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
  "slug": "tryapproxselfmax--6ee05ed59628b52066422498",
  "source": {
    "blob": "a132a66f99f5b4590b5de5c3d7eca5dc970a577a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ee05ed59628b52066422498d6a4414fd1dc408d865efa049b8694c677a450fd",
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

Occurrence: `declaration:6468b5c19129a6328c7d14111c439f592298edbc0b3fa2ce98071eccdf24f80a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryApproxSelfMax (u v : Level) : MetaM Bool := do
  match v with
  | .max v' (.mvar mvarId) => solve v' mvarId
  | .max (.mvar mvarId) v' => solve v' mvarId
  | _ => return false
where
  solve (v' : Level) (mvarId : LMVarId) : MetaM Bool := do
    if u == v' then
      trace[Meta.isLevelDefEq.step] "tryApproxSelfMax {mkLevelMVar mvarId} := {u}"
      assignLevelMVar mvarId u
      return true
    else
      return false

/--
Returns true if `u` of the form `max u₁ u₂` and `v` of the form `max u₁ ?w` (or variant).
That is, we solve `max u₁ u₂ =?= max u₁ ?v` as `?v := u₂`.
This is an approximation. For example, we ignore the solution `?w := max u₁ u₂`.
-/
-- TODO: investigate whether we need to improve this approximation.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variant543cae0c83d7c8157a90bbe7ea09ae083b1e1dcd367643028770dd472f093304.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a132a66f99f5b4590b5de5c3d7eca5dc970a577a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
