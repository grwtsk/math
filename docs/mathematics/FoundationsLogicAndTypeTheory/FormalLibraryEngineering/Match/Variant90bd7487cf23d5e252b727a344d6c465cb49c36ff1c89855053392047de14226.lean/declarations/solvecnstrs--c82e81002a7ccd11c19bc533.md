# solveCnstrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ff61bbb390b4121688cefbd39ed2aaa90f1517ea00935cda8ef87fa9c9f9c88",
  "kind": "def",
  "lexical_name": "solveCnstrs",
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
  "slug": "solvecnstrs--c82e81002a7ccd11c19bc533",
  "source": {
    "blob": "5db035b1778fff6b7854151067e4d3b3754e15d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 417,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c82e81002a7ccd11c19bc533ab758f00e3a1aebeba84e8e2ae68d39691074dd3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ff61bbb390b4121688cefbd39ed2aaa90f1517ea00935cda8ef87fa9c9f9c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def solveCnstrs (mvarId : MVarId) (alt : Alt) : StateRefT State MetaM Unit := do
  go (reorientCnstrs alt)
where
  go (alt : Alt) : StateRefT State MetaM Unit := do
    match (← solveSomeLocalFVarIdCnstr? alt) with
    | some alt => go alt
    | none =>
      let alt ← filterTrivialCnstrs alt
      if alt.cnstrs.isEmpty then
        mvarId.withContext do
          let eType ← inferType alt.rhs
          let (notAltsMVarIds, _, eType) ← forallMetaBoundedTelescope eType alt.notAltIdxs.size
          unless notAltsMVarIds.size = alt.notAltIdxs.size do
            throwErrorAt alt.ref "Incorrect number of overlap hypotheses in the right-hand-side, expected {alt.notAltIdxs.size}:{indentExpr eType}"
          let targetType ← mvarId.getType
          unless (← isDefEqGuarded targetType eType) do
            trace[Meta.Match.match] "assignGoalOf failed {eType} =?= {targetType}"
            throwErrorAt alt.ref "Dependent elimination failed: Type mismatch when solving this alternative: it {← mkHasTypeButIsExpectedMsg eType targetType}"
          for notAltMVarId in notAltsMVarIds do
            solveOverlap notAltMVarId.mvarId!
          mvarId.assign (mkAppN alt.rhs notAltsMVarIds)
          modify fun s => { s with used := s.used.insert alt.idx }
      else
        trace[Meta.Match.match] "alt has unsolved cnstrs:\n{← alt.toMessageData}"
        let mut msg := m!"Dependent match elimination failed: Could not solve constraints"
        for (lhs, rhs) in alt.cnstrs do
          msg := msg ++ m!"\n  {lhs} ≋ {rhs}"
        throwErrorAt alt.ref msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db035b1778fff6b7854151067e4d3b3754e15d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
