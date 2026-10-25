# internalizeAppLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:159ef07ffb8b98f02b92ccc9aad01ab9945930cb3c6a9d88af247797a10638be",
  "kind": "def",
  "lexical_name": "internalizeAppLit",
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
  "slug": "internalizeapplit--68b02d69aee170341c829b9d",
  "source": {
    "blob": "54d943aebbad215d727cdaf18f258cb43887aea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 582,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b02d69aee170341c829b9d9492136039aa664d4198526318bd0419a392e791",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:159ef07ffb8b98f02b92ccc9aad01ab9945930cb3c6a9d88af247797a10638be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def internalizeAppLit (e : Expr) : CCM Unit := do
  if ← isInterpretedValue e then
    mkEntry e true
    if (← get).values then return -- we treat values as atomic symbols
  else
    mkEntry e false
    if (← get).values && isValue e then return -- we treat values as atomic symbols
  -- At this point we should have handled a literal; otherwise we fail.
  unless e.isApp do return
  if let some (_, lhs, rhs) ← e.relSidesIfSymm? then
    internalizeCore lhs (some e)
    internalizeCore rhs (some e)
    addOccurrence e lhs true
    addOccurrence e rhs true
    addSymmCongruenceTable e
  else if (← mkCCCongrTheorem e).isSome then
    let fn := e.getAppFn
    let apps := e.getAppApps
    guard (apps.size > 0)
    guard (apps.back! == e)
    let mut pinfo : List ParamInfo := []
    let state ← get
    if state.ignoreInstances then
      pinfo := (← getFunInfoNArgs fn apps.size).paramInfo.toList
    if state.hoFns.isSome && fn.isConst && !(state.hoFns.iget.contains fn.constName) then
      for h : i in [:apps.size] do
        let arg := apps[i].appArg!
        addOccurrence e arg false
        if pinfo.head?.any ParamInfo.isInstImplicit then
          -- We do not recurse on instances when `(← get).config.ignoreInstances` is `true`.
          mkEntry arg false
          propagateInstImplicit arg
        else
          internalizeCore arg (some e)
        unless pinfo.isEmpty do
          pinfo := pinfo.tail
      internalizeCore fn (some e)
      addOccurrence e fn false
      setFO e
      addCongruenceTable e
    else
      -- Expensive case where we store a quadratic number of occurrences,
      -- as described in the paper "Congruence Closure in Internsional Type Theory"
      for h : i in [:apps.size] do
        let curr := apps[i]
        let .app currFn currArg := curr | unreachable!
        if i < apps.size - 1 then
          mkEntry curr false
        for h : j in [i:apps.size] do
          addOccurrence apps[j] currArg false
          addOccurrence apps[j] currFn false
        if pinfo.head?.any ParamInfo.isInstImplicit then
          -- We do not recurse on instances when `(← get).config.ignoreInstances` is `true`.
          mkEntry currArg false
          mkEntry currFn false
          propagateInstImplicit currArg
        else
          internalizeCore currArg (some e)
          mkEntry currFn false
        unless pinfo.isEmpty do
          pinfo := pinfo.tail
        addCongruenceTable curr
  applySimpleEqvs e

/-- Internalize `e` so that the congruence closure can deal with the given expression. Don't forget
to process the tasks in the `todo` field later. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d943aebbad215d727cdaf18f258cb43887aea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
