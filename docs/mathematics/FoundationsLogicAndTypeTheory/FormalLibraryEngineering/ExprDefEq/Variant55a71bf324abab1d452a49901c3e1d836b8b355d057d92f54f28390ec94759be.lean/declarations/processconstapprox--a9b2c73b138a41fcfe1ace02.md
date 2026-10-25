# processConstApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4049518c25aa58c571fc71f3eca544985010577444175834432f813ebda82b89",
  "kind": "def",
  "lexical_name": "processConstApprox",
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
  "slug": "processconstapprox--a9b2c73b138a41fcfe1ace02",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1320,
    "line": 1279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9b2c73b138a41fcfe1ace020628785849061236f54925cc70685ebf931f44ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4049518c25aa58c571fc71f3eca544985010577444175834432f813ebda82b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1279–1320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processConstApprox (mvar : Expr) (args : Array Expr) (patternVarPrefix : Nat) (v : Expr) : MetaM Bool := do
  trace[Meta.isDefEq.constApprox] "{mvar} {args} := {v}"
  let rec defaultCase : MetaM Bool := assignConst mvar args.size v
  let cfg ← getConfig
  let mvarId := mvar.mvarId!
  let mvarDecl ← mvarId.getDecl
  let numArgs := args.size
  if mvarDecl.numScopeArgs != numArgs && !cfg.constApprox then
    return false
  else if patternVarPrefix == 0 then
    defaultCase
  else
    let argsPrefix : Array Expr := args[*...patternVarPrefix]
    let type ← instantiateForall mvarDecl.type argsPrefix
    let suffixSize := numArgs - argsPrefix.size
    forallBoundedTelescope type suffixSize fun xs _ => do
      if xs.size != suffixSize then
        defaultCase
      else
        let some v ← mkLambdaFVarsWithLetDeps xs v | defaultCase
        let rec go (argsPrefix : Array Expr) (v : Expr) : MetaM Bool := do
          trace[Meta.isDefEq] "processConstApprox.go {mvar} {argsPrefix} := {v}"
          let rec cont : MetaM Bool := do
            if argsPrefix.isEmpty then
              defaultCase
            else
              let some v ← mkLambdaFVarsWithLetDeps #[argsPrefix.back!] v | defaultCase
              go argsPrefix.pop v
          match (← checkAssignment mvarId argsPrefix v) with
          | none      => cont
          | some vNew =>
            let some vNew ← mkLambdaFVarsWithLetDeps argsPrefix vNew | cont
            if argsPrefix.any (fun arg => mvarDecl.lctx.containsFVar arg) then
              /- We need to type check `vNew` because abstraction using `mkLambdaFVars` may have produced
                 a type incorrect term. See discussion at A2 -/
              (isTypeCorrect vNew <&&> checkTypesAndAssign mvar vNew) <||> cont
            else
              checkTypesAndAssign mvar vNew <||> cont
        go argsPrefix v

/-- Tries to solve `?m a₁ ... aₙ =?= v` by assigning `?m`.
    It assumes `?m` is unassigned. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L1279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
