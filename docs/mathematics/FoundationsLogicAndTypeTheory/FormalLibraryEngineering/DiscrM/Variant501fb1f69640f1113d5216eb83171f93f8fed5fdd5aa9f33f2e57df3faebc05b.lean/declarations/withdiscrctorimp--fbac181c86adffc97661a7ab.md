# withDiscrCtorImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b88f5ce68b97c118abd5cda835791feb5fb3099a89c5c7e200775abb800aeecc",
  "kind": "def",
  "lexical_name": "withDiscrCtorImp",
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
  "slug": "withdiscrctorimp--fbac181c86adffc97661a7ab",
  "source": {
    "blob": "c2ff62fb683154647e7bfc58d4511d644c67ae42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbac181c86adffc97661a7ab7fe199ba487d14b0d857e27172f363869fe1d4f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b88f5ce68b97c118abd5cda835791feb5fb3099a89c5c7e200775abb800aeecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def withDiscrCtorImp (discr : FVarId) (ctorName : Name)
    (ctorFields : Array (Param .pure)) (x : DiscrM α) : DiscrM α := do
  let ctx ← updateCtx
  withReader (fun _ => ctx) x
where
  updateCtx : DiscrM DiscrM.Context := do
    let ctorVal ← getConstInfoCtor ctorName
    let fieldArgs := ctorFields.map (Arg.fvar ·.fvarId)
    let ctx ← read
    if let some (us, params) ← getIndInfo? (← getType discr) ctorVal.induct then
      let ctorArgs := params ++ fieldArgs
      let ctorInfo := .ctor ctorVal ctorArgs
      let ctor := LetValue.const ctorVal.name us ctorArgs
      return { ctx with discrCtorMap := ctx.discrCtorMap.insert discr ctorInfo, ctorDiscrMap := ctx.ctorDiscrMap.insert ctor.toExpr discr }
    else
      -- For the discrCtor map, the constructor parameters are irrelevant for optimizations that use this information
      let ctorInfo := .ctor ctorVal (.replicate ctorVal.numParams Arg.erased ++ fieldArgs)
      return { ctx with discrCtorMap := ctx.discrCtorMap.insert discr ctorInfo }

@[inline, inherit_doc withDiscrCtorImp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrM/Variant501fb1f69640f1113d5216eb83171f93f8fed5fdd5aa9f33f2e57df3faebc05b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2ff62fb683154647e7bfc58d4511d644c67ae42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
