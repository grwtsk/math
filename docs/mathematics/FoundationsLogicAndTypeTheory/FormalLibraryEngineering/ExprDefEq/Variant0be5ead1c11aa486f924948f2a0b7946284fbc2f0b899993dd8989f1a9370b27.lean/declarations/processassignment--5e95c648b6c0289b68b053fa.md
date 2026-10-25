# processAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adfa4442e01054d1bf3e35f2090cfb9ee4518b4c8a18b550fc7b68f04a063d42",
  "kind": "def",
  "lexical_name": "processAssignment",
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
  "slug": "processassignment--5e95c648b6c0289b68b053fa",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1366,
    "line": 1313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e95c648b6c0289b68b053faaa8feab4324d06069bb9805ca6516b6fa98df18b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adfa4442e01054d1bf3e35f2090cfb9ee4518b4c8a18b550fc7b68f04a063d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1313–1366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private partial def processAssignment (mvarApp : Expr) (v : Expr) : MetaM Bool :=
  withTraceNodeBefore `Meta.isDefEq.assign (fun _ => return m!"{mvarApp} := {v}") do
    let mvar := mvarApp.getAppFn
    let mvarDecl ← mvar.mvarId!.getDecl
    let rec process (i : Nat) (args : Array Expr) (v : Expr) := do
      let cfg ← getConfig
      let useFOApprox (args : Array Expr) : MetaM Bool :=
        processAssignmentFOApprox mvar args v <||> processConstApprox mvar args i v
      if h : i < args.size then
        let arg := args[i]
        let arg ← simpAssignmentArg arg
        let args := args.set i arg
        match arg with
        | .fvar fvarId =>
          if args[*...i].any fun prevArg => prevArg == arg then
            useFOApprox args
          else if mvarDecl.lctx.contains fvarId && !cfg.quasiPatternApprox then
            useFOApprox args
          else
            process (i+1) args v
        | _ =>
          useFOApprox args
      else
        let v ← instantiateMVars v -- enforce A4
        if v.getAppFn == mvar then
          -- using A6
          useFOApprox args
        else
          let mvarId := mvar.mvarId!
          match (← checkAssignment mvarId args v) with
          | none   => useFOApprox args
          | some v => do
            trace[Meta.isDefEq.assign.beforeMkLambda] "{mvar} {args} := {v}"
            let some v ← mkLambdaFVarsWithLetDeps args v | return false
            if args.any (fun arg => mvarDecl.lctx.containsFVar arg) then
              /- We need to type check `v` because abstraction using `mkLambdaFVars` may have produced
                 a type incorrect term. See discussion at A2 -/
              if (← isTypeCorrect v) then
                checkTypesAndAssign mvar v
              else
                trace[Meta.isDefEq.assign.typeError] "{mvar} := {v}"
                useFOApprox args
            else
              checkTypesAndAssign mvar v
    process 0 mvarApp.getAppArgs v

/--
  Similar to processAssignment, but if it fails, compute v's whnf and try again.
  This helps to solve constraints such as `?m =?= { α := ?m, ... }.α`
  Note this is not perfect solution since we still fail occurs check for constraints such as
  ```lean
    ?m =?= List { α := ?m, β := Nat }.β
  ```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L1313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
