# withStructFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87b38aa2433e8e3eedbfb2540a851183004126fa9beb3966f6ebb9af081002ec",
  "kind": "def",
  "lexical_name": "withStructFields",
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
  "slug": "withstructfields--ae5ac1cae9eedaef75e143d1",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 699,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae5ac1cae9eedaef75e143d15caef8baaa57b35dea61cec05e1028e6bcacf924",
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

Occurrence: `declaration:87b38aa2433e8e3eedbfb2540a851183004126fa9beb3966f6ebb9af081002ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def withStructFields (view : StructView) (sourceStructNames : List Name)
    (structType : Expr) (inSubobject? : Option Expr)
    (k : Expr → StructElabM α) : StructElabM α := do
  let structName ← getStructureName structType
  let .const _ us := structType.getAppFn | unreachable!
  let params := structType.getAppArgs

  trace[Elab.structure] "withStructFields '{.ofConstName structName}'"

  let env ← getEnv
  let fields := getStructureFields env structName
  let parentInfos := getStructureParentInfo env structName

  let ctorVal := getStructureCtor env structName
  let ctor := mkAppN (mkConst ctorVal.name us) params
  let (fieldMVars, _, _) ← forallMetaTelescope (← inferType ctor)
  assert! fieldMVars.size == fields.size

  -- Go through all parents to make sure parent projections are consistent.
  let rec goParents (s : Expr) (i : Nat) : StructElabM α := do
    if h : i < parentInfos.size then
      let parentInfo := parentInfos[i]
      if parentInfo.subobject then
        goParents s (i + 1)
      else
        let fieldName := Name.mkSimple parentInfo.projFn.getString!
        let fieldType ← inferType <| mkApp (mkAppN (.const parentInfo.projFn us) params) s
        withStruct view (structName :: sourceStructNames) (binfo := .default)
          fieldName fieldType inSubobject? fun _ => goParents s (i + 1)
    else
      k s

  let rec goFields (i : Nat) : StructElabM α := do
    if h : i < fields.size then
      let fieldName := fields[i]
      let fieldMVar := fieldMVars[i]!
      let fieldType ← inferType fieldMVar
      withStructField view sourceStructNames inSubobject? structName params fieldName fieldType fun fieldFVar => do
        fieldMVar.mvarId!.assign fieldFVar
        goFields (i + 1)
    else
      let s ← instantiateMVars <| mkAppN ctor fieldMVars
      goParents s 0

  goFields 0

/--
Adds a parent structure and all its fields.
- `structFieldName` is the name to use for the parent field.
- `rawStructFieldName` is name to use in local context, for hygiene. By default it is `structFieldName`.

See `withStructFields` for meanings of other arguments.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
