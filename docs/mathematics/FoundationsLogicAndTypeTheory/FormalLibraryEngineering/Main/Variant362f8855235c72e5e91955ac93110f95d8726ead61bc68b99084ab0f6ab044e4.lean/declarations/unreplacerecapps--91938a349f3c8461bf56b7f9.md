# unReplaceRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3589e5ef1f0a1ab375ae5bf19256568b342825cf4a854b2713832f4954b514db",
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
  "slug": "unreplacerecapps--91938a349f3c8461bf56b7f9",
  "source": {
    "blob": "ebfa3041c169de702d94362cd5f068a2a4308581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant362f8855235c72e5e91955ac93110f95d8726ead61bc68b99084ab0f6ab044e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91938a349f3c8461bf56b7f99b0182705c21b36ffac88adaa59811f627c16dd8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant362f8855235c72e5e91955ac93110f95d8726ead61bc68b99084ab0f6ab044e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3589e5ef1f0a1ab375ae5bf19256568b342825cf4a854b2713832f4954b514db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–72.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant362f8855235c72e5e91955ac93110f95d8726ead61bc68b99084ab0f6ab044e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant362f8855235c72e5e91955ac93110f95d8726ead61bc68b99084ab0f6ab044e4.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfa3041c169de702d94362cd5f068a2a4308581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
