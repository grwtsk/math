# withStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d120ffe5c43a39f81ea02050758a83f25165135906121abf4d071dcd903d2b",
  "kind": "def",
  "lexical_name": "withStruct",
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
  "slug": "withstruct--da204385141dd1c066bc11d1",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 752,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da204385141dd1c066bc11d11c73d53fdc6b05a71a1fd23d89ac3bd20e3fdc88",
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

Occurrence: `declaration:b9d120ffe5c43a39f81ea02050758a83f25165135906121abf4d071dcd903d2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def withStruct (view : StructView) (sourceStructNames : List Name) (binfo : BinderInfo)
    (structFieldName : Name)
    (structType : Expr) (inSubobject? : Option Expr)
    (k : StructFieldInfo → StructElabM α)
    (rawStructFieldName := structFieldName) (projRef := Syntax.missing) :
    StructElabM α := do
  let env ← getEnv
  let structType ← reduceFieldProjs (← whnf structType)
  let structName ← getStructureName structType
  let params := structType.getAppArgs
  trace[Elab.structure] "withStructField '{.ofConstName structName}', using parent field '{structFieldName}'"
  if let some info ← findFieldInfo? structFieldName then
    -- Exact field name match. If it's a parent, then check defeq, otherwise it's a name conflict.
    if info.kind.isParent then
      let infoType ← inferType info.fvar
      if ← isDefEq infoType structType then
        k info
      else
        throwError "Parent type mismatch: {← mkHasTypeButIsExpectedMsg structType infoType}"
    else
      throwErrorAt projRef m!"{fieldFromMsg info} has a name conflict with parent projection for `{.ofConstName structName}`"
        ++ .hint' "The `toParent : P` syntax can be used to adjust the name for the parent projection"
  else if let some info ← findParentFieldInfo? structName then
    -- The field name is different. Error.
    assert! structFieldName != info.name
    throwErrorAt projRef m!"Expected `{structFieldName}` to match {fieldFromMsg info} for parent `{.ofConstName structName}`"
      ++ .hint' "The `toParent : P` syntax can be used to adjust the name for the parent projection"
  else
    -- Main case: there is no field named `structFieldName` and there is no field for the structure `structName` yet.

    let projDeclName := view.declName ++ structFieldName
    withRef projRef do checkNotAlreadyDeclared projDeclName

    let allFields := getStructureFieldsFlattened env structName (includeSubobjectFields := false)
    let withStructFields' (kind : StructFieldKind) (inSubobject? : Option Expr) (k : StructFieldInfo → StructElabM α) : StructElabM α := do
      withStructFields view sourceStructNames structType inSubobject? fun structVal => do
        if let some _ ← findFieldInfo? structFieldName then
          throwErrorAt projRef m!"Field `{structFieldName}` has already been declared"
            ++ .hint' "The `toParent : P` syntax can be used to adjust the name for the parent projection"
        -- Add default values.
        -- We've added some default values so far, but we want all overridden default values,
        -- which for inherited fields might not have been seen yet.
        -- Note: duplication is ok for now. We use a stable sort later.
        for fieldName in allFields do
          if let some d ← getFieldDefault? structName params fieldName then
            addFieldInheritedDefault fieldName structName d
        withLetDecl rawStructFieldName structType structVal fun structFVar => do
          let info : StructFieldInfo := {
            ref := (← getRef)
            sourceStructNames := sourceStructNames
            name := structFieldName
            declName := projDeclName
            fvar := structFVar
            binfo := binfo
            kind
          }
          addFieldInfo info
          k info

    if inSubobject?.isSome then
      -- If we are currently in a subobject, then we can't use a subobject to represent this parent.
      withStructFields' (.otherParent structName) inSubobject? k
    else
      /-
      If there are no fields, we can avoid representing this structure in the constructor.
      This is mainly to support test files that define structures with no fields.
      TODO(kmill): remove check that there are any fields so far.
      This is to get around some oddities when parent projections are all no-ops (tests fail when it is removed).
      TODO(kmill): allow overlapping proof fields between subobjects! This does not harm defeq, and it should be more efficient.
      -/
      let elideParent := allFields.isEmpty && (← get).fields.any (·.kind.isInCtor)
      if elideParent || (← allFields.anyM hasFieldName) then
        -- Or, if there is an overlapping field, we need to copy/reuse fields rather than embed the parent as a subobject.
        withStructFields' (.otherParent structName) none k
      else
        -- Use a subobject for this parent.
        -- We create a metavariable to represent the subobject, so that `withStructField` can create projections
        let inSubobject ← mkFreshExprMVar structType
        withStructFields' (.subobject structName) inSubobject fun info => do
          inSubobject.mvarId!.assign info.fvar
          k info

end

/--
- `view` is the view of the structure being elaborated
- `projRef` is the ref to use for errors about the projection, set to the current ref when recursing
- `rawStructFieldName` is the name to use for the local declaration for this parent
- `structFieldName` is the field name to use for this parent
- `structType` is the parent's type
- `k` is a continuation that is run with a local context containing the fields and the ancestor fields,
  and it's provided the field info for the parent
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
