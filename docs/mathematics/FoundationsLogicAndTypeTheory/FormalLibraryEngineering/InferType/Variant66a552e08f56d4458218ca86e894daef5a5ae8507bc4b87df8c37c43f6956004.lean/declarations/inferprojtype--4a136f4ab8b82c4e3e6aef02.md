# inferProjType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61c34705e0cb8bc41347d8611d28070d076e93048eaafb7b4bf99a92184ab510",
  "kind": "def",
  "lexical_name": "inferProjType",
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
  "slug": "inferprojtype--4a136f4ab8b82c4e3e6aef02",
  "source": {
    "blob": "01a650ea6298deb3943c944ddcd7afa58234b76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a136f4ab8b82c4e3e6aef0242ad6ccc2ebecbbc394066efc14032c13dab2cdc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61c34705e0cb8bc41347d8611d28070d076e93048eaafb7b4bf99a92184ab510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def inferProjType (structName : Name) (idx : Nat) (s : FVarId) : InferTypeM Expr := do
    let failed {α} : Unit → InferTypeM α := fun _ =>
      throwError "invalid projection{indentExpr (mkProj structName idx (mkFVar s))}"
    let structType := (← getType s).headBeta
    if structType.isErased then
      /- TODO: after we erase universe variables, we can just extract a better type using just `structName` and `idx`. -/
      return erasedExpr
    else if structType.isAny then
      return anyExpr
    else
      matchConstStructure structType.getAppFn failed fun structVal structLvls ctorVal =>
        let structTypeArgs := structType.getAppArgs
        if structVal.numParams + structVal.numIndices != structTypeArgs.size then
          failed ()
        else do
          let mut ctorType ← inferAppType (mkAppN (mkConst ctorVal.name structLvls) structTypeArgs[*...structVal.numParams])
          for _ in *...idx do
            match ctorType with
            | .forallE _ _ body _ =>
              if body.hasLooseBVars then
                -- This can happen when one of the fields is a type or type former.
                ctorType := body.instantiate1 anyExpr
              else
                ctorType := body
            | _ =>
              if ctorType.isErased then return erasedExpr
              failed ()
          match ctorType with
          | .forallE _ d _ _ => return d
          | _ =>
            if ctorType.isErased then return erasedExpr
            failed ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01a650ea6298deb3943c944ddcd7afa58234b76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
