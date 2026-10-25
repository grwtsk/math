# mkHCongrWithArity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c6fe776dd6e092cfc858f6afe0130176d83b379357b5c8e2fe135601f1ed51b",
  "kind": "def",
  "lexical_name": "mkHCongrWithArity'",
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
  "slug": "mkhcongrwitharity--307f7e31358bb5ab0678f5b0",
  "source": {
    "blob": "9690694fe098f0833dbcd836d4799e96302a3af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:307f7e31358bb5ab0678f5b016a17ff6ab022d27e26f1cb7f7d9fd9ac518ebab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c6fe776dd6e092cfc858f6afe0130176d83b379357b5c8e2fe135601f1ed51b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkHCongrWithArity' (f : Expr) (numArgs : Nat) : MetaM CongrTheorem := do
  let thm ← mkHCongrWithArity f numArgs
  process thm thm.type thm.argKinds.toList #[] #[] #[] #[]
where
  /--
  Process the congruence theorem by trying to pre-prove arguments using `prove`.

  - `cthm` is the original `CongrTheorem`, modified only after visiting every argument.
  - `type` is type of the congruence theorem, after all the parameters so far have been applied.
  - `argKinds` is the list of `CongrArgKind`s, which this function recurses on.
  - `argKinds'` is the accumulated array of `CongrArgKind`s, which is the original array but
    with some kinds replaced by `.subsingletonInst`.
  - `params` is the *new* list of parameters, as fvars that need to be abstracted at the end.
  - `args` is the list of arguments (fvars) to supply to `cthm.proof` before abstracting `params`.
  - `letArgs` records `(fvar, expr)` assignments for each `fvar` that was solved for by `prove`.
  -/
  process (cthm : CongrTheorem) (type : Expr) (argKinds : List CongrArgKind)
      (argKinds' : Array CongrArgKind) (params args : Array Expr)
      (letArgs : Array (Expr × Expr)) : MetaM CongrTheorem := do
    match argKinds with
    | [] =>
      if letArgs.isEmpty then
        -- Then we didn't prove anything, so we can use the CongrTheorem as-is.
        return cthm
      else
        let proof := letArgs.foldr (init := mkAppN cthm.proof args) (fun (fvar, val) proof =>
          (proof.abstract #[fvar]).instantiate1 val)
        let pf' ← mkLambdaFVars params proof
        return {proof := pf', type := ← inferType pf', argKinds := argKinds'}
    | argKind :: argKinds =>
      match argKind with
      | .eq | .heq =>
        forallBoundedTelescope type (some 3) fun params' type' => do
          let #[x, y, eq] := params' | unreachable!
          -- See if we can prove `Eq` from previous parameters.
          let g := (← mkFreshExprMVar (← inferType eq)).mvarId!
          let g ← g.clear eq.fvarId!
          if (← observing? <| prove g args).isSome then
            let eqPf ← instantiateMVars (.mvar g)
            process cthm type' argKinds (argKinds'.push .subsingletonInst)
              (params := params ++ #[x, y]) (args := args ++ params')
              (letArgs := letArgs.push (eq, eqPf))
          else
            process cthm type' argKinds (argKinds'.push argKind)
              (params := params ++ params') (args := args ++ params')
              (letArgs := letArgs)
      | _ => panic! "Unexpected CongrArgKind"
  /-- Close the goal given only the fvars in `params`, or else fails. -/
  prove (g : MVarId) (params : Array Expr) : MetaM Unit := do
    -- Prune the local context.
    let g ← g.cleanup
    -- Substitute equalities that come from only this congruence lemma.
    let [g] ← g.casesRec fun localDecl => do
      return (localDecl.type.isEq || localDecl.type.isHEq) && params.contains localDecl.toExpr
      | failure
    try g.refl; return catch _ => pure ()
    try g.hrefl; return catch _ => pure ()
    if ← g.proofIrrelHeq then return
    -- Make the goal be an eq and then try `Subsingleton.elim`
    let g ← g.heqOfEq
    if ← g.subsingletonElim then return
    -- We have no more tricks.
    failure

universe u v

/-- A version of `Subsingleton` with few instances. It should fail fast. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant2361df2bb6076ae7b4184526e06e0ea38096bbdcc13d3af5882c9fdc2455df4c.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9690694fe098f0833dbcd836d4799e96302a3af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
