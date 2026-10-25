# withStructField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f2c8477b49608b9330ac29adb5f49c61d6ddea4d4725c4b9f14dc773f8eb531",
  "kind": "def",
  "lexical_name": "withStructField",
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
  "slug": "withstructfield--5f48aff9ec9bd4906714f1be",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 640,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f48aff9ec9bd4906714f1be07aebccb6638a5792217d5be7510da89046f2436",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f2c8477b49608b9330ac29adb5f49c61d6ddea4d4725c4b9f14dc773f8eb531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def withStructField (view : StructView) (sourceStructNames : List Name) (inSubobject? : Option Expr)
    (structName : Name) (params : Array Expr) (fieldName : Name) (fieldType : Expr)
    (k : Expr → StructElabM α) : StructElabM α := do
  trace[Elab.structure] "withStructField '{.ofConstName structName}', field '{fieldName}'"
  let fieldType ← instantiateMVars fieldType
  let fieldType := fieldType.consumeTypeAnnotations -- remove autoParam from constructor field
  let env ← getEnv
  let some fieldInfo := getFieldInfo? env structName fieldName
    | throwError "Internal error in withStructField: No such field `{fieldName}` of `{.ofConstName structName}`"
  if let some _ := fieldInfo.subobject? then
    -- It's a subobject field, add it and its fields
    withStruct view (structName :: sourceStructNames) (binfo := fieldInfo.binderInfo)
      fieldName fieldType inSubobject? fun info => k info.fvar
  else if let some existingField ← findFieldInfo? fieldName then
    -- It's a pre-existing field, make sure it is compatible (unless diamonds are not allowed)
    if structureDiamondWarning.get (← getOptions) then
      logWarning m!"Field `{fieldName}` from `{.ofConstName structName}` has already been declared"
    let existingFieldType ← inferType existingField.fvar
    unless (← isDefEq fieldType existingFieldType) do
      throwError "Field type mismatch: Field `{fieldName}` from parent `{.ofConstName structName}` {← mkHasTypeButIsExpectedMsg fieldType existingFieldType}"
    if let some d ← getFieldDefault? structName params fieldName then
      addFieldInheritedDefault fieldName structName d
    k existingField.fvar
  else
    -- It's a not-yet-seen field
    /- For `.fromSubobject`: the following `declName` is only used for creating the `_default`/`_inherited_default` auxiliary declaration name when
       its default value is overridden, otherwise the `declName` is irrelevant, except to ensure a declaration is not already declared. -/
    let mut declName := view.declName ++ fieldName
    if inSubobject?.isNone then
      declName ← applyVisibility (← toModifiers fieldInfo) declName
      -- Create a link to the parent field's docstring
      addInheritedDocString declName fieldInfo.projFn
      addDeclarationRangesFromSyntax declName (← getRef)
    checkNotAlreadyDeclared declName
    withLocalDecl fieldName fieldInfo.binderInfo (← reduceFieldProjs fieldType) fun fieldFVar => do
      let projExpr? ← inSubobject?.mapM fun subobject => mkProjection subobject fieldName
      addFieldInfo {
        ref := (← getRef)
        sourceStructNames := structName :: sourceStructNames
        name := fieldName
        declName
        kind := if inSubobject?.isSome then .fromSubobject else .copiedField
        fvar := fieldFVar
        projExpr?
        binfo := fieldInfo.binderInfo
        projFn? := fieldInfo.projFn
      }
      if let some d ← getFieldDefault? structName params fieldName then
        addFieldInheritedDefault fieldName structName d
      k fieldFVar

/--
Adds all the fields from `structType` along with its parent projection fields.
Does not add a parent field for the structure itself; that is done by `withStruct`.
- if `inSubobject?` is `some e`, then `e` must be an expression representing the `.subobject` parent being constructed (a metavariable),
  and the added fields are marked `.fromSubobject` and are set to have `e` projections
- `sourceStructNames` is a stack of the structures visited, used for error reporting
- the continuation `k` is run with a constructor expression for this structure
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
