# elabFunTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97398caa76538a097a67387e9c9ed311339809fa9f20a5957fceaedcf176f1d0",
  "kind": "def",
  "lexical_name": "elabFunTarget",
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
  "slug": "elabfuntarget--8dbdc7208a85e7aa78b1cc3d",
  "source": {
    "blob": "96201dae32b53e8b351c7f6a2177e432e71a990e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1091,
    "line": 1053,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dbdc7208a85e7aa78b1cc3d3155e4d66e460fcd2239ab7120b44f0f8852ebdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97398caa76538a097a67387e9c9ed311339809fa9f20a5957fceaedcf176f1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1053–1091.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabFunTarget (cases : Bool) (stx : Syntax) : TacticM (ElimInfo × Array Expr) := do
  withRef stx <| withMainContext do
    let funCall ← elabFunTargetCall cases stx
    funCall.withApp fun fn funArgs => do
    let .const fnName fnUs := fn |
      throwError "Expected application headed by a function constant"
    let unfolding := tactic.fun_induction.unfolding.get (← getOptions)
    let some funIndInfo ← getFunIndInfo? (cases := cases) (unfolding := unfolding) fnName |
      let theoremKind := if cases then "cases" else "induction"
      throwError "No functional {theoremKind} theorem for `{.ofConstName fnName}`, or function is mutually recursive "
    if funArgs.size != funIndInfo.params.size then
      throwError "Expected fully applied application of `{.ofConstName fnName}` with \
        {funIndInfo.params.size} arguments, but found {funArgs.size} arguments"
    let mut params := #[]
    let mut targets := #[]
    let mut us := #[]
    for u in fnUs, b in funIndInfo.levelMask do
      if b then
        us := us.push u
    for a in funArgs, kind in funIndInfo.params do
      match kind with
      | .dropped => pure ()
      | .param => params := params.push a
      | .target => targets := targets.push a
    if cases then
      trace[Elab.cases] "us: {us}\nparams: {params}\ntargets: {targets}"
    else
      trace[Elab.induction] "us: {us}\nparams: {params}\ntargets: {targets}"

    let elimExpr := mkAppN (.const funIndInfo.funIndName us.toList) params
    let elimInfo ← getElimExprInfo elimExpr
    unless targets.size = elimInfo.targetsPos.size do
      let tacName := if cases then "fun_cases" else "fun_induction"
      throwError "{tacName} got confused trying to use \
        `{.ofConstName funIndInfo.funIndName}`. Does it take {targets.size} or \
        {elimInfo.targetsPos.size} targets?"
    return (elimInfo, targets)

@[builtin_tactic Lean.Parser.Tactic.funInduction, builtin_incremental]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variant70d0b43914d6a70f6d0bf61a5341b62a4fb5e063101c71c7ed32297bac2e0b42.lean#L1053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96201dae32b53e8b351c7f6a2177e432e71a990e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
