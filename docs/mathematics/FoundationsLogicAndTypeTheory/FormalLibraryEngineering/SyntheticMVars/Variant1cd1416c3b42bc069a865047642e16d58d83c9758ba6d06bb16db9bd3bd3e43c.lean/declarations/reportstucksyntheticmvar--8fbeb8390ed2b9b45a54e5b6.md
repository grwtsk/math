# reportStuckSyntheticMVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:964150aae2231d88099930d315306eb693eddf2f44180b2ca5a5ec97cebd1649",
  "kind": "def",
  "lexical_name": "reportStuckSyntheticMVar",
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
  "slug": "reportstucksyntheticmvar--8fbeb8390ed2b9b45a54e5b6",
  "source": {
    "blob": "948a9b0971ccdcf4096224a5ea1c3f245959c2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fbeb8390ed2b9b45a54e5b63c0053624e99d259fe0dc83c36189a56c3001b25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:964150aae2231d88099930d315306eb693eddf2f44180b2ca5a5ec97cebd1649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reportStuckSyntheticMVar (mvarId : MVarId) (mvarDecl : SyntheticMVarDecl) (ignoreStuckTC := false) : TermElabM Unit := do
  withRef mvarDecl.stx do
    match mvarDecl.kind with
    | .typeClass extraErrorMsg? =>
      let extraErrorMsg := extraMsgToMsg extraErrorMsg?
      unless ignoreStuckTC do
        mvarId.withContext do
          let mvarDecl ← getMVarDecl mvarId
          unless (← MonadLog.hasErrors) do
            let .some note ← explainStuckTypeclassProblem mvarDecl.type
              | throwError "typeclass instance problem is stuck, it is often due to metavariables{indentExpr mvarDecl.type}{extraErrorMsg}"
            throwError m!"typeclass instance problem is stuck{indentExpr mvarDecl.type}{note}{extraErrorMsg}"
    | .coe header expectedType e f? mkErrorMsg? =>
      mvarId.withContext do
        if let some mkErrorMsg := mkErrorMsg? then
          throwError (← mkErrorMsg mvarId expectedType e)
        else
          throwTypeMismatchError header expectedType (← inferType e) e f?
            m!"failed to create type class instance for{indentExpr (← getMVarDecl mvarId).type}"
    | .tactic (ctx := savedContext) (delayOnMVars := true) .. =>
      withSavedContext savedContext do
        mvarId.withContext do
          let mvarDecl ← getMVarDecl mvarId
          throwError "tactic execution is stuck, goal contains metavariables{indentExpr mvarDecl.type}"
    | _ => unreachable! -- TODO handle other cases.

/--
  Report an error for each synthetic metavariable that could not be resolved.
  Remark: we set `ignoreStuckTC := true` when elaborating `simp` arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a9b0971ccdcf4096224a5ea1c3f245959c2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
