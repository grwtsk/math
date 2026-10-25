# elabSyntheticHole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af4102ea9b8926620906e473fb8a6256dad4a1352ef9fe7eb0159bd1fe40ecf4",
  "kind": "def",
  "lexical_name": "elabSyntheticHole",
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
  "slug": "elabsynthetichole--14965c1b6260fa7e503d80fc",
  "source": {
    "blob": "97892747116bee67ed7f742a8664a6a43543e851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14965c1b6260fa7e503d80fc69fb2573b8e03c1e4edd71fe177c703d29a05cff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af4102ea9b8926620906e473fb8a6256dad4a1352ef9fe7eb0159bd1fe40ecf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_term_elab «syntheticHole»] def elabSyntheticHole : TermElab := fun stx expectedType? => do
  let arg  := stx[1]
  let userName := if arg.isIdent then arg.getId else Name.anonymous
  let mkNewHole : Unit → TermElabM Expr := fun _ => do
    let kind := if (← read).inPattern then MetavarKind.natural else MetavarKind.syntheticOpaque
    let mvar ← mkFreshExprMVar expectedType? kind userName
    registerMVarErrorHoleInfo mvar.mvarId! stx
    return mvar
  if userName.isAnonymous || (← read).inPattern then
    mkNewHole ()
  else
    match (← getMCtx).findUserName? userName with
    | none => mkNewHole ()
    | some mvarId =>
      let mvar := mkMVar mvarId
      let mvarDecl ← getMVarDecl mvarId
      let lctx ← getLCtx
      if mvarDecl.lctx.isSubPrefixOf lctx then
        return mvar
      else match (← getExprMVarAssignment? mvarId) with
      | some val =>
        let val ← instantiateMVars val
        if (← MetavarContext.isWellFormed lctx val) then
          return val
        else
          withLCtx mvarDecl.lctx mvarDecl.localInstances do
            throwError "synthetic hole has already been defined and assigned to value incompatible with the current context{indentExpr val}"
      | none =>
        if (← mvarId.isDelayedAssigned) then
          -- We can try to improve this case if needed.
          throwError "synthetic hole has already been defined and delayed-assigned with an incompatible local context"
        else if lctx.isSubPrefixOf mvarDecl.lctx then
          let mvarNew ← mkNewHole ()
          mvarId.assign mvarNew
          return mvarNew
        else
          throwError "synthetic hole has already been defined with an incompatible local context"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variant8e95d81a2dc112339d177b5e2c2b9493770dab4249452615a0806dd70c1ec8ce.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97892747116bee67ed7f742a8664a6a43543e851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
