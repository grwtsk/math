# toBelowAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66b5fbf01d1053d574065e84c9ecce3037bd479374e5d79f441b1f7e92353272",
  "kind": "def",
  "lexical_name": "toBelowAux",
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
  "slug": "tobelowaux--a9dd73f671f7bcb00c574af4",
  "source": {
    "blob": "24e63dca8a6878e21221fb6336a724e08d99bb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9dd73f671f7bcb00c574af4779568b41685b87d39fc9e97fdb8d6b1bfb0fdf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66b5fbf01d1053d574065e84c9ecce3037bd479374e5d79f441b1f7e92353272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def toBelowAux (C : Expr) (belowDict : Expr) (arg : Expr) (F : Expr) : MetaM Expr := do
  trace[Elab.definition.structural] "belowDict start:{indentExpr belowDict}\narg:{indentExpr arg}"
  -- First search through the PProd packing of the different `brecOn` motives
  searchPProd belowDict F fun belowDict F => do
    trace[Elab.definition.structural] "belowDict step 1:{indentExpr belowDict}"
    -- Then instantiate parameters of a reflexive type, if needed
    forallTelescopeReducing belowDict fun xs belowDict => do
      let arg ← zetaReduce arg
      let argArgs := arg.getAppArgs
      unless argArgs.size >= xs.size do throwToBelowFailed
      let n := argArgs.size
      let argTailArgs := argArgs.extract (n - xs.size) n
      let belowDict := belowDict.replaceFVars xs argTailArgs
      -- And again search through the PProd packing due to multiple functions recursing on the
      -- same inductive data type
      -- (We could use the funIdx and the `positions` array to replace this search with more
      -- targeted indexing.)
      searchPProd belowDict (mkAppN F argTailArgs) fun belowDict F => do
        trace[Elab.definition.structural] "belowDict step 2:{indentExpr belowDict}"
        match belowDict with
        | .app belowDictFun belowDictArg =>
          unless belowDictFun.getAppFn == C do throwToBelowFailed
          unless ← isDefEq belowDictArg arg do throwToBelowFailed
          pure F
        | _ =>
          trace[Elab.definition.structural] "belowDict not an app:{indentExpr belowDict}"
          throwToBelowFailed

/-- See `toBelow` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e63dca8a6878e21221fb6336a724e08d99bb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
