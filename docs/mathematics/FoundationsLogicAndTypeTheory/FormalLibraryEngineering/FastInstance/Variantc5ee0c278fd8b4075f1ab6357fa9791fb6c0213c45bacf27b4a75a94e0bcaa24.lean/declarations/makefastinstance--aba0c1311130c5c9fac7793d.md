# makeFastInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3ada83ae1b8f85cd9a30c2ffc42a11015e22bafcc3002f1b5948b4523a92f2a",
  "kind": "def",
  "lexical_name": "makeFastInstance",
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
  "slug": "makefastinstance--aba0c1311130c5c9fac7793d",
  "source": {
    "blob": "057cb7080e159b4799a59f23aca2081896dc703a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aba0c1311130c5c9fac7793d62b0cd4a4851c68acde5b98414db5da37223bbd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3ada83ae1b8f85cd9a30c2ffc42a11015e22bafcc3002f1b5948b4523a92f2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def makeFastInstance (provided : Expr) (trace : Array Name := #[]) :
    MetaM Expr := withReducible do
  let ty ← inferType provided
  withTraceNode `Elab.fast_instance (fun e => return m!"{exceptEmoji e} type: {ty}") do
  let .some className ← isClass? ty
    | error trace m!"Can only be used for classes, but term has type{indentExpr ty}"
  trace[Elab.fast_instance] "class is {className}"
  if ← withDefault <| Meta.isProp ty then
    error trace m!"\
      Provided instance{indentExpr provided}\n\
      is a proof, which does not need normalization."

  -- Try to synthesize a total replacement for this term:
  if let .some new ← trySynthInstance ty then
    if ← withReducibleAndInstances <| isDefEq provided new then
      trace[Elab.fast_instance] "replaced with synthesized instance"
      return new
    else
      if ← withDefault <| isDefEq provided new then
        error trace m!"\
          Provided instance{indentExpr provided}\n\
          is defeq only at default transparency to inferred instance{indentExpr new}"
      else
        error trace m!"\
          Provided instance{indentExpr provided}\n\
          is not defeq to inferred instance{indentExpr new}"
  -- Otherwise, try to reduce it to a constructor.
  else
    -- Telescope since it might be a family of instances.
    forallTelescopeReducing ty fun tyArgs _ => do
      let provided' ← withReducibleAndInstances <| whnf <| mkAppN provided tyArgs
      let error' (m : MessageData) : MetaM Expr := do
        if isStructure (← getEnv) className then
          error trace m
        else
          error trace m!"{m}\n\n\
            This instance is not a structure and not canonical. \
            Use a separate 'instance' command to define it."
      let .const c .. := provided'.getAppFn
        | error' m!"\
            Provided instance does not reduce to a constructor application{indentExpr provided}"
      let some (.ctorInfo ci) := (← getEnv).find? c
        | error' m!"\
            Provided instance does not reduce to a constructor application{indentExpr provided}\n\
            Reduces to an application of {c}."
      let mut args := provided'.getAppArgs
      let params ← withDefault <| forallTelescopeReducing ci.type fun args _ =>
        args.mapM fun arg => do
          let recurse ← (return (← arg.fvarId!.getBinderInfo).isInstImplicit)
                        <&&> not <$> Meta.isProof arg
          return (recurse, ← arg.fvarId!.getUserName)
      unless args.size == params.size do
        -- This is an invalid term.
        throwError "Incorrect number of arguments for constructor application{indentExpr provided'}"
      for i in [ci.numParams:args.size] do
        let (recurse, binderName) := params[i]!
        if recurse then
          let trace' := trace.push (className ++ binderName)
          args := args.set! i (← makeFastInstance args[i]! (trace := trace'))
      let provided' := mkAppN provided'.getAppFn args
      mkLambdaFVars tyArgs provided'

/--
`fast_instance% inst` takes an expression for a typeclass instance `inst`, and unfolds it into
constructor applications that leverage existing instances.

For instance, when used as
```lean
instance instSemiring : Semiring X := sorry
instance instRing : Ring X := fast_instance% Function.Injective.ring ..
```
this will define `instRing` as a nested constructor application that refers to `instSemiring`
rather than applications of `Function.Injective.ring` or other non-canonical constructors.
The advantage is then that `instRing.toSemiring` unifies almost immediately with `instSemiring`,
rather than having to break it down into smaller pieces.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `057cb7080e159b4799a59f23aca2081896dc703a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
