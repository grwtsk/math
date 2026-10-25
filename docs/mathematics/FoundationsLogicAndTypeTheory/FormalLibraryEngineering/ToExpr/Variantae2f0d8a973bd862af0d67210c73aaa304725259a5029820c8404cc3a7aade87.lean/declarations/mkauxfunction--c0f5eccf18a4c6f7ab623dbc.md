# mkAuxFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6202e7e01007e4dcda3c9355a091f586e77071a05e43f10e710bf7097553ffe6",
  "kind": "def",
  "lexical_name": "mkAuxFunction",
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
  "slug": "mkauxfunction--c0f5eccf18a4c6f7ab623dbc",
  "source": {
    "blob": "30127776db289f8acfe314500ae87c88e416db21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0f5eccf18a4c6f7ab623dbc7347fd800fedaf424016c3a8245976d145f69914",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6202e7e01007e4dcda3c9355a091f586e77071a05e43f10e710bf7097553ffe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAuxFunction (ctx : Deriving.Context) (i : Nat) : TermElabM Command := do
  let auxFunName := ctx.auxFunNames[i]!
  let indVal     := ctx.typeInfos[i]!
  let header     ← mkHeader ``ToExpr 1 indVal
  /- We make the `ToLevel` instances be explicit here so that we can pass the instances from the instances to the
     aux functions. This lets us ensure universe level variables are being lined up,
     without needing to use `ident.{u₁,…,uₙ}` syntax, which could conditionally be incorrect
     depending on the ambient CommandElabM scope state.
     TODO(kmill): deriving handlers should run in a scope with no `universes` or `variables`. -/
  let (toLevelInsts, levelBinders) := Array.unzip <| ← indVal.levelParams.toArray.mapM fun u => do
    let inst := mkIdent (← mkFreshUserName `inst)
    return (inst, ← `(explicitBinderF| ($inst : ToLevel.{$(mkIdent u)})))
  let mut body ← mkToExprBody header indVal auxFunName toLevelInsts
  if ctx.usePartial then
    let letDecls ← mkLocalInstanceLetDecls ctx header.argNames toLevelInsts
    body ← mkLet letDecls body
  /- We need to alter the last binder (the one for the "target") to have explicit universe levels
     so that the `ToLevel` instance arguments can use them. -/
  let addLevels binder :=
    match binder with
    | `(bracketedBinderF| ($a : $ty)) => do `(bracketedBinderF| ($a : $(← updateIndType indVal ty)))
    | _ => throwError "(internal error) expecting inst binder"
  let binders := header.binders.pop ++ levelBinders ++ #[← addLevels header.binders.back!]
  if ctx.usePartial then
    `(partial def $(mkIdent auxFunName):ident $binders:bracketedBinder* : Expr := $body:term)
  else
    `(def $(mkIdent auxFunName):ident $binders:bracketedBinder* : Expr := $body:term)

/--
Creates all the auxiliary functions (using `mkAuxFunction`) for the (mutual) inductive type(s).
Wraps the resulting definition commands in `mutual ... end`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantae2f0d8a973bd862af0d67210c73aaa304725259a5029820c8404cc3a7aade87.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30127776db289f8acfe314500ae87c88e416db21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
