# processVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09b4af251ea47ff2ca637485a0e4c2fc176e6e4e1a94482ba6486a6447aba4a8",
  "kind": "def",
  "lexical_name": "processVar",
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
  "slug": "processvar--af74bc3e2ebb0ab9195674f1",
  "source": {
    "blob": "8c050938a5134c7c12942150d1c4136f35332e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 393,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af74bc3e2ebb0ab9195674f10aff5cc067942327221b8186a2a0268eea599955",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09b4af251ea47ff2ca637485a0e4c2fc176e6e4e1a94482ba6486a6447aba4a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processVar (x : Var) : SearchM Unit := do
  if (← eliminated x) then
    trace[grind.debug.lia.search] "eliminated: {← getVar x}"
    /-
    Variable has been eliminated, and will be assigned later after we have assigned
    variables that have not been eliminated.
    -/
    skipAssignment x
    return ()
  -- Solution space for divisibility constraint is `x = k*d + b`
  let dvd? := (← get').dvds[x]!
  let dvdSol ← if let some c := dvd? then
    if let some solutions ← c.getSolutions? then
      pure solutions
    else
      trace[grind.debug.lia.search] "dvd conflict: {← c.pp}"
      resolveDvdConflict c
      return ()
  else
    pure {}
  let lower? ← getBestLower? x dvd?
  let upper? ← getBestUpper? x dvd?
  let diseqVals ← getDiseqValues x
  match lower?, upper? with
  | none, none =>
    let v := dvdSol.geAvoiding 0 diseqVals
    setAssignment x v
  | some (lower, _), none =>
    let lower := lower.ceil
    let v := dvdSol.geAvoiding lower diseqVals
    trace[grind.debug.lia.search] "{lower} ≤ {quoteIfArithTerm (← getVar x)} := {v}"
    setAssignment x v
  | none, some (upper, _) =>
    let upper := upper.floor
    let v := dvdSol.leAvoiding upper diseqVals
    trace[grind.debug.lia.search] "{quoteIfArithTerm (← getVar x)} := {v} ≤ {upper}"
    setAssignment x v
  | some (lower, c₁), some (upper, c₂) =>
    trace[grind.debug.lia.search] "{lower} ≤ {lower.ceil} ≤ {quoteIfArithTerm (← getVar x)} ≤ {upper.floor} ≤ {upper}"
    if lower > upper then
      let .true ← resolveRealLowerUpperConflict c₁ c₂
        | throwError "`grind` internal error, conflict resolution failed"
      return ()
    -- `lower ≤ upper` here
    if lower.ceil > upper.floor then
      if (← resolveRealLowerUpperConflict c₁ c₂) then
        -- Resolved conflict using "real" shadow
        return ()
      if !(← isApprox) then
        resolveCooper c₁ c₂
        return ()
    let r := findIntVal dvdSol lower.ceil upper.floor diseqVals
    if let .found v := r then
      setAssignment x v
      return ()
    if (← isApprox) then
      setImprecise
      if lower < upper then
        setAssignment x <| findRatVal lower upper diseqVals
      else if let some c := findRatDiseq? lower diseqVals then
        resolveRatDiseq c₁ c
      else
        setAssignment x lower
    else
      match r with
      | .dvd => resolveCooperDvd c₁ c₂ dvd?.get!
      | .diseq c => resolveCooperDiseq c c₂ dvd?
      | _ => unreachable!

/-- Returns `true` if we already have a complete assignment / model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c050938a5134c7c12942150d1c4136f35332e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
