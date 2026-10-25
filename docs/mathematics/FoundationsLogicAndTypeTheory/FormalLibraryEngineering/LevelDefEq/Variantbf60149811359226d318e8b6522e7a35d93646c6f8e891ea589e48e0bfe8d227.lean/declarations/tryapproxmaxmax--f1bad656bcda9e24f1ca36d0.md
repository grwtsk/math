# tryApproxMaxMax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:294b88f7c958ae1b33725c39cc23e6d52b16d4616391209857a8e87ab83a4056",
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
  "slug": "tryapproxmaxmax--f1bad656bcda9e24f1ca36d0",
  "source": {
    "blob": "637f855c5e7ffc15a48f1e6c47d932f250e0dfa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1bad656bcda9e24f1ca36d0a4965757ef2c740a20bfb834f772fdbf3815010c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:294b88f7c958ae1b33725c39cc23e6d52b16d4616391209857a8e87ab83a4056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `637f855c5e7ffc15a48f1e6c47d932f250e0dfa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
