# processVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0289fc604b42b15fc92bdd7a881734e595e97badf2426a586d2a0eec64acbdc0",
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
  "slug": "processvar--2f9dedaf9f571db0c8cc172d",
  "source": {
    "blob": "a1fe689d568d644aedb2fdc62327d35c204c2bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f9dedaf9f571db0c8cc172d215ea93a7284210dfa0b4658b7885bbcd30096a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0289fc604b42b15fc92bdd7a881734e595e97badf2426a586d2a0eec64acbdc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processVar (x : Var) : SearchM Unit := do
  let lower? ← getBestLower? x
  let upper? ← getBestUpper? x
  let diseqVals ← getDiseqValues x
  -- TODO: sanity check for variable `One.one`.
  -- Recall that `One.one` must be the smallest variable.
  match lower?, upper? with
  | none, none =>
    let v := geAvoiding 0 diseqVals
    trace[grind.debug.linarith.search] "v: {v}, diseqs: {diseqVals.map (·.1)}"
    setAssignment x v
  | some (lower, _), none =>
    let v := geAvoiding (lower.ceil + 1) diseqVals
    trace[grind.debug.linarith.search] "v: {v}, lower: {lower}, diseqs: {diseqVals.map (·.1)}"
    setAssignment x v
  | none, some (upper, _) =>
    let v := geAvoiding (upper.floor - 1) diseqVals
    trace[grind.debug.linarith.search] "v: {v}, upper: {upper}, diseqs: {diseqVals.map (·.1)}"
    setAssignment x v
  | some (lower, c₁), some (upper, c₂) =>
    if lower > upper || (lower == upper && (c₁.strict || c₂.strict)) then
      resolveLowerUpperConflict c₁ c₂
    else if lower == upper then
      if let some d := findDiseq? lower diseqVals then
        /-
        Remark: We are currently eagerly splitting `a = b` into `a ≤ b` and `b ≤ a`.
        Thus, even if `c₁.p == -c₂.p`, we can only combine them back into an equality
        if the order is partial.
        -- TODO: eliminate variables using equations eagerly like we do in the cutsat module.
        -/
        if (← isLinearOrder) then
          resolveLowerDiseqConflict c₁ d
        else
          -- TODO: if we have a partial order and `c₁.p == -c₂.p`,
          -- we can generate an equality and resolve it with the disequality.
          let diseq ← d.denoteExpr
          -- Remark: we filter duplicates before displaying diagnostics to users
          modifyStruct fun s => { s with ignored := s.ignored.push diseq }
          trace[grind.debug.linarith.search] "v: {lower}, lower, upper: {lower}, **ignore diseq**, diseqs: {diseqVals.map (·.1)}"
          setAssignment x lower
      else
        trace[grind.debug.linarith.search] "v: {lower}, lower, upper: {lower}, diseqs: {diseqVals.map (·.1)}"
        setAssignment x lower
    else
      let v := if let some v := findInt? lower c₁.strict upper c₂.strict diseqVals then
        v
      else
        findRat lower upper diseqVals
      trace[grind.debug.linarith.search] "v: {v}, lower: {lower}, upper: {upper}, diseqs: {diseqVals.map (·.1)}"
      setAssignment x v

/-- Returns `true` if we already have a complete assignment / model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant067b8145f73fdb3c1d22d0c705bd6563ec178ce7131e07923d37f8d1595bc84a.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1fe689d568d644aedb2fdc62327d35c204c2bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
