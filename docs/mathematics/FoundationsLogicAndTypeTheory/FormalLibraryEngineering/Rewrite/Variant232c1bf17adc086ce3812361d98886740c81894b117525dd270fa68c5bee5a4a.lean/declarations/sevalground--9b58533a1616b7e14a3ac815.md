# sevalGround

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:141ad26cfd8e227aa7829678e6b246f42b1615b0899dbdc4ebfeba446f646a54",
  "kind": "def",
  "lexical_name": "sevalGround",
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
  "slug": "sevalground--9b58533a1616b7e14a3ac815",
  "source": {
    "blob": "7823621f1509570174669a50ff380557ce014052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 437,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b58533a1616b7e14a3ac815631454f8e12f85eedadfce08054c94c48efe62ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:141ad26cfd8e227aa7829678e6b246f42b1615b0899dbdc4ebfeba446f646a54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sevalGround : Simproc := fun e => do
  -- `e` is not a ground term.
  unless !e.hasExprMVar && !e.hasFVar do return .continue
  -- Check whether `e` is a constant application
  let f := e.getAppFn
  let .const declName lvls := f | return .continue
  -- If declaration has been marked to not be unfolded, return none.
  let ctx ← getContext
  if ctx.simpTheorems.isErased (.decl declName) then return .continue
  -- Matcher applications should have been reduced before we get here.
  if (← isMatcher declName) then return .continue
  if let some eqns ← withDefault <| getEqnsFor? declName then
    -- `declName` has equation theorems associated with it.
    for eqn in eqns do
      -- TODO: cache SimpTheorem to avoid calls to `isRflTheorem`
      if let some result ← Simp.tryTheorem? e { origin := .decl eqn, proof := mkConst eqn, rfl := (← isRflTheorem eqn), backwardRfl := (← isBackwardRflTheorem eqn) } then
        trace[Meta.Tactic.simp.ground] "unfolded, {e} => {result.expr}"
        return .visit result
    return .continue
  -- `declName` does not have equation theorems associated with it.
  if e.isConst then
    -- We don't unfold constants that take arguments
    if let .forallE .. ← whnfD (← inferType e) then
      return .continue
  let info ← getConstInfo declName
  unless info.hasValue && info.levelParams.length == lvls.length do return .continue
  let fBody ← instantiateValueLevelParams info lvls
  let eNew := fBody.betaRev e.getAppRevArgs (useZeta := true)
  trace[Meta.Tactic.simp.ground] "delta, {e} => {eNew}"
  return .visit { expr := eNew }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7823621f1509570174669a50ff380557ce014052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
