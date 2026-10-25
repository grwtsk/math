# ensureNoUnassignedLevelMVarsAtInductives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:008f63e244ae53fda208e9bed23b7089039ccc2b6a2d768c74a5287d505df8ef",
  "kind": "def",
  "lexical_name": "ensureNoUnassignedLevelMVarsAtInductives",
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
  "slug": "ensurenounassignedlevelmvarsatinductives--1bdfe848dbab112ca180ef16",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1366,
    "line": 1314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bdfe848dbab112ca180ef16aabeb65f4ad5e988aae3a1e01d421ad23d0d6167",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:008f63e244ae53fda208e9bed23b7089039ccc2b6a2d768c74a5287d505df8ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1314–1366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ensureNoUnassignedLevelMVarsAtInductives
    (views : Array InductiveView) (indTypes : List InductiveType) :
    TermElabM Unit := do
  let mut lmvars := {}
  for indType in indTypes do
    lmvars := collectLevelMVars lmvars indType.type
    for ctor in indType.ctors do
      lmvars := collectLevelMVars lmvars ctor.type
  let pendingLevelMVars := lmvars.result
  unless pendingLevelMVars.isEmpty do
    if (← Term.logUnassignedLevelMVarsUsingErrorInfos pendingLevelMVars) then
      throwAbortCommand
    else if (← MonadLog.hasErrors) then
      throwAbortCommand
    else
      -- This is a fallback in case we don't have an error info available for the universe level metavariables.
      -- We try to produce an error message containing an expression with one of the universe level metavariables.
      for view in views, indType in indTypes do
        withRef view.ref do
          Term.forEachExprWithExposedLevelMVars indType.type fun e => do
            throwError "\
              Inductive type declaration `{view.declName}` contains universe level metavariables at the expression\
              {indentExpr e}\n\
              in the type{indentExpr <| ← Term.exposeLevelMVars indType.type}"
          for ctorView in view.ctors, ctor in indType.ctors do
            withRef ctorView.ref <| forallTelescope ctor.type fun args ctype => do
              for arg in args do
                let argTy ← inferType arg
                Term.forEachExprWithExposedLevelMVars argTy fun e => do
                  throwError "\
                    Constructor field `{arg}` of `{ctorView.declName}` contains universe level metavariables at the expression\
                    {indentExpr e}\n\
                    in its type{indentExpr <| ← Term.exposeLevelMVars argTy}"
              Term.forEachExprWithExposedLevelMVars ctype fun e => do
                throwError "\
                  Constructor `{ctorView.declName}` contains universe level metavariables at the expression\
                  {indentExpr e}\n\
                  in the type{indentExpr <| ← Term.exposeLevelMVars ctype}"

/--
  Given a list of `InductiveType` structures and some local variables of `mkInductiveDecl`,
  rewrites the inductive types and their constructors in a way that signature contains parameters
  representing the types being defined, and all the recursive occurrences of the inductive types
  in constructor are replaced by applications of these parameters.

  This function is used to implement coinductive predicates. For more details, see the comment in
  `Elab.Coinductive`

  Upon rewriting the inductive types, it adds the new inductive declaration to the environment,
  following the same pattern as `mkInductiveDecl`.

  We assume that numVars <= numParams, where numVars is the number of local variables.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L1314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
