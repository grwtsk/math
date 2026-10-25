# processField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d02b3134524495dba3646a043d8a90e738774dd4c12712352d26e9ccfc5394a",
  "kind": "def",
  "lexical_name": "processField",
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
  "slug": "processfield--7c9dcd61edf99676b98722c1",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1111,
    "line": 1043,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c9dcd61edf99676b98722c1640b90cc3ad7e8f41e7d52ea5a6b336a3b36c7f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d02b3134524495dba3646a043d8a90e738774dd4c12712352d26e9ccfc5394a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1043–1111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processField (loop : StructInstM α) (field : ExpandedField) (fieldType : Expr) : StructInstM α := withRef field.ref do
  let fieldType := fieldType.consumeTypeAnnotations
  trace[Elab.structInst] "processing provided field `{field.name}` : {fieldType}"
  match field.val with
  | .term val => withRef val do
    let e ← elabStructField field.name val fieldType
    addStructField field e
    loop
  | .nested fields sources _ =>
    -- Nested field. Create synthetic structure instance notation with projected sources, then elaborate it like a `.term` field.
    let sourceStxs : Array Term := sources.map (fun source => mkProjStx source.stx field.name)
    let fieldStxs := fields.map (fun field => field.toSyntax)
    let ellipsis := (← read).view.sources.implicit
    let stx ← `({ $sourceStxs,* with $fieldStxs,* $[..%$ellipsis]? })
    let e ← elabStructField field.name stx fieldType
    addStructField field e
    loop
  | .source fvar =>
    let e ← mkProjection fvar field.name
    let e ← ensureHasType fieldType e
    addStructFieldAux field.name e
    loop
  | .proj fvarId val parentStructName parentFieldName =>
    let processProjAux (fvarId : FVarId) : StructInstM α := do
      try
        let e ← mkProjection (.fvar fvarId) field.name
        let eType ← inferType e
        unless ← isDefEq eType fieldType do
          throwError m!"type of field `{field.name}` from structure `{.ofConstName parentStructName}` \
            {← mkHasTypeButIsExpectedMsg eType fieldType}"
        addStructFieldAux field.name e
      catch ex =>
        if (← readThe Term.Context).errToSorry then
          let e ← exceptionToSorry ex fieldType
          addStructFieldAux field.name e
        else
          throw ex
      loop
    if let some fvarId' := (← get).liftedFVarRemap.get? fvarId then
      processProjAux fvarId'
    else if (← getLCtx).contains fvarId then
      processProjAux fvarId
    else
      let (parentTy, projName?) ← getParentStructType parentStructName
      let parentVal ← elabTermEnsuringType val parentTy
      -- Add terminfo so that the `toParent` field has some hover information.
      if let some projName := projName? then
        pushInfoTree <| InfoTree.node (children := {}) <| Info.ofFieldInfo {
          projName, fieldName := parentFieldName, lctx := (← getLCtx), val := parentVal, stx := field.ref
        }
      let parentVal ← instantiateMVars parentVal
      if parentVal.isFVar then
        -- Reuse the fvar rather than add a new decl to the environment.
        let fvarId' := parentVal.fvarId!
        modify fun s => { s with liftedFVarRemap := s.liftedFVarRemap.insert fvarId fvarId' }
        processProjAux fvarId'
      else
        let parentStructName' := parentStructName.eraseMacroScopes
        let declNameStr := if parentStructName'.isStr then s!"__{parentStructName'.getString!}" else "__psrc"
        let declName ← Core.mkFreshUserName (Name.mkSimple declNameStr)
        let decl := LocalDecl.ldecl 0 fvarId declName parentTy parentVal false .implDetail
        modify fun s => { s with liftedFVars := s.liftedFVars.push (.fvar fvarId) }
        withExistingLocalDecls [decl] do processProjAux fvarId

/--
Handle the case when no field is given.

These fields can still be solved for by parent instance synthesis later.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L1043).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
