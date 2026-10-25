# isDefEqArgsFirstPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64726327d7497cf60c0e7f99685c8ea3e6ff0f3afe6dd6c13e09cd82d0791e99",
  "kind": "def",
  "lexical_name": "isDefEqArgsFirstPass",
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
  "slug": "isdefeqargsfirstpass--31a9127199ab908f00c09d6c",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 327,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31a9127199ab908f00c09d6c88d3f244d90799dccb229cca89f81dbb677de750",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64726327d7497cf60c0e7f99685c8ea3e6ff0f3afe6dd6c13e09cd82d0791e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isDefEqArgsFirstPass
    (paramInfo : Array ParamInfo) (args₁ args₂ : Array Expr) : MetaM DefEqArgsFirstPassResult := do
  let mut postponedImplicit := #[]
  let mut postponedHO := #[]
  for h : i in *...paramInfo.size do
    let info := paramInfo[i]
    let a₁ := args₁[i]!
    let a₂ := args₂[i]!
    if info.dependsOnHigherOrderOutParam || info.higherOrderOutParam then
      trace[Meta.isDefEq] "found messy {a₁} =?= {a₂}"
      postponedHO := postponedHO.push i
    else if info.isExplicit then
      if info.isProp then
        unless ← isAbstractedUnassignedMVar a₁ <||> isAbstractedUnassignedMVar a₂ do
          -- Skip expensive unification problem that is likely solved
          -- using proof irrelevance.  We already know that `a₁` and
          -- `a₂` have the same type, so they're defeq in any case.
          -- See comment at `isAbstractedUnassignedMVar`.
          continue
      unless (← Meta.isExprDefEqAux a₁ a₂) do
        return .failed
    else if (← isEtaUnassignedMVar a₁ <||> isEtaUnassignedMVar a₂) then
      unless (← Meta.isExprDefEqAux a₁ a₂) do
        return .failed
    else
      if info.isProp then
        unless ← isAbstractedUnassignedMVar a₁ <||> isAbstractedUnassignedMVar a₂ do
          -- Skip expensive unification problem that is likely solved
          -- using proof irrelevance.  We already know that `a₁` and
          -- `a₂` have the same type, so they're defeq in any case.
          -- See comment at `isAbstractedUnassignedMVar`.
          continue
      postponedImplicit := postponedImplicit.push i
  return .ok postponedImplicit postponedHO

/--
Ensure `MetaM` configuration is strong enough for checking definitional equality of
implicit and instance-implict arguments as well as assigned mvar types. Bumps transparency to at
least `.implicit`, so both `[instance_reducible]` and `[implicit_reducible]` unfold.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
