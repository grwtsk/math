# solveCnstrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24ed6465a67ef101a9376f6354002071e7f09221d6b23b44388a9945f9e549ab",
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
  "slug": "solvecnstrs--c0a32a376806a29e753a87df",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0a32a376806a29e753a87df0bf160afa4cc3fafdc400edf9e939a489d9f929a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24ed6465a67ef101a9376f6354002071e7f09221d6b23b44388a9945f9e549ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–437.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
