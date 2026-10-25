# GoalDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c923b2d26e9a5fdc8cc4955f0e7a20fd4bfdd67b1ce0bb4a6997dc0e025bcfa",
  "kind": "structure",
  "lexical_name": "GoalDiff",
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
  "slug": "goaldiff--ad6e35cef0516cf8876ed319",
  "source": {
    "blob": "1ed842f5d83057307e768a18d50c0e232954423e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad6e35cef0516cf8876ed31987347bac720295fb13805b5ef5500e43cff7e89d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c923b2d26e9a5fdc8cc4955f0e7a20fd4bfdd67b1ce0bb4a6997dc0e025bcfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GoalDiff where
  /-- The old goal. -/
  oldGoal : MVarId
  /-- The new goal. -/
  newGoal : MVarId
  /-- `FVarId`s that appear in the new goal, but not (or with a different type)
  in the old goal. -/
  addedFVars : Std.HashSet FVarId
  /-- `FVarId`s that appear in the old goal, but not (or with a different type)
  in the new goal. -/
  removedFVars : Std.HashSet FVarId
  /-- Is the old goal's target defeq to the new goal's target? -/
  targetChanged : Bool
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalDiff/Variant975755be019f959083d5064737e3758e62caefcd1bb119dc6c8bca2bb0ca4aac.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed842f5d83057307e768a18d50c0e232954423e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
