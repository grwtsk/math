# preprocessOutParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3218371eef0ccb15d3fa781775102783ffae9ea5ee165e911652385e07fdf6b9",
  "kind": "def",
  "lexical_name": "preprocessOutParam",
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
  "slug": "preprocessoutparam--ddfb9a9468241fa011723251",
  "source": {
    "blob": "e608408e1c1d850abed1de7230db8288ff187fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 783,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddfb9a9468241fa0117232517214dfe476636d2098ab8a4e2330e7f8a9214689",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3218371eef0ccb15d3fa781775102783ffae9ea5ee165e911652385e07fdf6b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def preprocessOutParam (type : Expr) : MetaM Expr :=
  forallTelescope type fun xs typeBody => do
    /- **Note**: See similar test at preprocess. -/
    if typeBody.isConst then return type
    let c := typeBody.getAppFn
    let .const declName us := c | return type
    let env ← getEnv
    let some outParamsPos := getOutParamPositions? env declName | return type
    let some outLevelParamPos := getOutLevelParamPositions? env declName | unreachable!
    if outParamsPos.isEmpty && outLevelParamPos.isEmpty then return type
    let c ← if outLevelParamPos.isEmpty then pure c else
      -- Replace universe parameters corresponding to output parameters with fresh universe metavariables.
      let rec preprocessLevels (us : List Level) (i : Nat) : MetaM (List Level) := do
        match us with
        | [] => return []
        | u :: us =>
          let u ← if i ∈ outLevelParamPos then mkFreshLevelMVar else pure u
          let us ← preprocessLevels us (i+1)
          return u :: us
      pure <| mkConst declName (← preprocessLevels us 0)
    let rec preprocessArgs (type : Expr) (i : Nat) (args : Array Expr) : MetaM (Array Expr) := do
      if h : i < args.size then
        let type ← whnf type
        match type with
        | .forallE _ d b _ => do
          let arg := args[i]
          /-
          We should not simply check `d.isOutParam`. See `checkOutParam` and issue #1852.
          If an instance implicit argument depends on an `outParam`, it is treated as an `outParam` too.
          -/
          let arg ← if outParamsPos.contains i then mkFreshExprMVar d else pure arg
          let args := args.set i arg
          preprocessArgs (b.instantiate1 arg) (i+1) args
        | _ =>
          throwError "type class resolution failed, insufficient number of arguments" -- TODO improve error message
      else
        return args
    let args := typeBody.getAppArgs
    if outParamsPos.isEmpty then
      mkForallFVars xs (mkAppN c args)
    else
      let cType ← inferType c
      let args ← preprocessArgs cType 0 args
      mkForallFVars xs (mkAppN c args)

/-!
  Remark: when `maxResultSize? == none`, the configuration option `synthInstance.maxResultSize` is used.
  Remark: we use a different option for controlling the maximum result size for coercions.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e608408e1c1d850abed1de7230db8288ff187fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
