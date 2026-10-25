# elabAppArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a80cb7a41886521135162163d4ce2c2696891c06c85918832117b3a5e05a15df",
  "kind": "def",
  "lexical_name": "elabAppArgs",
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
  "slug": "elabappargs--c0b62478963feb14832d4f04",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1442,
    "line": 1359,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0b62478963feb14832d4f048fe89e087fa629af97493c3c70534aefcc913979",
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

Occurrence: `declaration:a80cb7a41886521135162163d4ce2c2696891c06c85918832117b3a5e05a15df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1359–1442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAppArgs (f : Expr) (namedArgs : Array NamedArg) (args : Array Arg)
    (expectedType? : Option Expr) (explicit ellipsis : Bool) (resultIsOutParamSupport := true) : TermElabM Expr := do
  -- Coercions must be available to use this flag.
  -- If `@` is used (i.e., `explicit = true`), we disable `resultIsOutParamSupport`.
  let resultIsOutParamSupport := ((← getEnv).contains ``Lean.Internal.coeM) && resultIsOutParamSupport && !explicit
  let fType ← inferType f
  let fType ← instantiateMVars fType
  withTraceNodeBefore `Elab.app.args
    (fun _ => do
      let mut msgs := #[]
      if explicit then msgs := msgs.push m!"explicit"
      if ellipsis then msgs := msgs.push m!"ellipsis"
      if args.size > 0 then msgs := msgs.push m!"({args.size} args)"
      if namedArgs.size > 0 then msgs := msgs.push m!"({namedArgs.size} namedArgs)"
      return m!"elabAppArgs {MessageData.joinSep msgs.toList " "}{inlineExprTrailing f}") do
  unless namedArgs.isEmpty && args.isEmpty do
    tryPostponeIfMVar fType
  trace[Elab.app.args] "fType: {fType}"
  trace[Elab.app.args] "expectedType: {expectedType?}"
  trace[Elab.app.args] "namedArgs: {namedArgs}"
  trace[Elab.app.args] "args: {args}"
  trace[Elab.app.args] "explicit: {explicit}, ellipsis: {ellipsis}, resultIsOutParamSupport: {resultIsOutParamSupport}"
  if let some elimInfo ← elabAsElim? then
    tryPostponeIfNoneOrMVar expectedType?
    trace[Elab.app.args] "Using ElabAsElim procedure. motivePos: {elimInfo.motivePos}, majorPos: {elimInfo.majorsPos}"
    let some expectedType := expectedType? | throwError "failed to elaborate eliminator, expected type is not available"
    let expectedType ← instantiateMVars expectedType
    if expectedType.getAppFn.isMVar then throwError "failed to elaborate eliminator, expected type is not available"
    ElabElim.main.run { elimInfo, expectedType } |>.run' {
      f, fType
      args := args.toList
      namedArgs := namedArgs.toList
    }
  else
    -- Note: we only expect one `numImplicitParams` to be set.
    let numImplicitParams := namedArgs.foldl (init := 0) (max · ·.numImplicitParams)
    if numImplicitParams > 0 then
      trace[Elab.app.args] "the first {numImplicitParams} parameters are overridden to be implicit"
    ElabAppArgs.main.run { explicit, ellipsis, resultIsOutParamSupport, numImplicitParams } |>.run' {
      args := args.toList
      expectedType?, f, fType
      namedArgs := namedArgs.toList
      propagateExpected := (← propagateExpectedTypeFor f)
    }
where
  /-- Return `some info` if we should elaborate as an eliminator. -/
  elabAsElim? : TermElabM (Option ElabElimInfo) := do
    unless (← read).heedElabAsElim do return none
    if explicit || ellipsis then return none
    let .const declName _ := f | return none
    unless (← shouldElabAsElim declName) do return none
    let elimInfo ← getElabElimInfo declName
    forallTelescopeReducing (← inferType f) fun xs _ => do
      /- Process arguments similar to `Lean.Elab.Term.ElabElim.main` to see if the motive has been
         provided, in which case we use the standard app elaborator.
         If the motive is explicit (like for `False.rec`), then a positional `_` counts as "not provided". -/
      let mut args := args.toList
      let mut namedArgs := namedArgs.toList
      for x in xs[*...elimInfo.motivePos] do
        let localDecl ← x.fvarId!.getDecl
        match findNamedArg? namedArgs localDecl.userName with
        | some _ => namedArgs := eraseNamedArg namedArgs localDecl.userName
        | none   => if localDecl.binderInfo.isExplicit then args := args.tailD []
      -- Invariant: `elimInfo.motivePos < xs.size` due to construction of `elimInfo`.
      let some x := xs[elimInfo.motivePos]? | unreachable!
      let localDecl ← x.fvarId!.getDecl
      if findNamedArg? namedArgs localDecl.userName matches some _ then
        -- motive has been explicitly provided, so we should use standard app elaborator
        return none
      else
        match localDecl.binderInfo.isExplicit, args with
        | true, .expr _ :: _  =>
          -- motive has been explicitly provided, so we should use standard app elaborator
          return none
        | true, .stx arg :: _ =>
          if arg.isOfKind ``Lean.Parser.Term.hole then
            return some elimInfo
          else
            -- positional motive is not `_`, so we should use standard app elaborator
            return none
        | _, _ => return some elimInfo


/-- Auxiliary inductive datatype that represents the resolution of an `LVal`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
