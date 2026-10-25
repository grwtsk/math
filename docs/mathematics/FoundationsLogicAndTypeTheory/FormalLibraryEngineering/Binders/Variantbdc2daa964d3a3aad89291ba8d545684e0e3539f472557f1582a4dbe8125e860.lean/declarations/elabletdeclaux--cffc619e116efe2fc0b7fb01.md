# elabLetDeclAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98ba87c5e537974b6d0c874eebf772f32941abaa3b8f1c0e1b1fcd4f877d520c",
  "kind": "def",
  "lexical_name": "elabLetDeclAux",
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
  "slug": "elabletdeclaux--cffc619e116efe2fc0b7fb01",
  "source": {
    "blob": "f231e0603e9ee2639fdca4b396b06e20111c1cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 753,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cffc619e116efe2fc0b7fb015b68cb095ea48669e6a0840b5a41f53eea2b7262",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98ba87c5e537974b6d0c874eebf772f32941abaa3b8f1c0e1b1fcd4f877d520c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabLetDeclAux (id : Syntax) (binders : Array Syntax) (typeStx : Syntax) (valStx : Syntax) (body : Syntax)
    (expectedType? : Option Expr) (config : LetConfig) : TermElabM Expr := do
  if config.generalize then
    if config.postponeValue then
      throwError "`+postponeValue` and `+generalize` are incompatible"
    tryPostponeIfNoneOrMVar expectedType?
  let (type, val, binders) ← elabBindersEx binders fun xs => do
    let (binders, fvars) := xs.unzip
    /-
    We use `withSynthesize` to ensure that any postponed elaboration problem
    and nested tactics in `type` are resolved before elaborating `val`.
    Resolved: we want to avoid synthetic opaque metavariables in `type`.
    Recall that this kind of metavariable is non-assignable, and `isDefEq`
    may waste a lot of time unfolding declarations before failing.
    See issue #4051 for an example.

    Here is the analysis for issue #4051.
    - Given `have x : type := value; body`, we were previously elaborating `value` even
      if `type` contained postponed elaboration problems.
    - Moreover, the metavariables in `type` corresponding to postponed elaboration
      problems cannot be assigned by `isDefEq` since the elaborator is supposed to assign them.
    - Then, when checking whether type of `value` is definitionally equal to `type`,
      a very long-time was spent unfolding a bunch of declarations before it failed.
      In #4051, it was unfolding `Array.swaps` which is defined by well-founded recursion.
      After the failure, the elaborator inserted a postponed coercion
      that would be resolved later as soon as the types don't have unassigned metavariables.

    We use `postpone := .partial` to allow type class (TC) resolution problems to be postponed
    Recall that TC resolution does **not** produce synthetic opaque metavariables.
    -/
    let type ← withSynthesize (postpone := .partial) <| elabType typeStx
    let letMsg := if config.nondep then "have" else "let"
    registerCustomErrorIfMVar type typeStx m!"failed to infer `{letMsg}` declaration type"
    registerLevelMVarErrorExprInfo type typeStx m!"failed to infer universe levels in `{letMsg}` declaration type"
    if config.postponeValue then
      let type ← mkForallFVars fvars type
      let val  ← mkFreshExprMVar type
      pure (type, val, binders)
    else
      /-
      Elaborate the value in a context where the binders have cleaned-up annotations
      Note: we may want `withFreshCache` in case spurious type annotations appear in terms.
      -/
      let lctx' := fvars.foldl (init := ← getLCtx) fun lctx fvar =>
        lctx.modifyLocalDecl fvar.fvarId! (fun decl => decl.setType decl.type.cleanupAnnotations)
      let val ← withLCtx' lctx' do
        let val ← elabTermEnsuringType valStx type
        /-
        By default `mkLambdaFVars` and `mkLetFVars` create binders only for let-declarations that are actually used
        in the body. This generates counterintuitive behavior in the elaborator since users will not be notified
        about holes such as
        ```
        def ex : Nat :=
          let x := _
          42
        ```
        -/
        mkLambdaFVars fvars val (usedLetOnly := false)
      let type ← mkForallFVars fvars type
      pure (type, val, binders)
  let kind := .ofBinderName id.getId
  trace[Elab.let.decl] "{id.getId} : {type} := {val}"
  let result ←
    withLetDecl id.getId (kind := kind) type val (nondep := config.nondep) fun x => do
      let elabBody : TermElabM Expr := do
        let mut expectedType? := expectedType?
        if config.generalize then
          let throwNoType := throwError "failed to elaborate with `+generalize`, expected type is not available"
          let some expectedType := expectedType? | throwNoType
          let expectedType ← instantiateMVars expectedType
          if expectedType.getAppFn.isMVar then throwNoType
          let motiveBody ← kabstract expectedType (← instantiateMVars val)
          let motive := motiveBody.instantiate1 x
          -- When `config.nondep` is false, then `motive` will be definitionally equal to `expectedType`.
          -- Type correctness only needs to be checked in the `nondep` case:
          if config.nondep then
            unless (← isTypeCorrect motive) do
              throwError "failed to elaborate with `+generalize`, generalized expected type is not type correct:{indentD motive}"
          expectedType? := motive
        elabTermEnsuringType body expectedType? >>= instantiateMVars
      addLocalVarInfo id x
      match config.eq? with
      | none =>
        let body ← elabBody
        if config.zeta then
          pure <| (← body.abstractM #[x]).instantiate1 val
        else
          mkLetFVars #[x] body (usedLetOnly := config.usedOnly) (generalizeNondepLet := false)
      | some h =>
        let hTy ← mkEq x val
        withLetDecl h.getId hTy (← mkEqRefl x) (nondep := true) fun h' => do
          addLocalVarInfo h h'
          let body ← elabBody
          if config.zeta then
            pure <| (← body.abstractM #[x, h']).instantiateRev #[val, ← mkEqRefl val]
          else if config.nondep then
            -- TODO(kmill): Think more about how to encode this case.
            -- Currently we produce `(fun (x : α) (h : x = val) => b) val rfl`.
            -- N.B. the nondep lets become lambdas here.
            let f ← mkLambdaFVars #[x, h'] body
            return mkApp2 f val (← mkEqRefl val)
          else
            mkLetFVars #[x, h'] body (usedLetOnly := config.usedOnly) (generalizeNondepLet := false)
  if config.postponeValue then
    forallBoundedTelescope type binders.size (cleanupAnnotations := true) fun xs type => do
      -- the original `fvars` from above are gone, so add back info manually
      for b in binders, x in xs do
        addLocalVarInfo b x
      let valResult ← elabTermEnsuringType valStx type
      let valResult ← mkLambdaFVars xs valResult (usedLetOnly := false)
      unless (← isDefEq val valResult) do
        throwError "unexpected error when elaborating 'let'"
  pure result

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantbdc2daa964d3a3aad89291ba8d545684e0e3539f472557f1582a4dbe8125e860.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f231e0603e9ee2639fdca4b396b06e20111c1cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
