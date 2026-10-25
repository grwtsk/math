# appArgExpectedTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b89e50d0b8a302316c282c84b0821520f092c197ebc02606381222e9ef7f033a",
  "kind": "def",
  "lexical_name": "appArgExpectedTypes",
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
  "slug": "appargexpectedtypes--5f5363794c2f344d7750780d",
  "source": {
    "blob": "6d13bfa7a36083eb7d8578b038e9db071990e897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f5363794c2f344d7750780d5bb3d5fc5e7edab1e4d59c810ef7ee439a65f76d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b89e50d0b8a302316c282c84b0821520f092c197ebc02606381222e9ef7f033a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def appArgExpectedTypes (f : Expr) (args : Array Expr) (ty? : Option Expr) :
    MetaM (Array (Option Expr)) :=
  withTransparency .all <| withNewMCtxDepth do
    -- Try using the expected type, but (*) below might find a bad solution
    (guard ty?.isSome *> go f args ty?) <|> go f args none
where
  /-- Core implementation for `appArgExpectedTypes`. -/
  go (f : Expr) (args : Array Expr) (ty? : Option Expr) : MetaM (Array (Option Expr)) := do
    -- Metavariables for each argument to `f`:
    let mut margs := #[]
    -- The current type of `mAppN f margs`:
    let mut fty ← inferType f
    -- Whether we have already unified the type `ty?` with `fty` (once `margs` is filled)
    let mut unifiedFTy := false
    for h : i in [0 : args.size] do
      unless i < margs.size do
        let (margs', _, fty') ← forallMetaBoundedTelescope fty (args.size - i)
        if margs'.isEmpty then throwError "could not make progress at argument {i}"
        fty := fty'
        margs := margs ++ margs'
      let arg := args[i]
      let marg := margs[i]!
      if !unifiedFTy && margs.size == args.size then
        if let some ty := ty? then
          unifiedFTy := (← observing? <| isDefEq fty ty).getD false -- (*)
      unless ← isDefEq (← inferType marg) (← inferType arg) do
        throwError s!"failed isDefEq types {i}, {← ppExpr marg}, {← ppExpr arg}"
      unless ← isDefEq marg arg do
        throwError s!"failed isDefEq values {i}, {← ppExpr marg}, {← ppExpr arg}"
      unless ← marg.mvarId!.isAssigned do
        marg.mvarId!.assign arg
    margs.mapM fun marg => do
      -- Note: all mvars introduced by `appArgExpectedTypes` are assigned by this point
      -- so there is no mvar leak.
      return (← instantiateMVars (← inferType marg)).cleanupAnnotations

/--
Does `mkLambdaFVars fvars e` but
1. zeta reduces let bindings
2. only includes used fvars
3. returns the list of fvars that were actually abstracted
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d13bfa7a36083eb7d8578b038e9db071990e897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
