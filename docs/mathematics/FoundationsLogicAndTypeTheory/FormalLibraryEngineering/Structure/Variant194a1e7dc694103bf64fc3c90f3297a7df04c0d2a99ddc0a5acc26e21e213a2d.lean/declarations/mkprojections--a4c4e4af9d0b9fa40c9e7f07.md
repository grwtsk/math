# mkProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0254722c7cf85de481a4c40d119d80723a0b101b1417b535ebb65b0915d5435",
  "kind": "def",
  "lexical_name": "mkProjections",
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
  "slug": "mkprojections--a4c4e4af9d0b9fa40c9e7f07",
  "source": {
    "blob": "131b774c312459c025a2c4021f69ec6cb0b02045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4c4e4af9d0b9fa40c9e7f07d5e7745d0557331d008f7860391ac7bfec1d0368",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0254722c7cf85de481a4c40d119d80723a0b101b1417b535ebb65b0915d5435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkProjections (n : Name) (projDecls : Array StructProjDecl) (instImplicit : Bool) : MetaM Unit :=
  withLCtx {} {} do
    let indVal ← getConstInfoInduct n
    if indVal.numCtors != 1 then
      throwError "cannot generate projections for `{.ofConstName n}`, does not have exactly one constructor"
    let ctorVal ← getConstInfoCtor indVal.ctors.head!
    let isPredicate ← isPropFormerType indVal.type
    let lvls := indVal.levelParams.map mkLevelParam
    forallBoundedTelescope ctorVal.type indVal.numParams fun params ctorType => do
      if params.size != indVal.numParams then
        throwError "projection generation failed, `{.ofConstName n}` is an ill-formed inductive datatype"
      let selfType := mkAppN (.const n lvls) params
      let selfBI : BinderInfo := if instImplicit then .instImplicit else .default
      withLocalDecl `self selfBI selfType fun self => do
        let projArgs := params.push self
        -- Make modifications to parameter binder infos that apply to all projections
        let mut lctx ← getLCtx
        for param in params do
          let fvarId := param.fvarId!
          let decl ← fvarId.getDecl
          if !decl.binderInfo.isInstImplicit && !decl.type.isOutParam then
            /- We reset the implicit binder to have it be inferred by `Expr.inferImplicit`.
               However, outparams must be implicit. -/
            lctx := lctx.setBinderInfo fvarId .default
          else if decl.binderInfo.isInstImplicit && instImplicit then
            lctx := lctx.setBinderInfo fvarId .implicit
        -- Construct the projection functions:
        let mut ctorType := ctorType
        for h : i in *...projDecls.size do
          let {ref, projName, paramInfoOverrides} := projDecls[i]
          ctorType ← withoutExporting (when := isPrivateName projName) do
            unless ctorType.isForall do
              throwErrorAt ref "\
                failed to generate projection `{projName}` for `{.ofConstName n}`, \
                not enough constructor fields"
            unless paramInfoOverrides.length ≤ params.size do
              throwErrorAt ref "\
                failed to generate projection `{projName}` for `{.ofConstName n}`, \
                too many structure parameter overrides"
            let resultType := ctorType.bindingDomain!.consumeTypeAnnotations
            let isProp ← isProp resultType
            if isPredicate && !isProp then
              throwErrorAt ref "\
                failed to generate projection `{projName}` for the 'Prop'-valued type `{.ofConstName n}`, \
                field must be a proof, but it has type\
                {indentExpr resultType}"
            let projType := lctx.mkForall projArgs resultType
            let projType := projType.inferImplicit indVal.numParams (considerRange := true)
            let projType := projType.updateForallBinderInfos paramInfoOverrides
            let projVal := lctx.mkLambda projArgs <| Expr.proj n i self
            let cval : ConstantVal := { name := projName, levelParams := indVal.levelParams, type := projType }
            withRef ref do
              if isProp then
                let env ← getEnv
                addDecl <|
                  if env.hasUnsafe projType || env.hasUnsafe projVal then
                    -- Theorems cannot be unsafe, using opaque instead.
                    Declaration.opaqueDecl { cval with value := projVal, isUnsafe := true }
                  else
                    Declaration.thmDecl { cval with value := projVal }
              else
                let decl ← mkDefinitionValInferringUnsafe projName indVal.levelParams projType projVal ReducibilityHints.abbrev
                -- Projections have special compiler support. No need to compile.
                addDecl <| Declaration.defnDecl decl
                -- Recall: we want instance projections to be in "reducible canonical form"
                if !instImplicit then
                  setReducibleAttribute projName
            modifyEnv fun env => addProjectionFnInfo env projName ctorVal.name indVal.numParams i instImplicit
            let proj := mkApp (mkAppN (.const projName lvls) params) self
            return ctorType.bindingBody!.instantiate1 proj

/--
Checks if the expression is of the form `S.mk x.1 ... x.n` with `n` nonzero
and `S.mk` a structure constructor with `S` one of the recorded structure parents.
Returns `x`.
Each projection `x.i` can be either a native projection or from a projection function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant194a1e7dc694103bf64fc3c90f3297a7df04c0d2a99ddc0a5acc26e21e213a2d.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131b774c312459c025a2c4021f69ec6cb0b02045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
