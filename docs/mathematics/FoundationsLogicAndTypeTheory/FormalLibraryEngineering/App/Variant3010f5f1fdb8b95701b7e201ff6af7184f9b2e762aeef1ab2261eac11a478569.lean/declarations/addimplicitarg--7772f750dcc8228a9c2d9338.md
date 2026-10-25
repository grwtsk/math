# addImplicitArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c647216a994f9bc058dd6cf798054236233b0fa6e4d0d261ca083db326e326b3",
  "kind": "def",
  "lexical_name": "addImplicitArg",
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
  "slug": "addimplicitarg--7772f750dcc8228a9c2d9338",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 745,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7772f750dcc8228a9c2d93385298282aa54acd9abe9e7e54c928699382ce4059",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c647216a994f9bc058dd6cf798054236233b0fa6e4d0d261ca083db326e326b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 745–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def addImplicitArg (argName : Name) : M Expr := do
    let argType ← getArgExpectedType
    let arg ← if (← isNextOutParamOfLocalInstanceAndResult) then
      let arg ← mkFreshExprMVar argType
      /- When the result type is an output parameter, we don't want to propagate the expected type.
         So, we just mark `propagateExpected := false` to disable it.
         At `finalize`, we check whether `arg` is still unassigned, if it is, we apply default instances,
         and try to synthesize pending mvars. -/
      modify fun s => { s with resultTypeOutParam? := some arg.mvarId!, propagateExpected := false }
      trace[Elab.app.propagateExpectedType] "result type is an output parameter, propagation disabled"
      pure arg
    else
      mkFreshExprMVar argType
    modify fun s => { s with toSetErrorCtx := s.toSetErrorCtx.push arg.mvarId! }
    addNewArg argName arg
    main

  /--
  Process a `fType` of the form `(x : A) → B x`.
  This method assume `fType` is a function type.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L745).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
