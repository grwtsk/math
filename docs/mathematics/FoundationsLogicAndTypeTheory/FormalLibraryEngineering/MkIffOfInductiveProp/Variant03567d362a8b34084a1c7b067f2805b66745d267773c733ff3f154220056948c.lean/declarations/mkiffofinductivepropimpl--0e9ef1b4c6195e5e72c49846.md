# mkIffOfInductivePropImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ad44b0eab2b1dfb67fac9973a67fb31d39ac69274ccfb36250154969e4b242b",
  "kind": "def",
  "lexical_name": "mkIffOfInductivePropImpl",
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
  "slug": "mkiffofinductivepropimpl--0e9ef1b4c6195e5e72c49846",
  "source": {
    "blob": "068d112745a91e0800c116b795d31fe8c3265491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e9ef1b4c6195e5e72c498461463df3a61e13959a80ccb5bacc2eece93c87064",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ad44b0eab2b1dfb67fac9973a67fb31d39ac69274ccfb36250154969e4b242b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkIffOfInductivePropImpl (inductVal : InductiveVal) (rel : Name) : MetaM Unit := do
  let constrs := inductVal.ctors
  let params := inductVal.numParams
  let type := inductVal.type

  let univNames := inductVal.levelParams
  let univs := univNames.map mkLevelParam
  /- we use these names for our universe parameters, maybe we should construct a copy of them
  using `uniq_name` -/

  let (thmTy, shape, existential) ← Meta.forallTelescopeReducing type fun fvars ty ↦ do
    if !ty.isProp then throwError "mk_iff only applies to prop-valued declarations"
    let lhs := mkAppN (mkConst inductVal.name univs) fvars
    let fvars' := fvars.toList
    let shape_rhss ← constrs.mapM (constrToProp univs (fvars'.take params) (fvars'.drop params))
    let (shape, rhss) := shape_rhss.unzip
    let existential := mkOrList rhss
    let existential ← mkLambdaFVars fvars existential
    pure (← mkForallFVars fvars (mkApp2 (mkConst `Iff) lhs (mkOrList rhss)), shape, existential)

  trace[Meta.MkIffOfInductiveProp] "Existential form is: {existential}"
  trace[Meta.MkIffOfInductiveProp] "The type of proof of equivalence: {thmTy}"

  let mvar ← mkFreshExprMVar (some thmTy)
  let mvarId := mvar.mvarId!
  let (fvars, mvarId') ← mvarId.intros
  let [mp, mpr] ← mvarId'.apply (mkConst `Iff.intro) | throwError "failed to split goal"

  toCases mp shape
  let ⟨mprFvar, mpr'⟩ ← mpr.intro1
  toInductive mpr' constrs ((fvars.toList.take params).map .fvar) shape mprFvar

  let proof ← instantiateMVars mvar
  addDecl <| (←mkThmOrUnsafeDef {
    name := rel
    levelParams := univNames
    type := thmTy
    value := proof
  })

  addDecl <| .defnDecl (←mkDefinitionValInferringUnsafe
    (inductVal.name ++ `existential) inductVal.levelParams
    (←inferType existential) existential .opaque)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant03567d362a8b34084a1c7b067f2805b66745d267773c733ff3f154220056948c.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068d112745a91e0800c116b795d31fe8c3265491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
