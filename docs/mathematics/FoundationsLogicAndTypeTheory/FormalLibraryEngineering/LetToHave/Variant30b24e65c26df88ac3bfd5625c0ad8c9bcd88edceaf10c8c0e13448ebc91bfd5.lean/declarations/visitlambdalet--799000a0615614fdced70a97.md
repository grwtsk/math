# visitLambdaLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0952907ef2f519fd6c28006014788d04bdd434b505122d864d049b521bd258e3",
  "kind": "def",
  "lexical_name": "visitLambdaLet",
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
  "slug": "visitlambdalet--799000a0615614fdced70a97",
  "source": {
    "blob": "f8ac672a71447edb01d29648bd1514c5140a07e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 310,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:799000a0615614fdced70a975fbdb730a7bb54ec685008817d88827f6d3bec8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0952907ef2f519fd6c28006014788d04bdd434b505122d864d049b521bd258e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def visitLambdaLet (e : Expr) : M Result := do
  if canSkip e then
    return { expr := e, type? := none }
  else
    go (← getLCtx) #[] e (← read).letFVars
where
  /--
  Enters a lambda/let/have telescope, checking that each domain type is a type.
  For let/have, checks that each value has a type defeq to the domain type.
  Calls `finalize` once the telescope is constructed.
  -/
  go (lctx : LocalContext) (fvars : Array Expr) (e : Expr) (letFVars : List FVarId) : M Result := do
    let inCtx (v : Expr → M Result) (e : Expr) : M Result :=
      withLCtx lctx {} <| withLetFVars letFVars <| v (e.instantiateRev fvars)
    match e with
    | .lam n t b bi =>
      let t ← inCtx visitType t
      let fvarId ← mkFreshFVarId
      let lctx  := lctx.mkLocalDecl fvarId n t.expr bi
      go lctx (fvars.push (.fvar fvarId)) b letFVars
    | .letE n t v b nondep =>
      let t ← inCtx visitType t
      let v ← inCtx visit v
      unless letFVars.isEmpty do withLCtx' lctx do
        let vType ← v.type
        unless (← isDefEq t vType) do
          throwError "invalid let declaration, term{indentExpr v}{← mkHasTypeButIsExpectedMsg vType t}"
      let fvarId ← mkFreshFVarId
      let lctx  := lctx.mkLetDecl fvarId n t v nondep
      let letFVars := if nondep then letFVars else fvarId :: letFVars
      go lctx (fvars.push (.fvar fvarId)) b letFVars
    | _ =>
      inCtx (finalize fvars <=< visit) e
  /--
  This function rebuilds the expression and converts `let`s to `have`s when possible.
  -/
  finalize (fvars : Array Expr) (body : Result) : M Result := do
    trace[Meta.letToHave.debug] "finalize {fvars},{indentD m!"{body.expr} : {body.type?}"}"
    let body' := {
      expr := body.expr.abstract fvars
      type? := body.type?.map (·.abstract fvars)
    }
    Nat.foldRevM fvars.size (init := body') fun i _ res => do
      let .fvar fvarId := fvars[i] | unreachable!
      let some decl ← fvarId.findDecl? | fvarId.throwUnknown
      match decl with
      | .cdecl _ _ n t bi _ => do
        let t := t.abstractRange i fvars
        pure {
          expr := Expr.lam n t res.expr bi
          type? := res.type?.map fun type => Expr.forallE n t type bi
        }
      | .ldecl _ _ n t v nondep _ => do
        let nondep ←
          if nondep then pure true
          else if !(← getZetaDeltaFVarIds).contains fvarId then incCount; pure true
          else pure false
        let t := t.abstractRange i fvars
        let v := v.abstractRange i fvars
        pure {
          expr := Expr.letE n t v res.expr nondep
          type? := res.type?.map fun type =>
            if type.hasLooseBVar 0 then
              Expr.letE n t v type nondep
            else
              type.lowerLooseBVars 1 1
        }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetToHave/Variant30b24e65c26df88ac3bfd5625c0ad8c9bcd88edceaf10c8c0e13448ebc91bfd5.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ac672a71447edb01d29648bd1514c5140a07e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
