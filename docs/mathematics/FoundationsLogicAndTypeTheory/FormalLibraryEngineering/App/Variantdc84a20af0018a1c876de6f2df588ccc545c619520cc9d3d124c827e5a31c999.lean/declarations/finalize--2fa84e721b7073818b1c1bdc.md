# finalize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac9b395e5ea1521222bea06e982d4f620456c424c1f8938f5cf7e73d0d9a55ef",
  "kind": "def",
  "lexical_name": "finalize",
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
  "slug": "finalize--2fa84e721b7073818b1c1bdc",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1254,
    "line": 1204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2fa84e721b7073818b1c1bdc1fcf8878bd02d06fe1e824d90efd7e91a9c98192",
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

Occurrence: `declaration:ac9b395e5ea1521222bea06e982d4f620456c424c1f8938f5cf7e73d0d9a55ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1204–1254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalize : M Expr := do
  unless (← get).namedArgs.isEmpty do
    throwError "failed to elaborate eliminator, unused named arguments: {(← get).namedArgs.map (·.name)}"
  let some motive := (← get).motive?
    | throwError "failed to elaborate eliminator, insufficient number of arguments"
  trace[Elab.app.elab_as_elim] "motive: {motive}"
  forallTelescope (← get).fType fun xs fType => do
    trace[Elab.app.elab_as_elim] "xs: {xs}"
    let mut expectedType := (← read).expectedType
    trace[Elab.app.elab_as_elim] "expectedType:{indentD expectedType}"
    let throwInsufficient := do
      throwError "failed to elaborate eliminator, insufficient number of arguments, expected type:{indentExpr expectedType}"
    let mut f := (← get).f
    if xs.size > 0 then
      -- under-application, specialize the expected type using `xs`
      -- Note: if we ever wanted to support optParams and autoParams, this is where it could be.
      assert! (← get).args.isEmpty
      for x in xs do
        let .forallE _ t b _ ← whnf expectedType | throwInsufficient
        unless ← fullApproxDefEq <| isDefEq t (← inferType x) do
          -- We can't assume that these binding domains were supposed to line up, so report insufficient arguments
          throwInsufficient
        expectedType := b.instantiate1 x
      trace[Elab.app.elab_as_elim] "xs after specialization of expected type: {xs}"
    else
      -- over-application, simulate `revert` while generalizing the values of these arguments in the expected type
      (f, expectedType) ← revertArgs (← get).args f expectedType
      unless ← isTypeCorrect expectedType do
        throwError "failed to elaborate eliminator, after generalizing over-applied arguments, expected type is type incorrect:{indentExpr expectedType}"
    trace[Elab.app.elab_as_elim] "expectedType after processing:{indentD expectedType}"
    let result := mkAppN f xs
    trace[Elab.app.elab_as_elim] "result:{indentD result}"
    unless fType.getAppFn == (← get).motive? do
      throwError "Internal error, eliminator target type isn't an application of the motive"
    let discrs := fType.getAppArgs
    trace[Elab.app.elab_as_elim] "discrs: {discrs}"
    let motiveVal ← mkMotive discrs expectedType
    unless (← isTypeCorrect motiveVal) do
      throwError "failed to elaborate eliminator, motive is not type correct:{indentD motiveVal}"
    unless (← isDefEq motive motiveVal) do
      throwError "failed to elaborate eliminator, invalid motive{indentExpr motiveVal}"
    synthesizeAppInstMVars (← get).instMVars result
    trace[Elab.app.elab_as_elim] "completed motive:{indentD motive}"
    let result ← mkLambdaFVars xs (← instantiateMVars result)
    return result

/--
Return the next argument to be processed.
The result is `.none` if it is an implicit argument which was not provided using a named argument.
The result is `.undef` if `args` is empty and `namedArgs` does contain an entry for `binderName`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
