# mkPreResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa21b3c5c16ab57dc6ab6e49fad5044e2c6f6087151d922c6aa25d3c758901b",
  "kind": "def",
  "lexical_name": "mkPreResult",
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
  "slug": "mkpreresult--b8a262dfef48bd1a89169788",
  "source": {
    "blob": "84d34aaf97dbd8a615cd6aa69750319ace350e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1044,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8a262dfef48bd1a89169788da8314ab667391c39780f4c779b0c1d95374322f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa21b3c5c16ab57dc6ab6e49fad5044e2c6f6087151d922c6aa25d3c758901b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1044–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkPreResult : UnifyM MkPreResultResult := do
  let us ← (← get).uAssignment.toList.mapM fun
    | some val => pure val
    | none => mkFreshLevelMVar
  let pattern := (← read).pattern
  let varTypes := pattern.varTypes
  let eAssignment := (← get).eAssignment
  let tPending := (← get).tPending
  let mut args := #[]
  let mut mvarsToCheckType := #[]
  let mut instMVars := #[]
  for h : i in *...eAssignment.size do
    if let .some val := eAssignment[i] then
      if tPending.contains i then
        let type := varTypes[i]!
        let type ← instantiateLevelParamsS type pattern.levelParams us
        let type ← instantiateRevBetaS type args
        let valType ← inferType val
        -- **Note**: we have to use the default `isDefEq` because the type of `val`
        -- is not necessarily normalized.
        unless (← isDefEqTypes type valType) do
          return .failed
      args := args.push val
    else
      let type := varTypes[i]!
      let type ← instantiateLevelParamsS type pattern.levelParams us
      let type ← instantiateRevBetaS type args
      if pattern.isInstance i then
        if let .some val ← trySynthInstance type then
          args := args.push (← shareCommon val)
          continue
      let mvar ← mkFreshExprMVar type
      let mvar ← shareCommon mvar
      if pattern.isInstance i then
        -- Synthesis failed above; record the placeholder so `main` can verify it gets resolved.
        instMVars := instMVars.push mvar.mvarId!
      if let some mask := (← read).pattern.checkTypeMask? then
        if mask[i]! then
          mvarsToCheckType := mvarsToCheckType.push mvar.mvarId!
      args := args.push mvar
  modify fun s => { s with args, us }
  return .success mvarsToCheckType instMVars

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean#L1044).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d34aaf97dbd8a615cd6aa69750319ace350e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
