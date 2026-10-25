# getResultingTypeCore?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:429a45e8c8c40300082a3f2269823ec8e15b8508e43fb45f2dba161aa208906f",
  "kind": "def",
  "lexical_name": "getResultingTypeCore?",
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
  "slug": "getresultingtypecore--c0138e436076984b8395d5f9",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0138e436076984b8395d5f9c3e7dbe5daa047dda505b68c7edf1201b4255adb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:429a45e8c8c40300082a3f2269823ec8e15b8508e43fb45f2dba161aa208906f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def getResultingTypeCore? (explicit ellipsis : Bool) (numImplicitParams : Nat)
    (paramIdx : Nat) (numArgs : Nat) (namedArgs : List NamedArg) (fType : Expr) : TermElabM (Option Expr) := do
  trace[Elab.app.propagateExpectedType] "numArgs: {numArgs}, namedArgs.length: {namedArgs.length}"
  trace[Elab.app.propagateExpectedType] "fType: {fType}"
  main' paramIdx numArgs namedArgs fType
where
  main' (paramIdx : Nat) (numArgs : Nat) (namedArgs : List NamedArg) (fType : Expr) : TermElabM (Option Expr) := do
    -- Note that we want to return an `fType` that's *not* in WHNF, so we keep the original `fType`
    -- and compute a separate `fType'`.
    let fType' ← if fType.isForall || fType.hasLooseBVars then pure fType else whnfForall fType
    if let .forallE binderName paramType fTypeBody bi := fType' then
      match Term.findNamedArg? namedArgs binderName with
      | some _ => main' (paramIdx + 1) numArgs (Term.eraseNamedArg namedArgs binderName) fTypeBody
      | none =>
        let processImplicit' (_ : Unit) := main' (paramIdx + 1) numArgs namedArgs fTypeBody
        if !explicit && bi.isStrictImplicit && numArgs == 0 && namedArgs.isEmpty then
          finalize' fType
        else if !explicit && !bi.isExplicit then
          processImplicit' ()
        else if paramIdx < numImplicitParams then -- Simulates `processExplicitArg` from this point onward
          processImplicit' ()
        else if numArgs > 0 then
          main' (paramIdx + 1) (numArgs - 1) namedArgs fTypeBody
        else if ellipsis || !explicit && (paramType.isAutoParam || paramType.isOptParam) then
          processImplicit' ()
        else if fType'.hasLooseBVars then
          trace[Elab.app.propagateExpectedType] "propogation postponed, resulting type depends on arguments that have not yet been elaborated: {fType'}"
          return none
        else if !namedArgs.isEmpty then
          if (← findNamedArgDependsOn? fType' namedArgs).isSome then
            processImplicit' ()
          else
            trace[Elab.app.propagateExpectedType] "propogation postponed, there are still named arguments, and need to use eta arguments"
            return none
        else if !explicit then
          if (← hasOptAutoParams fType') then
            trace[Elab.app.propagateExpectedType] "propagation postponed, resulting type has opt-params or auto-params: {fType'}"
            return none
          else
            finalize' fType
        else
          finalize' fType
    else if numArgs > 0 || !namedArgs.isEmpty then
      trace[Elab.app.propagateExpectedType] "propogation postponed, currently more arguments than parameters"
      return none
    else
      finalize' fType
  finalize' (fType : Expr) : MetaM (Option Expr) := do
    if fType.hasLooseBVars then
      trace[Elab.app.propagateExpectedType] "propagation postponed, resulting type depends on arguments that have not yet been elaborated: {fType}"
      return none
    else
      return fType

/--
Auxiliary function for `propagateExpectedType`. Returns the inferred type of the function
application, if enough information is currently known.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
