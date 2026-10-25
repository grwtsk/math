# unReplaceRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b882169261e23dae31b70ac2b78d4c365ef47e31b33536482e4418a444b6a72",
  "kind": "def",
  "lexical_name": "unReplaceRecApps",
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
  "slug": "unreplacerecapps--b8c76c42a07b26626c6ca5bf",
  "source": {
    "blob": "23db6ca0d9fc924dd5d0d68818fdf2e34c62edc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8c76c42a07b26626c6ca5bfad9202013d71148a768e2378afa4657eeaa00216",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b882169261e23dae31b70ac2b78d4c365ef47e31b33536482e4418a444b6a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def unReplaceRecApps {α} (preDefs : Array PreDefinition) (fixedParamPerms : FixedParamPerms) (fixedArgs : Array Expr)
    (F : Expr) (k : Expr → MetaM α) : MetaM α := do
  unless F.isLambda do throwError "Expected lambda:{indentExpr F}"
  withoutModifyingEnv do
    preDefs.forM addAsAxiom
    let fns ← preDefs.mapIdxM fun funIdx preDef => do
      let value ← fixedParamPerms.perms[funIdx]!.instantiateLambda preDef.value fixedArgs
      lambdaTelescope value fun xs _ =>
        let args := fixedParamPerms.perms[funIdx]!.buildArgs fixedArgs xs
        let call := mkAppN (.const preDef.declName (preDef.levelParams.map mkLevelParam)) args
        mkLambdaFVars (etaReduce := true) xs call
    let packedFn ← PProdN.mk 0 fns
    let e ← lambdaBoundedTelescope F 1 fun f e => do
      let f := f[0]!
      -- Replace f with calls to the constants
      let e := e.replace fun e => do
        if e == f then return packedFn else none
      -- And reduce projection and beta redexes
      -- (This is a bit blunt; we could try harder to only replace the projection and beta-redexes
      -- introduced above)
      let e ← PProdN.reduceProjs e
      let e ← Core.betaReduce e
      pure e
    k e

/--
Given two type-proof pairs for `monotone f` and `monotone g`, constructs a type-proof pair for `monotone fun x => ⟨f x, g x⟩`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23db6ca0d9fc924dd5d0d68818fdf2e34c62edc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
