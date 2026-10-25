# collectStructFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eca3b439504caa13d4151e6d4ecf3aaa1c313c10b1b7ec3d97286af37879506f",
  "kind": "def",
  "lexical_name": "collectStructFields",
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
  "slug": "collectstructfields--6af0e7e6b70bee6ccfe41928",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 594,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6af0e7e6b70bee6ccfe4192898dc25486e770eb19295247d1683f826c85b0979",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eca3b439504caa13d4151e6d4ecf3aaa1c313c10b1b7ec3d97286af37879506f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collectStructFields
    (structName : Name) (levels : List Level) (params : Array Expr)
    (fields : Array (TSyntax ``Parser.Term.structInstField))
    (fieldValues : NameMap Expr)
    (s : ConstructorVal) :
    DelabM (NameMap Expr × Array (TSyntax ``Parser.Term.structInstField)) := do
  let env ← getEnv
  let fieldNames := getStructureFields env s.induct
  let (_, fieldValues, fields) ← withBoundedAppFnArgs s.numFields
    (do return (0, fieldValues, fields))
    (fun (i, fieldValues, fields) => do
      let fieldName := fieldNames[i]!
      let some fieldInfo := Lean.getFieldInfo? env s.induct fieldName | failure
      let fieldValues := fieldValues.insert fieldName (← getExpr)
      /- Is it a subobject that should be flattened? -/
      if let some parentName := fieldInfo.subobject? then
        if ← getPPOption getPPStructureInstancesFlatten then
          if let some s' ← isConstructorApp? (← getExpr) then
            if s'.induct == parentName then
              let (fieldValues, fields) ← collectStructFields structName levels params fields fieldValues s'
              return (i + 1, fieldValues, fields)
      /- Does this field have a default value? and if so, can we omit the field?
      We cannot omit fields for patterns, since default values do not apply for them. -/
      unless ← pure (← read).inPattern <||> getPPOption getPPStructureInstancesDefaults do
        if let some defFn := getEffectiveDefaultFnForField? (← getEnv) structName fieldName then
          -- Use `withNewMCtxDepth` to prevent delaborator from solving metavariables.
          if let some (_, defValue) ← withNewMCtxDepth <| instantiateStructDefaultValueFn? defFn levels params (pure ∘ fieldValues.get?) then
            if ← withReducible <| withNewMCtxDepth <| isDefEq defValue (← getExpr) then
              -- Default value matches, skip the field.
              return (i + 1, fieldValues, fields)
      /- Main case: add the field -/
      let value ←
        if ← getPPOption getPPAnalysisHole then `(_)
        else delab
      let fieldPos ← nextExtraPos
      let fieldId := annotatePos fieldPos (mkIdent fieldName)
      addFieldInfo fieldPos fieldInfo.projFn fieldName fieldId (← getExpr)
      let field ← `(structInstField|$fieldId:ident := $value)
      return (i + 1, fieldValues, fields.push field))
  return (fieldValues, fields)

/--
Delaborate structure constructor applications using structure instance notation or anonymous constructor notation.
-/
@[builtin_delab app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
