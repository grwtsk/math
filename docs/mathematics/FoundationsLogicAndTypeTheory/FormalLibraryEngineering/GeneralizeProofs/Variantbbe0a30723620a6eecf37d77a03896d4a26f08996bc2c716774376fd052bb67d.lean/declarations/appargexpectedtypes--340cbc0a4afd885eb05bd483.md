# appArgExpectedTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:817b5de72bbafa60b1e2d717ce8aa98a7ffe227a097b90715146f58fe9a58de8",
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
  "slug": "appargexpectedtypes--340cbc0a4afd885eb05bd483",
  "source": {
    "blob": "d34f5eb32aee3e3b197dc9c213c98dc012213b7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:340cbc0a4afd885eb05bd48326383cfbd7895d53b3f0c6d840acbe80c6b5ae2b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:817b5de72bbafa60b1e2d717ce8aa98a7ffe227a097b90715146f58fe9a58de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–200.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variantbbe0a30723620a6eecf37d77a03896d4a26f08996bc2c716774376fd052bb67d.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34f5eb32aee3e3b197dc9c213c98dc012213b7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
