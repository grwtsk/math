# collectExprAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a06ed3ce67a5864a93d5dd7c88e28d6b1dbd7707ef520a4e849c178d9eb263bc",
  "kind": "def",
  "lexical_name": "collectExprAux",
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
  "slug": "collectexpraux--08fc505757fadae1aa598232",
  "source": {
    "blob": "d5c6d4bf86de09eb83908509cbc19b387f8cdc38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 190,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08fc505757fadae1aa598232dccff886fb18848d387bafecae457c9d9fbd0a67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a06ed3ce67a5864a93d5dd7c88e28d6b1dbd7707ef520a4e849c178d9eb263bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectExprAux (e : Expr) : ClosureM Expr := do
  let collect (e : Expr) := visitExpr collectExprAux e
  match e with
  | Expr.proj _ _ s      => return e.updateProj! (← collect s)
  | Expr.forallE _ d b _ => return e.updateForallE! (← collect d) (← collect b)
  | Expr.lam _ d b _     => return e.updateLambdaE! (← collect d) (← collect b)
  | Expr.letE _ t v b _  => return e.updateLetE! (← collect t) (← collect v) (← collect b)
  | Expr.app f a         => return e.updateApp! (← collect f) (← collect a)
  | Expr.mdata _ b       => return e.updateMData! (← collect b)
  | Expr.sort u          => return e.updateSort! (← collectLevel u)
  | Expr.const _ us      => return e.updateConst! (← us.mapM collectLevel)
  | Expr.mvar mvarId     =>
    let mvarDecl ← mvarId.getDecl
    let type ← preprocess mvarDecl.type
    let type ← collect type
    let newFVarId ← mkFreshFVarId
    let userName ← mkNextUserName
    /-
    Recall that delayed assignment metavariables must always be applied to at least
    `a.fvars.size` arguments (where `a : DelayedMetavarAssignment` is its record).
    This assumption is used in `lean::instantiate_mvars_fn::visit_app` for example, where there's a comment
    about how under-applied delayed assignments are an error.

    If we were to collect the delayed assignment metavariable itself and push it onto the `exprMVarArgs` list,
    then `exprArgs` returned by `Lean.Meta.Closure.mkValueTypeClosure` would contain underapplied delayed assignment metavariables.
    This leads to kernel 'declaration has metavariables' errors, as reported in https://github.com/leanprover/lean4/issues/6354

    The straightforward solution to this problem (implemented below) is to eta expand the delayed assignment metavariable
    to ensure it is fully applied. This isn't full eta expansion; we only need to eta expand the first `fvars.size` arguments.

    Note: there is the possibility of handling special cases to create more-efficient terms.
    For example, if the delayed assignment metavariable is applied to fvars, we could avoid eta expansion for those arguments
    since the fvars are being collected anyway. It's not clear that the additional implementation complexity is worth it,
    and it is something we can evaluate later. In any case, the current solution is necessary as the generic case.
    -/
    let e' ←
      if let some { fvars, .. } ← getDelayedMVarAssignment? mvarId then
        -- Eta expand `e` for the requisite number of arguments.
        forallBoundedTelescope mvarDecl.type fvars.size fun args _ => do
          mkLambdaFVars args <| mkAppN e args
      else
        pure e
    modify fun s => { s with
      newLocalDeclsForMVars := s.newLocalDeclsForMVars.push $ .cdecl default newFVarId userName type .default .default,
      exprMVarArgs          := s.exprMVarArgs.push e'
    }
    return mkFVar newFVarId
  | Expr.fvar fvarId =>
    match (← read).zetaDelta, (← fvarId.getValue?) with
    | true, some value => collect (← preprocess value)
    | _,    _          =>
      let newFVarId ← mkFreshFVarId
      pushToProcess ⟨fvarId, newFVarId⟩
      return mkFVar newFVarId
  | e => pure e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c6d4bf86de09eb83908509cbc19b387f8cdc38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
